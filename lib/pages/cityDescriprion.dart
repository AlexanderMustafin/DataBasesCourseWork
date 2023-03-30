import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_bases_project/blocs/cityDesc/city_desc_bloc.dart';
import 'package:data_bases_project/database/database.dart';
import 'package:data_bases_project/login/services/authServ.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_plus/share_plus.dart';

class CityDescriprionWidget extends StatefulWidget {
  @override
  State<CityDescriprionWidget> createState() => _CityDescriprionWidgetState();
}

class _CityDescriprionWidgetState extends State<CityDescriprionWidget> {
  List<double> item = [];
  final User? user = fAuth.currentUser;
  bool isFavorite = false;
  var args;

  _yourFunction(args) async {
    args = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{
          'cityName': '',
          'description': '',
          'imageURL': '',
          'parentCounry': '',
          'isFavorite': false,
        }) as Map<String, dynamic>;
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      setState(() {
        args = ModalRoute.of(context)?.settings.arguments;
      });
      _yourFunction(args);
      isFavorite = args['isFavorite'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //listener
        body: SingleChildScrollView(
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 500),
        child: Container(
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
          child: Column(
            children: [
              Container(
                  height: 300,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                          image: NetworkImage(args['imageURL']),
                          fit: BoxFit.cover)),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.arrow_back,
                                size: 35,
                              ),
                              color: Colors.white,
                            ),
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Share.share('someText');
                                  },
                                  icon: const Icon(Icons.share),
                                  color: Colors.white,
                                ),
                                BlocBuilder<CityDescBloc, CityDescState>(
                                  //equitable
                                  builder: (context, state) {
                                    return IconButton(
                                      onPressed: () {
                                        context.read<CityDescBloc>().add(
                                              FavoriteEvent(
                                                isFavorite,
                                                args['cityName'],
                                              ),
                                            );
                                      },
                                      icon: const Icon(Icons.favorite),
                                      color: isFavorite
                                          ? Colors
                                              .red // some problem with display correct state of favorite icon color
                                          : Colors.white,
                                    );
                                  },
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              args['cityName'],
                              style: const TextStyle(
                                fontSize: 30,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.location_on,
                                      color: Colors.white,
                                    ),
                                    Text(args['parentCounry'],
                                        overflow: TextOverflow.ellipsis,
                                        style: const TextStyle(
                                          fontSize: 20,
                                          color: Colors.white,
                                        )),
                                  ],
                                ),
                                const Icon(
                                  Icons.location_city,
                                  size: 35,
                                  color: Colors.white,
                                )
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  )),
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Included',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const Text(
                      'For more details press on the icons.',
                      style: TextStyle(fontSize: 18),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        IncludedIconWidget(
                          icon: Icons.flight,
                          name: 'Flight',
                        ),
                        IncludedIconWidget(
                          icon: Icons.hotel,
                          name: 'Hotels',
                        ),
                        IncludedIconWidget(
                          icon: Icons.restaurant,
                          name: 'Restaurants',
                        ),
                        IncludedIconWidget(
                          icon: Icons.attractions,
                          name: 'Attractions',
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Description',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: const Color(0xffe8eef7),
                      ),
                      width: double.infinity,
                      child: Text(
                        args['description'],
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff4a627f),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Rating & Reviews',
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                        IconButton(
                          onPressed: () {
                            setState(() {
                              addComment();
                            });
                          },
                          icon: const Icon(Icons.add_comment),
                        )
                      ],
                    ),
                    StreamBuilder<List<Comment>>(
                        stream: readComment(args['cityName']),
                        builder: (context, snapshot) {
                          if (snapshot.hasError) {
                            return const Text('Something went wrong!');
                          } else if (snapshot.hasData) {
                            final comment = snapshot.data!;
                            if (comment.isEmpty) {
                              return Center(
                                child: Column(
                                  children: const [
                                    Text(
                                      'There are no comments yet.',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      'Be the first to leave it',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              );
                            }
                            return SizedBox(
                              height: 200,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: comment
                                    .map(builtCommentCardWidget)
                                    .toList(),
                              ),
                            );
                          } else {
                            return const Center(
                                child: CircularProgressIndicator());
                          }
                        }),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Hotels',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    StreamBuilder<List<Hotel>>(
                        stream: readHotel(args['cityName']),
                        builder: (context, snapshot) {
                          if (snapshot.hasError) {
                            return const Text('Something went wrong!');
                          } else if (snapshot.hasData) {
                            final hotels = snapshot.data!;
                            return SizedBox(
                              height: 140,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children:
                                    hotels.map(builtHotleCardWidget).toList(),
                              ),
                            );
                          } else {
                            return const Center(
                                child: CircularProgressIndicator());
                          }
                        }),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Restaurants',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    StreamBuilder<List<Cafe>>(
                        stream: readCafe(args['cityName']),
                        builder: (context, snapshot) {
                          if (snapshot.hasError) {
                            return const Text('Something went wrong!');
                          } else if (snapshot.hasData) {
                            final cafes = snapshot.data!;
                            return SizedBox(
                              height: 140,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children:
                                    cafes.map(builtCafeCardWidget).toList(),
                              ),
                            );
                          } else {
                            return const Center(
                                child: CircularProgressIndicator());
                          }
                        }),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Attraction',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w800,
                        color: Color(0xff151a22),
                      ),
                    ),
                    StreamBuilder<List<Attraction>>(
                        stream: readAttraction(args['cityName']),
                        builder: (context, snapshot) {
                          if (snapshot.hasError) {
                            return const Text('Something went wrong!');
                          } else if (snapshot.hasData) {
                            final attraction = snapshot.data!;
                            return SizedBox(
                              height: 140,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: attraction
                                    .map(builtAttractionCardWidget)
                                    .toList(),
                              ),
                            );
                          } else {
                            return const Center(
                                child: CircularProgressIndicator());
                          }
                        }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }

  Widget builtCommentCardWidget(Comment comment) => CommentCardWidget(
        comment.comment,
        comment.rating,
        comment.userName,
        comment.Name,
      );

  Widget builtCafeCardWidget(Cafe cafe) => RestaurantsWidget(
        description: cafe.descriotion,
        name: cafe.name,
        picture: cafe.picture,
        rating: cafe.rating,
        townName: args['cityName'],
        pictures: cafe.pictures,
        latitude: cafe.latitude,
        longitude: cafe.longitude,
      );

  Widget builtHotleCardWidget(Hotel hotel) => HotelCardWidget(
        description: hotel.descriotion,
        name: hotel.name,
        picture: hotel.picture,
        rating: hotel.rating,
        townName: args['cityName'],
        pictures: hotel.pictures,
        latitude: hotel.latitude,
        longitude: hotel.longitude,
      );

  Widget builtAttractionCardWidget(Attraction attraction) => AttractionWidget(
        description: attraction.descriotion,
        name: attraction.name,
        picture: attraction.picture,
        rating: attraction.rating,
        townName: args['cityName'],
        pictures: attraction.pictures,
        longitude: attraction.longitude,
        latitude: attraction.latitude,
      );

  Future<void> addComment() async {
    List<String> _rating = ['1', '2', '3', '4', '5'];
    dynamic _selectedRating = 'Choos the rating';
    final User? user = fAuth.currentUser;
    TextEditingController _commentController = TextEditingController();

    return showGeneralDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      pageBuilder: (ctx, a1, a2) {
        return Container();
      },
      transitionBuilder: (ctx, a1, a2, child) {
        var curve = Curves.easeInOut.transform(a1.value);
        return Transform.scale(
          scale: curve,
          child: StatefulBuilder(
            builder: (context, setState) => AlertDialog(
              title: const Text('Comment'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: <Widget>[
                    const Text('Enter your comment'),
                    TextField(
                      controller: _commentController,
                      obscureText: false,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                      decoration: const InputDecoration(
                          hintText: 'Enter a comment',
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 2)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(width: 1)),
                          hintStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    DropdownButton<String>(
                        items: _rating.map((String val) {
                          return DropdownMenuItem<String>(
                            value: val,
                            child: Text(val),
                          );
                        }).toList(),
                        hint: Text(_selectedRating),
                        onChanged: (newVal) {
                          _selectedRating = newVal;
                          setState(() {});
                        }),
                    if (_selectedRating == '1') ...[
                      const Icon(Icons.star, color: Colors.yellow)
                    ] else if (_selectedRating == '2') ...[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow)
                        ],
                      )
                    ] else if (_selectedRating == '3') ...[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow)
                        ],
                      )
                    ] else if (_selectedRating == '4') ...[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow),
                        ],
                      )
                    ] else if (_selectedRating == '5') ...[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow)
                        ],
                      )
                    ]
                  ],
                ),
              ),
              actions: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        child: const Text('Cansle'),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),
                    BlocBuilder<CityDescBloc, CityDescState>(
                      builder: (context, state) {
                        return TextButton(
                            child: const Text('Approve'),
                            onPressed: () {
                              Navigator.of(context).pop();
                              context.read<CityDescBloc>().add(AddCommentEvent(
                                  _commentController.text,
                                  _selectedRating,
                                  args['cityName'],
                                  user!.displayName));
                            });
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
      transitionDuration: const Duration(milliseconds: 450),
    );
  }

  Container CommentCardWidget(
      String? commentaty, String? rating, String? userName, String? townName) {
    return Container(
        height: 200,
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xffe8eef7),
        ),
        child: SizedBox(
          width: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    userName!,
                    style:
                        const TextStyle(fontSize: 20, color: Color(0xff8792a6)),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.star, color: Color(0xffffb006)),
                      Text(
                        rating.toString(),
                        style: const TextStyle(
                            fontSize: 15, color: Color(0xff8792a6)),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                commentaty!,
                overflow: TextOverflow.ellipsis,
                maxLines: 7,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff4a627f),
                ),
              ),
            ],
          ),
        ));
  }
}

