// ignore_for_file: avoid_print, prefer_interpolation_to_compose_strings, must_be_immutable
import 'package:carbazaar/View/homescreen.dart';
import 'package:carbazaar/api/api.dart';
import 'package:carbazaar/const/global.dart';
import 'package:flutter/material.dart';

class Post extends StatefulWidget {
  String? imagep;
  String? name;
  String? image;
  String? price;
  String? type;
  String? year;
  Post(this.imagep, this.name, this.image, this.price, this.type, this.year,
      {Key? key})
      : super(key: key);

  @override
  State<Post> createState() => _PostState();
}

class _PostState extends State<Post> {
  Homescreen d = const Homescreen();
  @override
  Widget build(BuildContext context) {
    print(Api.url + "/uploads/" + widget.imagep!);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(Api.url + "/uploads/" + widget.image!),
                radius: 20,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                widget.name!,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: "OpenSans",
                  fontFamilyFallback: ["Regular"],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: MediaQuery.of(context).size.height * 0.23,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image:  NetworkImage(Api.url + "/uploads/" + widget.image!),
                  fit: BoxFit.cover,
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "DAILY RENT  ${widget.price} AED",
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              fontFamily: "OpenSans",
              fontFamilyFallback: ["Regular"],
              color: Global.primary,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            widget.type!,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.w600,
              fontFamily: "OpenSans",
              fontFamilyFallback: ["Regular"],
              color: Colors.black,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              const Text(
                "Year : ",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  fontFamily: "OpenSans",
                  fontFamilyFallback: ["Regular"],
                  color: Colors.black,
                ),
              ),
              Text(
                widget.year!,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  fontFamily: "OpenSans",
                  fontFamilyFallback: ["Regular"],
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.44,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Global.primary,
                  ),
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.phone,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Book Via Phone",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              fontFamily: "OpenSans",
                              fontFamilyFallback: ["Regular"],
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              InkWell(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.44,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Global.primary,
                  ),
                  child: const Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Icon(
                        //   Icons.whatsapp,
                        //   color: Colors.white,
                        // ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "Book Via Whatsapp",
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              fontFamily: "OpenSans",
                              fontFamilyFallback: ["Regular"],
                              color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
