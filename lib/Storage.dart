
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
List<buttomsInfo> Buttoms = [];  
class Storage extends StatefulWidget {
  const Storage({ Key? key }) : super(key: key);

  @override
  _StorageState createState() => _StorageState();
}

class _StorageState extends State<Storage> {

  
  @override
  Widget build(BuildContext context) {
   
 initList();
return Material(
child : Scaffold(

      appBar: AppBar(
                    backgroundColor:Color.fromARGB(255, 3, 11, 122),
                     centerTitle: true,
                        title:  Column( 
                                  children : [
                                   Text("Storage Firebase" ,  style: TextStyle(color: Colors.white),)
                                  ]

                          )
                   ),
                 
                
          backgroundColor:Color.fromARGB(255, 3, 11, 122) ,
          body: Center(
            child:  Column(
              
              children: [
                Expanded(
                  
                      child: ListView.builder(
                      padding:EdgeInsets.only(top:150),
                        itemCount: 2,
                        itemBuilder: (BuildContext context, int ind) {
                        return Container(
                            margin: EdgeInsets.all(15),
                            child: Buttom(text:  Buttoms[ind].text,
                             nextpage:  Buttoms[ind].nextpage,
                              
                             ),
                
                          );
                        },
                      ),
                    ),
              ],
            ),
            
             ),       
         )
    );
  }
}

class Buttom extends StatelessWidget {
  Buttom({Key? key, required this.text, required this.nextpage })
      : super(key: key);
  final String text;
  final String nextpage;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: 
        [TextButton(
          onPressed:() {Navigator.pushNamed(context, '/${nextpage}');},
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            backgroundColor: Color.fromARGB(255, 240, 159, 11),
          ),
          
          child: Container(
          child: Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 8,
                horizontal: 15,
              ),     
          
              child: Column(
                
                children: [
                  Row(
                    children: [
                    
                      
                      Expanded(
                       // flex: 1,
                        child: Center(
                          child: AutoSizeText(
                            text,
                            maxLines: 1,
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                              height:   0.025* MediaQuery.of(context).size.height, //screen height * 0.025,
                            ),
                    ],
                  ),
                ],
               
              ),
              
            ),
            
        
        )
        
        ),
        Expanded(
            child: Container(
              
            ),
          )
      ],
    );
    
      
  }
}
class buttomsInfo{
    
 late String text;
 late String nextpage;



}
void initList()
{
buttomsInfo a = new buttomsInfo();
a.text=
     a.text="Show file";
   a.nextpage="Showimage";
      Buttoms.add(a);
      a = new buttomsInfo();
a.text="Upload file";
    a.nextpage="upload";
     Buttoms.add(a);

  

}