import 'package:flutter/material.dart';
class HomePage extends StatefulWidget{
  static final String id='home_page';
  @override
  _HomePageState createState()=>_HomePageState();
}
class _HomePageState extends State<HomePage>{
  final List<String> list1=[
    'assets/images/ic_hotel1.jpg',
    'assets/images/ic_hotel2.jpg',
    'assets/images/ic_hotel3.jpg',
    'assets/images/ic_hotel4.jpg',
    'assets/images/ic_hotel5.jpg',
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:Colors.white,
      body:SingleChildScrollView(
        child:Column(
          children:[
            Container(
              height:280,
              width:double.infinity,
              decoration:BoxDecoration(
                image:DecorationImage(
                  image:AssetImage('assets/images/ic_header.jpg'),
                  fit:BoxFit.cover,
                ),
              ),
              child:Container(
                padding:EdgeInsets.all(20),
                decoration:BoxDecoration(
                  gradient:LinearGradient(
                    begin:Alignment.bottomRight,
                    colors:[
                      Colors.black.withOpacity(.7),
                      Colors.black.withOpacity(.6),
                      Colors.black.withOpacity(.5),
                      Colors.black.withOpacity(.4),
                    ],
                  ),
                ),
                child:Column(
                  mainAxisAlignment:MainAxisAlignment.end,
                  children:[
                    Container(
                      child:Text('What kind of hotel you need?',style:TextStyle(color:Colors.white,fontSize:30,fontWeight:FontWeight.bold,),textAlign:TextAlign.center,),
                    ),SizedBox(height:27),
                    Container(
                      height:45,
                      margin:EdgeInsets.symmetric(horizontal:25),
                      decoration:BoxDecoration(
                        color:Colors.white,
                        borderRadius:BorderRadius.circular(22.5),
                      ),
                      child:TextField(
                        decoration:InputDecoration(
                          contentPadding:EdgeInsets.symmetric(vertical:12),
                          hintText:'Search for hotels',
                          hintStyle:TextStyle(color:Colors.grey,),
                          prefixIcon:Icon(Icons.search,color:Colors.grey,),
                          border:InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height:8),
                  ],
                ),
              ),
            ),
            SizedBox(height:25),
            Container(
              width:double.infinity,
              padding:EdgeInsets.symmetric(horizontal:20),
              child:Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children:[
                  Text('Best hotels',style:TextStyle(color:Colors.grey[700],fontWeight:FontWeight.bold,fontSize:20),),
                  SizedBox(height:15),
                  Container(
                    height:200,
                    child:ListView(
                      scrollDirection:Axis.horizontal,
                      children:makeLt(title:"Hotel"),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height:15),
            Container(
              width:double.infinity,
              padding:EdgeInsets.symmetric(horizontal:20),
              child:Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children:[
                  Text('Luxury hotels',style:TextStyle(color:Colors.grey[700],fontWeight:FontWeight.bold,fontSize:20),),
                  SizedBox(height:15),
                  Container(
                    height:200,
                    child:ListView(
                      scrollDirection:Axis.horizontal,
                      children:makeLt(title:"Hotel"),
                    ),
                  ),
                  SizedBox(height:10),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  List<Widget> makeLt({String title}){
    List<Widget> lt=new List();
    for(int i=0;i<list1.length;i++){
      lt.add(makeList(image:list1[i],title:"${title} ${i+1}"));
    }
    return lt;
  }
  Widget makeList({String image,String title}){
    return AspectRatio(
      aspectRatio:1.4/1,
      child:Container(
        margin:EdgeInsets.only(right:20),
        decoration:BoxDecoration(
          color:Colors.red,
          borderRadius:BorderRadius.circular(23),
          image:DecorationImage(
            image:AssetImage(image),
            fit:BoxFit.cover,
          ),
        ),
        child:Container(
          padding:EdgeInsets.all(20),
          decoration:BoxDecoration(
            borderRadius:BorderRadius.circular(23),
            gradient:LinearGradient(
              begin:Alignment.bottomRight,
              colors:[
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.2),
              ],
            ),
          ),
            child:Align(
              alignment:Alignment.bottomLeft,
              child:Text(title,style:TextStyle(color:Colors.white,fontSize:23),),
            ),
        ),
      ),
    );
}

}