class HotelCardWidget extends StatelessWidget {
  final description;
  final name;
  final picture;
  final rating;
  final townName;
  final pictures;
  final latitude;
  final longitude;
  const HotelCardWidget({
    super.key,
    required this.description,
    required this.name,
    required this.picture,
    required this.rating,
    required this.townName,
    required this.pictures,
    required this.latitude,
    required this.longitude,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        height: 140,
        width: 140,
        decoration: BoxDecoration(
          image:
              DecorationImage(image: NetworkImage(picture), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 60,
                  child: Text(name,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
                Row(
                  children: [
                    const Icon(Icons.star, color: Color(0xffffb006)),
                    Text(rating,
                        style: const TextStyle(
                          color: Color(0xffffb006),
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/DescriptionWidget',
                      arguments: {
                        'townName': townName,
                        'imageURL': picture,
                        'description': description,
                        'HotelName': name,
                        'pictures': pictures,
                        'rating': rating,
                        'latitude': latitude,
                        'longitude': longitude,
                      },
                    );
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.black12)),
                  child: const Text('More'),
                )
              ],
            )
          ],
        ));
  }
}

class IncludedIconWidget extends StatelessWidget {
  final icon;
  final name;
  const IncludedIconWidget({
    super.key,
    required this.icon,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24),
        CircleAvatar(
          radius: 36,
          backgroundColor: const Color(0xff356dfa),
          child: CircleAvatar(
            radius: 33,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 30,
              backgroundColor: const Color(0xff356dfa),
              child: IconButton(
                icon: Icon(
                  icon,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
        Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
      ],
    );
  }
}

class RestaurantsWidget extends StatelessWidget {
  final description;
  final name;
  final picture;
  final rating;
  final townName;
  final pictures;
  final latitude;
  final longitude;
  const RestaurantsWidget({
    super.key,
    required this.description,
    required this.name,
    required this.picture,
    required this.rating,
    required this.townName,
    required this.pictures,
    required this.latitude,
    required this.longitude,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        height: 140,
        width: 140,
        decoration: BoxDecoration(
          image:
              DecorationImage(image: NetworkImage(picture), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 60,
                  child: Text(name,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
                Row(
                  children: [
                    const Icon(Icons.star, color: Color(0xffffb006)),
                    Text(rating, style: TextStyle(color: Color(0xffffb006))),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/DescriptionWidget',
                      arguments: {
                        'townName': townName,
                        'imageURL': picture,
                        'description': description,
                        'HotelName': name,
                        'pictures': pictures,
                        'rating': rating,
                        'latitude': latitude,
                        'longitude': longitude,
                      },
                    );
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.black12)),
                  child: const Text('More'),
                )
              ],
            )
          ],
        ));
  }
}

// достопримечательности
class AttractionWidget extends StatelessWidget {
  final description;
  final name;
  final picture;
  final rating;
  final townName;
  final pictures;
  final latitude;
  final longitude;
  const AttractionWidget({
    super.key,
    required this.description,
    required this.name,
    required this.picture,
    required this.rating,
    required this.townName,
    required this.pictures,
    required this.latitude,
    required this.longitude,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(right: 10),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        height: 140,
        width: 140,
        decoration: BoxDecoration(
          image:
              DecorationImage(image: NetworkImage(picture), fit: BoxFit.cover),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 90,
                  child: Text(name,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white)),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      '/DescriptionWidget',
                      arguments: {
                        'townName': townName,
                        'imageURL': picture,
                        'description': description,
                        'HotelName': name,
                        'pictures': pictures,
                        'rating': rating,
                        'latitude': latitude,
                        'longitude': longitude,
                      },
                    );
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all(Colors.black12)),
                  child: const Text('More'),
                )
              ],
            )
          ],
        ));
  }
}
