import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_1/models/category_model.dart';
import 'package:flutter_1/main.dart';
import 'package:flutter_1/pages/counter.dart'; // Import CounterPage

class HomePage extends StatelessWidget
{
  final String? username;
  const HomePage({Key? key, this.username}) : super(key: key);

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      //Appbar Appbar Appbar
      appBar: AppBar(
        title: const Text(
            'Home Page',
            style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading:
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage(title: 'Counter Already Exists!',)),
              );
            },
            child: Container(
              margin: const EdgeInsets.all(10),
              width: 35.5, height: 35.5,
              alignment: Alignment.center,
              child: const Icon(Icons.chevron_left),
              decoration: BoxDecoration(
                color: Color(0xFFE5E5E5),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        actions: [
          GestureDetector(
            child: Container(
              margin: const EdgeInsets.all(10),
              width: 35.5, height: 35.5,
              alignment: Alignment.center,
              child: Icon(Icons.more_horiz),
              decoration: BoxDecoration(
                color: Color(0xFFE5E5E5),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),

      //Body Body Body
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            margin: EdgeInsets.only(top: 40, left: 20, right: 20),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Color(0xff1D1617).withOpacity(0.11),
                  blurRadius: 40,
                  spreadRadius: 0.0
                )
              ],
            ),
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                prefixIcon: Icon(Icons.search),

                hintText: 'Text or Voice Search',
                hintStyle: TextStyle(
                  color: Colors.grey.withOpacity(0.3),
                  fontSize: 15,
                ),

                suffixIcon: Container(
                  width: 85, color: Colors.white  ,
                  child: IntrinsicHeight (
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.mic),
                        VerticalDivider(
                          color: Colors.black,
                          thickness: 0.3,
                          indent: 10,
                          endIndent: 10,
                        ),
                        Icon(Icons.photo_camera),
                        SizedBox(width: 10,)
                      ],
                    ),
                  ),
                ),

                contentPadding: EdgeInsets.all(15),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                )
              ),
            ),
          ),

          SizedBox(height: 40),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text(
                  'Category',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),

              SizedBox(height: 15),

              Container(
                height: 150,
                color: Colors.lightBlueAccent,

              )


            ],
          )
        ],
      ),
    );
  }
}