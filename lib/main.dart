import 'package:data_bases_project/blocs/appBar/abb_bar_bloc.dart';
import 'package:data_bases_project/blocs/bloc/cities_selections_bloc.dart';
import 'package:data_bases_project/blocs/cityDesc/city_desc_bloc.dart';
import 'package:data_bases_project/blocs/desc/desc_bloc_bloc.dart';
import 'package:data_bases_project/login/userWidget.dart';
import 'package:data_bases_project/login/services/authServ.dart';
import 'package:data_bases_project/pages/cityDescriprion.dart';
import 'package:data_bases_project/pages/descriptionWidget.dart';
import 'package:data_bases_project/pages/favoriteCities.dart';
import 'package:data_bases_project/pages/signIn.dart';
import 'package:data_bases_project/pages/myHomePage.dart';
import 'package:data_bases_project/pages/mapWidget.dart';
import 'package:data_bases_project/repositories/auth/auth_repository.dart';
import 'package:data_bases_project/theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import 'blocs/auth/bloc/auth_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    ChangeNotifierProvider<ThemeProvider>(
      child: const MyApp(),
      create: (_) => ThemeProvider()..initialize(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamProvider<UserWidget?>.value(
      value: AuthSevrice().currentUser,
      initialData: null,
      child: ChangeNotifierProvider<Data>(
        create: (context) => Data(),
        child: RepositoryProvider(
          create: (context) => AuthRepository(),
          child: MultiBlocProvider(
            providers: [
              BlocProvider<AuthBloc>(
                create: (BuildContext context) => AuthBloc(
                  authRepository:
                      RepositoryProvider.of<AuthRepository>(context),
                ),
              ),
              BlocProvider<DescBlocBloc>(
                create: (BuildContext context) => DescBlocBloc(),
              ),
              BlocProvider(
                create: (BuildContext context) => CityDescBloc(),
              ),
              BlocProvider(
                create: (BuildContext context) => AbbBarBloc(),
              ),
              BlocProvider(
                create: (BuildContext context) => CitiesSelectionsBloc(),
              )
            ],
            child: Consumer<ThemeProvider>(
              builder: (context, provider, child) {
                return MaterialApp(
                  initialRoute: '/',
                  routes: {
                    '/MyHomePage': (context) => const MyHomePage(),
                    '/SignIn': (context) => const SignIn(),
                    '/MapWidget': (context) => MapWidget(),
                    '/DescriptionWidget': (context) => DescriptionWidget(),
                    '/CityDescription': (context) => CityDescriprionWidget(),
                  },
                  theme: ThemeData.light(),
                  darkTheme: ThemeData.dark(),
                  themeMode: provider.themeMode,
                  debugShowCheckedModeBanner: false,
                  home: StreamBuilder<User?>(
                      stream: FirebaseAuth.instance.authStateChanges(),
                      builder: (context, snapshot) {
                        // If the snapshot has user data, then they're already signed in. So Navigating to the Dashboard.
                        if (snapshot.hasData) {
                          return const MyHomePage();
                        }
                        // Otherwise, they're not signed in. Show the sign in page.
                        return const SignIn();
                      }),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
