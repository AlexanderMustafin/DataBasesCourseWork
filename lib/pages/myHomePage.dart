import 'package:another_flushbar/flushbar.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_bases_project/blocs/auth/bloc/auth_bloc.dart';
import 'package:data_bases_project/login/services/authServ.dart';
import 'package:data_bases_project/pages/infoPage.dart';
import 'package:data_bases_project/pages/mapWidget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../blocs/appBar/abb_bar_bloc.dart';
import '../blocs/myHomePageBloc/cities_selections_bloc.dart';
import '../theme.dart';
import 'favoriteCities.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  bool enteredParameters = false;
  late final List<Widget> _widgetOptions = <Widget>[
    const FirstScreenWidget(),
    MapWidget(),
    const FavoriteCitiesWidget(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(140), child: CustomBarWidget()),
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Info',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Map',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepOrange[600],
        onTap: _onItemTapped,
      ),
    );
  }
}

class CustomBarWidget extends StatelessWidget {
  final User? user = fAuth.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AuthBloc, AuthState>(
        builder: (context, state) {
          return AnimatedSwitcher(
            duration: const Duration(milliseconds: 500),
            child: Container(
              key: Key(Theme.of(context).brightness.toString()),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        Theme.of(context).brightness == Brightness.light
                            ? 'images/appBarHeader.png'
                            : 'images/appBarHeaderDark.png',
                      ),
                      fit: BoxFit.cover)),
              width: double.infinity,
              height: 160.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Hi ${user!.displayName}! \nWhere do you want to go?',
                          style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            IconButton(
                                onPressed: () {
                                  _logOut(context);
                                  Navigator.of(context).pushNamed('/SignIn');
                                },
                                icon: const Icon(
                                  Icons.logout,
                                  color: Colors.white,
                                )),
                            Consumer<ThemeProvider>(
                              builder: (context, provider, child) {
                                return BlocBuilder<AppBarBloc, AppBarState>(
                                  builder: (context, state) {
                                    return IconButton(
                                      onPressed: () {
                                        context.read<AppBarBloc>().add(
                                            AppBarChangeThemeEvent(
                                                context, provider));
                                      },
                                      icon: const Icon(
                                        Icons.brightness_6,
                                        color: Colors.white,
                                      ),
                                    );
                                  },
                                );
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      DropdownButtonExample(),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

void _logOut(context) {
  BlocProvider.of<AuthBloc>(context).add(
    const AuthSignOutEvent(),
  );
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
  var selectedCurrency;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 190,
        height: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.white)),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: StreamBuilder(
          stream: FirebaseFirestore.instance.collection('Country').snapshots(),
          builder: ((context, snapshot) {
            if (!snapshot.hasData) {
              return Text('Loading');
            } else {
              List<DropdownMenuItem> currencyItems = [];
              for (int i = 0; i < snapshot.data!.docs.length; i++) {
                DocumentSnapshot snap = snapshot.data!.docs[i];
                currencyItems.add(
                  DropdownMenuItem(
                    value: snap.id,
                    child: Text(
                      snap.id,
                      //style:
                    ),
                  ),
                );
              }
              return BlocBuilder<AppBarBloc, AppBarState>(
                builder: (context, state) {
                  return DropdownButton(
                    hint: const Text(
                      'Select Destination',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    value: selectedCurrency,
                    isExpanded: true,
                    icon: const Icon(
                      Icons.arrow_downward,
                      color: Colors.white,
                    ),
                    elevation: 16,
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).brightness == Brightness.light
                          ? Colors.black
                          : Colors.white,
                    ),
                    underline: Container(
                      height: 0,
                    ),
                    onChanged: (currencyValue) {
                      context.read<Data>().changeData(currencyValue);
                      BlocProvider.of<CitiesSelectionsBloc>(context).add(
                        CitiesSelectionsEvent.init(currencyValue),
                      );
                      showSuccessFlushBar(context, currencyValue);
                      setState(() {
                        selectedCurrency = currencyValue;
                      });
                    },
                    items: currencyItems,
                  );
                },
              );
            }
          }),
        ));
  }
}

void showSuccessFlushBar(BuildContext context, String title) {
  Flushbar(
    duration: Duration(seconds: 3),
    icon: const Icon(
      Icons.check,
      color: Colors.white,
    ),
    backgroundColor: Colors.greenAccent,
    message: title,
    flushbarStyle: FlushbarStyle.FLOATING,
    margin: EdgeInsets.all(5),
    borderRadius: BorderRadius.circular(8),
  ).show(context);
}
