import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_bases_project/database/database.dart';
import 'package:data_bases_project/pages/testDataPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../login/services/authServ.dart';

class HotelDescriprionWidget extends StatefulWidget {
  const HotelDescriprionWidget({
    required this.HotelName,
    required this.descriprion,
    required this.imageURL,
    required this.townName,
    required this.pictures,
    required this.rating,
  });
  final HotelName;
  final descriprion;
  final imageURL;
  final townName;
  final pictures;
  final rating;

  @override
  State<HotelDescriprionWidget> createState() => _HotelDescriprionWidgetState();
}

class _HotelDescriprionWidgetState extends State<HotelDescriprionWidget> {
  @override
  Widget build(BuildContext context) {
    List<String> mylist = widget.pictures.split(' ');
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        image: DecorationImage(
                            image: NetworkImage(widget.imageURL),
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
                                  Text(
                                    widget.rating,
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Color(0xffffb006),
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xffffb006),
                                    size: 30,
                                  )
                                ],
                              )
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.HotelName,
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
                                children: [
                                  const Icon(
                                    Icons.location_city,
                                    size: 35,
                                    color: Colors.white,
                                  ),
                                  Text(widget.townName,
                                      style: const TextStyle(
                                        fontSize: 20,
                                        color: Colors.white,
                                      )),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
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
                          widget.descriprion,
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
                            return Container(
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
                              addComment();
                            },
                            icon: const Icon(Icons.add_comment),
                          )
                        ],
                      ),
                      StreamBuilder<List<Comment>>(
                          stream: readHotelComment(widget.HotelName),
                          builder: (context, snapshot) {
                            if (snapshot.hasError) {
                              return const Text('Something went wrong!');
                            } else if (snapshot.hasData) {
                              final comment = snapshot.data!;
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

  Future<void> addComment() async {
    final User? user = fAuth.currentUser;
    TextEditingController _commentController = TextEditingController();
    TextEditingController _ratingController = TextEditingController();
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
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
                TextField(
                  controller: _ratingController,
                  obscureText: false,
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                  ),
                  decoration: const InputDecoration(
                      hintText: 'Enter a rating',
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
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
                child: const Text('Approve'),
                onPressed: () {
                  Navigator.of(context).pop();
                  FirebaseFirestore.instance.collection('Hotel comment').add({
                    'Comment': _commentController.text,
                    'Rating': _ratingController.text,
                    'Hotel': widget.HotelName,
                    'UserName': user!.displayName,
                  });
                }),
          ],
        );
      },
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

class IncludedIconWidget extends StatelessWidget {
  final icon;
  final name;
  final scrollController;
  double value;
  IncludedIconWidget(
      {required this.icon,
      required this.name,
      required this.scrollController,
      required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 24),
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
                  onPressed: () {
                    scrollController.animateTo(value - 200.00,
                        duration: const Duration(milliseconds: 400),
                        curve: Curves.easeIn);
                  },
                ),
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
