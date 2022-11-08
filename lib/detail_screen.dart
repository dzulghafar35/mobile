import 'package:flutter/material.dart';
import 'homestay.dart';
import 'booking_screen.dart';

class DetailScreen extends StatelessWidget {
  //const DetailScreen({Key? key}) : super(key: key);

  final Homestay homestay;

  const DetailScreen({Key? key, required this.homestay}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        notchMargin: 100,
        elevation: 20,
        color: Color.fromARGB(255, 236, 227, 227),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 60,
              child: MaterialButton(
                height: 60,
                minWidth: 60,
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => bookingScreen()));
                },
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12)),
                color: Color.fromARGB(255, 215, 29, 29),
                child: const Text(
                  "Book Now",
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
              ),
            ),
            Text("RM " + homestay.price.toString() + "/night",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.w600)),

            /*Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 12, 245, 82),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                Icons.call,
                size: 40,
                color: Colors.white,
              ),
            ),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 12, 245, 82),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(
                Icons.message,
                size: 40,
                color: Colors.white,
              ),
            )*/
          ],
        ),
      ),
      body: SafeArea(
          child: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(homestay.imageUrl), fit: BoxFit.fill),
                ),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 40,
                            decoration: BoxDecoration(
                                color: Color(0xffF8FCFF),
                                borderRadius: BorderRadius.circular(12)),
                            width: 40,
                            child: IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.arrow_back_ios,
                                size: 30,
                              ),
                            ),
                          ),
                          Container(
                            height: 40,
                            decoration: BoxDecoration(
                                color: Color(0xffF8FCFF),
                                borderRadius: BorderRadius.circular(12)),
                            width: 40,
                            child: const Icon(
                              Icons.favorite_border,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      homestay.label,
                      style: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                          color: Colors.black),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Icon(Icons.thumb_up),
                        Text(
                          homestay.rating.toString(),
                          style: const TextStyle(
                              fontSize: 26,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Icon(Icons.location_on, size: 30),
                        Text(homestay.location, style: TextStyle(fontSize: 24)),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Details:",
                      style: TextStyle(fontSize: 22),
                    ),
                    Text(
                      homestay.Detail,
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 145, 233, 148),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(Icons.wifi, size: 40),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 158, 228, 221),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(Icons.ac_unit_rounded, size: 40),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 245, 214, 167),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(Icons.restaurant, size: 40),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 145, 233, 148),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(Icons.car_rental, size: 40),
                    ),
                    Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 114, 195, 233),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(Icons.pool, size: 40),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
