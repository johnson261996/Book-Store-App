
import 'package:book_store_app/screens/book_details.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<String> book_name = ['Modern Calligraphy','Yves Saint Laurent'];
  List<String>  auth_name =['June and Lucy','Suzy Menkes'];
  List<String> book_img = ['assets/book1.png','assets/book2.png'];
  List<String> catbook_img = ['assets/cat.png','assets/bunny.png'];
  List<String> catbook_name = ['Cat Secrets','Jef Czekaj'];
  List<String> catauth_name = ['Jef Czekaj','Dorothy Kunhardt'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
        icon: ImageIcon(
          AssetImage("assets/Menu.png"),
          color: Color(0xFF3A5A98),
        ),
          onPressed: () {  },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          CircleAvatar(
            backgroundImage: AssetImage('assets/circular_avatar.png'),
          ),
          SizedBox(width: 15,)
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                    ),
                  ),

                  Text(
                    'Show all',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                        fontWeight: FontWeight.w500
                    ),),
                ],
              ),
          Container(
            height: 300,
            child: ListView.separated(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: book_name.length,
              itemBuilder: (context, index) {
                var item = book_name[index];
                return  GestureDetector(
                  onTap: (){
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => BookDetails(bookimg:book_img[index],book_name:book_name[index],auth_name:auth_name[index])));
                  },
                  child: Card(
                    elevation: 2,
                    color:index % 2==0 ? Color(0xffCEF3FC) :  Color(0xffDA6D8F),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Container(
                      width: 200,
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 12,
                                child: Icon(Icons.favorite,color:Colors.grey ,size: 15,),
                              ),
                            ],
                          ),

                          ClipRRect(
                              borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0),topRight:  Radius.circular(15.0)),
                              child: Image.asset(book_img[index], )),
                          SizedBox(height: 10,),
                          Text(
                            item,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.black
                            ),
                          ),
                        //  SizedBox(height: 10,),
                          Text(
                            auth_name[index],
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),),
                        ],
                      ),
                    ),
                  ),
                );
              }, separatorBuilder: (BuildContext context, int index) {
              return SizedBox( width: 10,);
            },
            ),
          ),
              SizedBox(height: 10,),
              Text(
                "For You",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500
                ),
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 300,
                width: double.infinity,
                child:
                    ListView.separated(

                      scrollDirection: Axis.horizontal,
                      itemCount: catbook_name.length,
                      itemBuilder: (context, index) {
                        var item = catbook_name[index];
                        return  Stack(
                          children: [
                            GestureDetector(
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => BookDetails(bookimg:catbook_img[index],book_name:catbook_name[index],auth_name:catauth_name[index])));

                              },
                              child: Card(
                                margin: EdgeInsets.symmetric(vertical: 50),
                                elevation: 2,
                                color:index % 2==0 ? Color(0xffCEF3FC) :  Color(0xffDA6D8F),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                                child: Container(
                                  height: 170,
                                  width: 150,
                                  padding: EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 12,
                                            child: Icon(Icons.favorite,color:Colors.grey ,size: 15,),
                                          ),
                                        ],
                                      ),

                                      Spacer(),
                                      Text(
                                        item,
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color: Colors.black
                                        ),
                                      ),
                                      //  SizedBox(height: 10,),
                                      Text(
                                        catauth_name[index],
                                        style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                        ),),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: MediaQuery.of(context).size.height * 0.150,
                              left: 0,
                              child: Image.asset(
                                catbook_img[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        );
                      }, separatorBuilder: (BuildContext context, int index) {
                      return SizedBox( width: 10,);
                    },
                    ),

              ),
            ],
          ),
        ),
      ),

    );
  }
}
