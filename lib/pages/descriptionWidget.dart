import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_bases_project/blocs/desc/desc_bloc_bloc.dart';
import 'package:data_bases_project/database/database.dart';
import 'package:data_bases_project/pages/mapWidget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';

import '../login/services/authServ.dart';

class DescriptionWidget extends StatefulWidget {
  @override
  State<DescriptionWidget> createState() => _DescriptionWidgetState();
}

class _DescriptionWidgetState extends State<DescriptionWidget> {
  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{
          'HotelName': '',
          'description': '',
          'imageURL': '',
          'townName': '',
          'pictures': '',
          'rating': '',
          'latitude': 0.0,
          'longitude': 0.0,
        }) as Map<String, dynamic>;
    final _transformationController = TransformationController();
    List<String> mylist = arguments['pictures'].split(' ');
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: SingleChildScrollView(
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                            image: NetworkImage(arguments['imageURL']),
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
                              if (arguments['rating'] != '' &&
                                  arguments['rating'] != null) ...[
                                Row(
                                  children: [
                                    Text(
                                      arguments['rating'],
                                      style: const TextStyle(
                                        fontSize: 25,
                                        color: Color(0xffffb006),
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const Icon(
                                      Icons.star,
                                      color: Color(0xffffb006),
                                      size: 30,
                                    )
                                  ],
                                )
                              ],
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                arguments['HotelName'],
                                style: const TextStyle(
                                  fontSize: 30,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.location_on,
                                        color: Colors.white,
                                      ),
                                      Text(context.watch<Data>().getData,
                                          overflow: TextOverflow.ellipsis,
                                          maxLines: 2,
                                          style: const TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                          )),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.location_city,
                                        size: 35,
                                        color: Colors.white,
                                      ),
                                      Text(arguments['townName'],
                                          style: const TextStyle(
                                            fontSize: 20,
                                            color: Colors.white,
                                          )),
                                    ],
                                  ),
                                  IconButton(
                                    color: Colors.white,
                                    icon: const Icon(Icons.map_rounded),
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/MapWidget',
                                          arguments: {
                                            'latitude': arguments['latitude'],
                                            'longitude': arguments['longitude'],
                                          });
                                    },
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Description',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                          color: Color(0xff151a22),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Color(0xffe8eef7),
                        ),
                        width: double.infinity,
                        child: Text(
                          arguments['description'],
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            color: Color(0xff4a627f),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      const Text(
                        'Pictures',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w800,
                          color: Color(0xff151a22),
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        height: 140,
                        child: ListView.builder(
                          itemCount: mylist.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                showGeneralDialog(
                                  context: context,
                                  pageBuilder: (ctx, a1, a2) {
                                    return Container();
                                  },
                                  transitionBuilder: (ctx, a1, a2, child) {
                                    var curve =
                                        Curves.easeInOut.transform(a1.value);
                                    return Transform.scale(
                                        scale: curve,
                                        child: AlertDialog(
                                          contentPadding: EdgeInsets.all(0),
                                          content: Stack(
                                            alignment: Alignment.center,
                                            children: <Widget>[
                                              Image.network(
                                                mylist[index],
                                                height: 500,
                                                fit: BoxFit.cover,
                                              ),
                                            ],
                                          ),
                                        ));
                                  },
                                  transitionDuration:
                                      const Duration(milliseconds: 450),
                                );
                              },
                              child: InteractiveViewer(
                                maxScale: 4,
                                transformationController:
                                    _transformationController,
                                child: Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 10),
                                  height: 140,
                                  width: 140,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(mylist[index]),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Rating & Reviews',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w800,
                              color: Color(0xff151a22),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              addComment(hotelName: arguments['HotelName']);
                            },
                            icon: const Icon(Icons.add_comment),
                          )
                        ],
                      ),
                      StreamBuilder<List<Comment>>(
                          stream: readHotelComment(arguments['HotelName']),
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
                              } else {
                                return SizedBox(
                                  height: 200,
                                  child: ListView(
                                    scrollDirection: Axis.horizontal,
                                    children: comment
                                        .map(builtCommentCardWidget)
                                        .toList(),
                                  ),
                                );
                              }
                            } else {
                              return const Center(
                                  child: CircularProgressIndicator());
                            }
                          }),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
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

  Future<void> addComment({required hotelName}) async {
    final String comment;
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
                        color: Colors.black54,
                      ),
                      decoration: const InputDecoration(
                          hintText: 'Enter a comment',
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 3)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1)),
                          hintStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.black)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    DropdownButton<String>(
                        items: _rating.map((String val) {
                          return DropdownMenuItem<String>(
                            value: val,
                            child: new Text(val),
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
                    BlocBuilder<DescBlocBloc, DescBlocState>(
                      builder: (context, state) {
                        return TextButton(
                            child: const Text('Approve'),
                            onPressed: () {
                              Navigator.of(context).pop();
                              context.read<DescBlocBloc>().add(AddCommentEvent(
                                  _commentController.text,
                                  _selectedRating,
                                  hotelName,
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
}

Widget builtHotleCardWidget(Hotel hotel) => HotelCardWidget(
      description: hotel.descriotion,
      name: hotel.name,
      picture: hotel.picture,
    );

class HotelCardWidget extends StatelessWidget {
  final description;
  final name;
  final picture;
  const HotelCardWidget({
    required this.description,
    required this.name,
    required this.picture,
    Key? key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 10),
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
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
                Container(
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
                  children: const [
                    Icon(Icons.star, color: Color(0xffffb006)),
                    Text('5', style: TextStyle(color: Color(0xffffb006))),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  onPressed: () {},
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
