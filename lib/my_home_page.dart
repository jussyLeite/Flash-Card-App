import 'package:flask_cards/add_new_card.dart';
import 'package:flask_cards/add_new_folder_card.dart';
import 'package:flask_cards/app/views/float_buttonView.dart';
import 'package:flutter/material.dart';
import 'package:flask_cards/app/constants/constant.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  @override
  Widget build(BuildContext context) {
   double screenWidth = MediaQuery.of(context).size.width;
   double screenHeight = MediaQuery.of(context).size.height;

   List<String> myCards = ['Java','C++','Node.js', 'Java','C++','Node.js', 'Java','C++','Node.js'];
    return Scaffold(
      /*appBar: AppBar(
        title: Text(widget.title),
      ), */
      body: 
             Container
             (
            
              width: screenWidth,
              height: screenHeight,
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 205, 222, 236),
              ),
              child:   Column(
                children:  <Widget>   [
                     Padding(
                     padding: const EdgeInsets.all(40.0),
                     child: Column(
                       children: [
                         Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children:  <Widget>  [
                             const Text("FlashCard",
                             textAlign:  TextAlign.center,
                             style: TextStyle(
                             color: Constant.corHeader1,
                             fontSize: Constant.sizeheader1,
                             fontWeight: FontWeight.bold
                             ),
                             ),
                              IconButton(onPressed: (){
                             }, icon: const Icon(Icons.folder, color: Constant.corHeader1,))
                           ],
                         ),
                         const SizedBox(width: 250,
                         height: 25,
                         child: TextField(
                          decoration: InputDecoration(
                            labelText: 'search',
                            //prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder()

                          ),
                         ),
                         
                         ),
                       ],
                     ),
                   ),

                   Expanded(child: 
                    Container(
                      //margin: const EdgeInsets.only(bottom: 30),
                    /*width: 400,
                    height: 40, */
                    decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(42))
                    ),
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 150,
                          childAspectRatio: 3/2,
                          crossAxisSpacing: 20,
                          mainAxisExtent: 70
                      ), 
                      itemCount: myCards.length,
                    itemBuilder: (_, index){
                      return Container(
                              
                            child: Card(child: Text(myCards[index], 
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                      )));
                    }) 
                   ),
                   ), 
                ],
              ),    
            ),
            
          floatingActionButton: const FloatButtonView(),
    );
  }

 Widget _pesquisa()
 {
  return Container();
 }
}
