

import 'package:flutter/material.dart';

class BookDetails extends StatefulWidget {
  String book_name;
  String bookimg;
  String auth_name;
   BookDetails({Key? key,required this.book_name,required this.bookimg,required this.auth_name}) : super(key: key);

  @override
  State<BookDetails> createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {

  String desc = "The book demonstrates the uses of traditional and cutting edge lettering tools, from classic calligraphy pens to bling-producing metallic foils and glue pens. It introduces a wide array of lettering styles with complete alphabets . ";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xffCEF3FC) ,
      appBar: AppBar(
        backgroundColor: Color(0xffCEF3FC) ,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          CircleAvatar(
          backgroundColor: Colors.white,
          radius: 15,
          child: Icon(Icons.favorite,color:Colors.red ,size: 15,),
        ),
          SizedBox(width: 15.0,)
      ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
               widget.book_name,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                    color: Colors.black
                ),
              ),
              //  SizedBox(height: 10,),
              Text(
                widget.auth_name,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),),
              SizedBox(height: 10,),
              Align(
                  alignment: Alignment.center,
                  child: Image.asset(widget.bookimg,
                    width: 188,height: 275,fit: BoxFit.cover,
                  )),
              SizedBox(height: 10,),
              Card(
                elevation: 0,
                color: Color(0xffd9f3f9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "⭐ 4.5",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              fontWeight: FontWeight.w700
                            ),
                          ),
                          Text(
                            "108",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w700
                            ),
                          ),
                          Text(
                            "Eng",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                                fontWeight: FontWeight.w700
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Rating",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),),

                          Text(
                            "Pages",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),),

                          Text(
                            "Languages",
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Container(
                height: 250,
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),  // radius of 10
                      color: Colors.white ,),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Description",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          desc,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ),),
                        SizedBox(height: 10,),
                        SizedBox(
                          height: 60,
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: ElevatedButton(
                              child: Text(
                                  "Buy now for \$25".toUpperCase(),
                                  style: TextStyle(fontSize: 14)
                              ),
                              style: ButtonStyle(
                                  foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xffDA6D8F)),
                              ),
                              onPressed: () => null
                          ),
                        )
                      ],
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}
