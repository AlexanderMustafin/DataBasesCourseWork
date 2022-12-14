import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_bases_project/blocs/auth/bloc/auth_bloc.dart';
import 'package:data_bases_project/login/services/authServ.dart';
import 'package:data_bases_project/pages/SignIn.dart';
import 'package:data_bases_project/pages/infoPage.dart';
import 'package:data_bases_project/pages/testDataPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

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
    const TestDataWidget(),
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
          return Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/appBarHeader.png'),
                    fit: BoxFit.cover)),
            width: double.infinity,
            height: 160.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Hi ${user!.displayName}! \n Where do you want to Travel?',
                        style: TextStyle(
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
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const SignIn()),
                                );
                              },
                              icon: const Icon(
                                Icons.logout,
                                color: Colors.white,
                              )),
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
          );
        },
      ),
    );
  }
}

void _logOut(context) {
  BlocProvider.of<AuthBloc>(context).add(
    SignOutRequested(),
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
          color: const Color(0xff356dfa),
        ),
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
                    child: Text(
                      '${snap.id}',
                      //style:
                    ),
                    value: snap.id,
                  ),
                );
              }
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
                dropdownColor: Color(0xff356dfa),
                icon: const Icon(
                  Icons.arrow_downward,
                  color: Colors.white,
                ),
                elevation: 16,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
                underline: Container(
                  height: 0,
                ),
                onChanged: (currencyValue) {
                  context.read<Data>().changeData(currencyValue);
                  final snackBar = SnackBar(
                    content: Text(
                      'You choosen country $currencyValue',
                      style: TextStyle(
                        color: Color(0xff11b719),
                      ),
                    ),
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackBar);
                  setState(() {
                    selectedCurrency = currencyValue;
                  });
                },
                items: currencyItems,
              );
            }
          }),
        ));
  }
}
