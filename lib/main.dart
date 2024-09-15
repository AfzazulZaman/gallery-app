import 'package:flutter/material.dart';

void main(){
    runApp(const HomePage());
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: Scaffold(
          drawer:const Drawer(
            backgroundColor: Colors.blueGrey,
              child: Text('imagination',style: TextStyle(color:Colors.white ),),
          ),
          backgroundColor:Colors.blueGrey ,
           appBar: AppBar(
            backgroundColor:Colors.blueGrey,
             title:const   Text('Imagination',style: TextStyle(color: Colors.white),
             ),
              actions: const[
                SizedBox(
                    child:   Icon(Icons.person,color: Colors.white,),
                    width: 60,
                ),
                 
              ],
           ),
           body: Center(
             child: SizedBox(
              width: 400,
               child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                
                 children: [
                   Image.network('https://cdn.pixabay.com/photo/2023/12/09/10/10/woman-8439003_1280.png'),
                   ElevatedButton(
                    onPressed: () {
                // Navigate to the second page
                    Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ItemPage(),),
                );
              },
                   child: const SizedBox(
                    width: 100,
                    child:  Icon(Icons.arrow_forward_ios)),),
                  
                 ],
               ),
             ),
           ),
        ),
    );
  }
}



class ItemPage extends StatefulWidget {
  const ItemPage({super.key});

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Item Page"),
      ),
      body: const Center(
        child: Text("Welcome to the Item Page!"),
      ),
    );
  }
}
