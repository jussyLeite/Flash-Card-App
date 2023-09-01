import 'package:flutter/material.dart';
import '../../add_new_card.dart';

class FloatButtonView extends StatelessWidget {
  const FloatButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(child:
     
        FloatingActionButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const AddNewCard()));
        },
        child:const Icon(Icons.add),
        ),

    );
  }
}