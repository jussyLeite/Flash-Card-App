import 'package:flutter/material.dart';

class AddNewCard extends StatefulWidget {
  const AddNewCard({super.key});

  @override
  State<AddNewCard> createState() => _AddNewCardState();
}

class _AddNewCardState extends State<AddNewCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
  
          children: <Widget> [
           const Text("Add new card"),
    
            Expanded(
              child: Form(child: Column(
                children: [
                  TextFormField(
                      decoration: const InputDecoration(
                      labelText: "Palavra Chave",
                    )),
            
                     TextFormField(
                      maxLines: 10,
                      decoration: const InputDecoration(
                      labelText: "Conteudo",
                    )),
                    ElevatedButton(onPressed: (){
            
                    }, 
                    child: const Text("Salvar card")
                  )
                ],
              )),
            )  
          ], 
        ),
      ),
    );
  }
}

