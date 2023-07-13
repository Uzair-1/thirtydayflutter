// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers, sized_box_for_whitespace, non_constant_identifier_names, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Dau8UI extends StatelessWidget {
  const Dau8UI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        leading: Icon(Icons.arrow_back_ios_new,size: 16,),
        title: Text("uzariyy",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black,
          child: Column(
            children: [
              Container(
                height: 160,
                child: Row(
                  children: [
                    Container(
                        width: 120,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage("https://images.pexels.com/photos/810775/pexels-photo-810775.jpeg?auto=compress&cs=tinysrgb&w=600"),
                              radius: 50,
                            ),
                            Text("uzariyy",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 18),),SizedBox(height: 7,),
                            Text("Flutter Dev",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 12),),
                          ],
                        )
                    ),
                    Expanded(child:  Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Columnfollow("16", "Posts"),
                              Columnfollow("212M", "Followers"),
                              Columnfollow("217", "Following"),
                            ],
                          ),SizedBox(height: 20,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ElevatedButton(
                                  onPressed: (){}, child: Text("Follow",style: TextStyle(fontSize: 16),)),
                              OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    primary: Colors.white,
                                    side: BorderSide(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  onPressed: (){}, child: Text("Message",style: TextStyle(fontSize: 16,color: Colors.white),)
                              ),
                              // Container(
                              //   height: 20,
                              //   decoration: BoxDecoration(
                              //     shape: BoxShape.circle,
                              //   ),
                              //   child: Icon(Icons.add_reaction),
                              // )
                            ],
                          )
                        ],
                      ),
                    ),
                    ),
                  ],
                ),
              ), SizedBox(height: 30,),
              Divider(),
              Container(
                // color: Colors.yellow,
                height: 30,
                 child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            primary: Colors.grey,
                            side: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          onPressed: (){}, child: Text("Business Account",style: TextStyle(fontSize: 16,color: Colors.white),)
                      ),
                      OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            side: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          onPressed: (){}, child: Text("Contact",style: TextStyle(fontSize: 16,color: Colors.white),)
                      ),
                      OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            side: BorderSide(
                              color: Colors.grey,
                            ),
                          ),
                          onPressed: (){}, child: Text("Email",style: TextStyle(fontSize: 16,color: Colors.white),)
                      ),
                      Container(
                        height: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                           color: Colors.white10,
                        ),
                        child: Icon(Icons.arrow_drop_down),
                      )
                    ],
                  )
              ), Divider(),
              Container(
                height: 80,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context,index){
                    return StoriesColumn("Dev");
                  }
                ),
              ),
              Container(
                height: 400,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 5,mainAxisSpacing: 5),
                  children: [
                    Container(
                      height: 200, width: 200,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage("https://images.pexels.com/photos/1366630/pexels-photo-1366630.jpeg?auto=compress&cs=tinysrgb&w=600"))
                      ),
                    ),
                    Container(
                      height: 170, width: 170,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage("https://images.pexels.com/photos/1583582/pexels-photo-1583582.jpeg?auto=compress&cs=tinysrgb&w=600"))
                      ),
                    ),
                    Container(
                      height: 150, width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage("https://images.pexels.com/photos/837745/pexels-photo-837745.jpeg?auto=compress&cs=tinysrgb&w=600"))
                      ),
                    ),
                    Container(
                      height: 150, width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage("https://images.pexels.com/photos/344060/pexels-photo-344060.jpeg?auto=compress&cs=tinysrgb&w=600"))
                      ),
                    ),
                    Container(
                      height: 150, width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage("https://images.pexels.com/photos/3621960/pexels-photo-3621960.jpeg?auto=compress&cs=tinysrgb&w=600"))
                      ),
                    ),
                    Container(
                      height: 150, width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage("https://images.pexels.com/photos/1580025/pexels-photo-1580025.jpeg?auto=compress&cs=tinysrgb&w=600"))
                      ),
                    ),
                    Container(
                      height: 150, width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage("https://images.pexels.com/photos/70850/butterflies-insect-bezkregowiec-macro-70850.jpeg?auto=compress&cs=tinysrgb&w=600"))
                      ),
                    ),
                    Container(
                      height: 150, width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage("https://images.pexels.com/photos/11195873/pexels-photo-11195873.jpeg?auto=compress&cs=tinysrgb&w=600"))
                      ),
                    ),
                    Container(
                      height: 150, width: 150,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage("https://images.pexels.com/photos/11195873/pexels-photo-11195873.jpeg?auto=compress&cs=tinysrgb&w=600"))
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    ));
  }

  Widget Columnfollow(String text1,String text2){
    return  Column(
      children: [
        Text(text1),
        Text(text2),
      ],
    );
  }
  
  
  Widget StoriesColumn(String text) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(5),
          height: 50,width: 50,
          decoration: BoxDecoration(
            image: DecorationImage(
                 fit: BoxFit.cover,
                image: NetworkImage("https://images.pexels.com/photos/1906157/pexels-photo-1906157.jpeg?auto=compress&cs=tinysrgb&w=600")),
            shape: BoxShape.circle,
          ),
        ),
        Text(text),
      ],
    );
  }
   
  
  
  

}
