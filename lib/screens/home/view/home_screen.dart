import 'package:all_education_website_app/screens/home/provider/home_provider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  HomeProvider? T,F;
  @override
  Widget build(BuildContext context) {
    T = Provider.of<HomeProvider>(context,listen: true);
    F = Provider.of<HomeProvider>(context,listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.green.shade900,
          title: Text(
            "Educational Websites",
            style: GoogleFonts.eduNswActFoundation(fontSize: 25),
          ),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              height: 210,
              width: double.infinity,
              child: Column(
                children: [
                  Container(
                    height: 170,
                    width: double.infinity,
                    child: ClipRRect(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10),),
                        child: Image.asset("${F!.Logo[index]}",fit: BoxFit.cover,),),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(10),topLeft: Radius.circular(10)),
                    )
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'web');
                      F!.loadurl(index);
                    },
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      alignment: Alignment.center,
                      child: Text("Visit Website",style: GoogleFonts.dancingScript(fontSize: 20,color: Colors.white),),
                      decoration: BoxDecoration(
                        color: Colors.green.shade700,
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10))
                      ),
                    ),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.green.shade300,
                    spreadRadius: 3,
                    blurRadius: 3,
                    blurStyle: BlurStyle.solid,
                  )
                ],
                  borderRadius: BorderRadius.circular(10)
              ),
            );
          },
        ),
      ),
    );
  }
}
