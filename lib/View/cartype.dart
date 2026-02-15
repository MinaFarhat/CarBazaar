// ignore_for_file: must_be_immutable

import 'package:carbazaar/View/homescreen.dart';
import 'package:flutter/material.dart';

class Cartype extends StatefulWidget {
  String ? type;
   Cartype(this.type,{Key? key}) : super(key: key);

  @override
  State<Cartype> createState() => _CartypeState();
}

class _CartypeState extends State<Cartype> {
  
  int curentindextype=0;
  @override
  Widget build(BuildContext context) {
    List types=["All In ${widget.type}","BMW X1","BMW X3","BMW X4","BMW X5","BMW X6","BMW X7","BMW X7","BMW X7","BMW X7","BMW X7","BMW X7","BMW X7","BMW X7",];
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height*0.22,
              child: Column(
                children: [
                   Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Row(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const InkWell(
                        child: Text(
                          "NEXT",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 0.75,
                        height: MediaQuery.of(context).size.height * 0.09,
                        decoration: const BoxDecoration(
                            // color: Colors.red,
                            image: DecorationImage(
                          image: AssetImage("assets/logo.png"),
                          fit: BoxFit.cover,
                        )),
                      ),
                      InkWell(
                        onTap: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context){
                            return const Homescreen();
                          }));
                        },
                        child: const Text(
                          "NEXT",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Center(
                    child: Text(
                      "Welcome to CRC",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Center(
                    child: Text(
                      "Please Select The Car Brand",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.9,
              height: 45,
              child: TextFormField(
                cursorHeight: 25,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade200,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: const BorderSide(color: Colors.white),
                    ),
                    prefixIcon: const Icon(
                      Icons.search_rounded,
                      color: Colors.black,
                    ),
                    hintText: "Search here",
                    hintStyle: const TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 1),
                        fontSize: 12,
                        fontWeight: FontWeight.w500)),
              ),
            ),
                ],
              ),
            ),
           
             SingleChildScrollView(
               child: SizedBox(
                //color: Colors.red,
                height: MediaQuery.of(context).size.height *0.72,
                child: ListView.builder(
                  itemCount: types.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: InkWell(
                        overlayColor: WidgetStateProperty.all(Colors.transparent),
                        onTap: (){
                          setState(() {
                            curentindextype=index;
                          });
                        },
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 35,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  types[index],
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600,
                                    fontFamily: "OpenSans",
                                    fontFamilyFallback: ["Bold"],
                                  ),
                                ),
                                curentindextype==index?
                                Icon(
                                  Icons.done_rounded,
                                  color:Colors.orange.shade900,
                                  size: 17,
                                ):Container(),
                              ],
                            ),
                            Divider(
                              color: Colors.grey.shade900,
                              thickness: 1,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
                         ),
             )
          ],
        ),
      ),
    );
  }
}