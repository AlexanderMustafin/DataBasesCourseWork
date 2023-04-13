import 'package:data_bases_project/blocs/bloc/cities_selections_bloc.dart';
import 'package:data_bases_project/database/database.dart';
import 'package:data_bases_project/login/services/authServ.dart';
import 'package:data_bases_project/pages/mapWidget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

class FirstScreenWidget extends StatefulWidget {
  const FirstScreenWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<FirstScreenWidget> createState() => _FirstScreenWidgetState();
}

class _FirstScreenWidgetState extends State<FirstScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CitiesSelectionsBloc, CitiesSelectionsState>(
      //initial readTown
      builder: (context, state) {
        (_) => CitiesSelectionsBloc();
        if (state is AwaitState) {
          const Text('Await Widget');
        } else if (state is CityChangeState) {
          return Container(
            key: Key(Theme.of(context).brightness.toString()),
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage(
                Theme.of(context).brightness == Brightness.light
                    ? 'images/bgOff20.jpg'
                    : 'images/bgOff20Dark.jpg',
              ),
              repeat: ImageRepeat.repeatY,
            )),
            child: ListView(
              children: state.list.map(builtCardWidget).toList(),
            ),
          );
        } else if (state is ErrorState) {
          return const Text('Error');
        }
        return const Text('error');
      },
    );
  }
}

Widget builtCardWidget(Town town) => CardWidget(
      title: town.name,
      description: town.description,
      parentCountry: town.idCountry,
      imageURL: town.pucture,
      isFavorite: town.isFavorite,
    );

class CardWidget extends StatelessWidget {
  final title;
  final description;
  final parentCountry;
  final imageURL;
  final isFavorite;

  const CardWidget({
    Key? key,
    required this.title,
    required this.description,
    required this.imageURL,
    required this.parentCountry,
    required this.isFavorite,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/CityDescription', arguments: {
          'cityName': title,
          'description': description,
          'imageURL': imageURL,
          'parentCounry': parentCountry,
          'isFavorite': isFavorite,
        });
      },
      child: Container(
          margin: const EdgeInsets.only(top: 12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: NetworkImage(
                  imageURL,
                ),
                fit: BoxFit.cover,
              )),
          width: double.infinity,
          height: 200,
          child: Container(
            margin: const EdgeInsets.only(top: 90),
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 24,
                    )),
                Text(description,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ))
              ],
            ),
          )),
    );
  }
}

class AwaitWidget extends StatelessWidget {
  final User? user = fAuth.currentUser;

  AwaitWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: Expanded(
        child: Center(
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/logo.jpg'), fit: BoxFit.cover)),
          ),
        ),
      ),
    );
  }
}
