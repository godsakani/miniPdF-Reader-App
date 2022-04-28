import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pdf/models/doccument_model.dart';
import 'package:pdf/screens/reader_screen.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PDF Reader'),
        backgroundColor: Colors.teal,
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
        centerTitle: false,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 18.0,
          horizontal: 16.0,
        ),
        child: SingleChildScrollView(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Recent Documents",
              style: GoogleFonts.roboto(
                fontSize: 25.0,
                fontWeight: FontWeight.normal,),
            ),
            //mapping list of document in to the column
           Column( 
             children: Document.doc_list.map((doc) => ListTile(
               onTap: () {
                 //function to navigate to reader screen
                 Navigator.push(context, MaterialPageRoute(builder: (context)=> ReaderScreen(doc)));
               },
               title: Text(
                 doc.doc_title,
                 style: GoogleFonts.nunito(),  
                 overflow: TextOverflow.ellipsis,
               ),
               subtitle: Text("${doc.page_num}"),
               trailing: Text(doc.doc_date,
               style: GoogleFonts.nunito(color:Colors.grey),),
                leading: Icon(
                  Icons.picture_as_pdf,
                  color: Color.fromARGB(255, 0, 150, 125),
                  size: 20.0,
                ),
             )).toList()
             )
          ],
         ) ,
        )),
    );
  }
}