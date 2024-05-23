import 'package:flutter/material.dart';

void main()
{
  runApp(const CarStore());
}
class CarStore extends StatefulWidget {
  const CarStore({super.key});

  @override
  State<CarStore> createState() => _CarStoreState();
}

class _CarStoreState extends State<CarStore> {
  int car=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
        ),
        body: ListView(
          children:[
            Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 3),
                      child: ElevatedButton(
                        onPressed: (){},
                         child:const Icon(Icons.arrow_circle_left_outlined,
                         color: Colors.black,
                         shadows: [Shadow(color: Colors.white)],
                         ),
                         )
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 80),
                        child: const Text('Details',
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold
                        ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left:105),
                        child: IconButton(onPressed:(){}
                         , icon:Icon(Icons.favorite,
                         size: 40,
                         color: Colors.red[700],
                         ),
                         ),
                      ),                
                  ],
                ),
              ],
              ),
                Image.asset('assets/artworkimage-medium-16858328-15891010.jpg'),
                Row(children: [
                  Container(
                    padding: const EdgeInsets.only(left: 9),
                    child: const Text('BMW',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                      fontSize: 27,
                    ),
                    ),
                  ),
          
                  Container(
                    padding: const EdgeInsets.only(left: 228),
                    child: 
                    const Text('\$27,199',
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                ],
          
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10,right: 80,left: 9),
                  child: const Text('BMW M3 Coupe - Manual - E36',
                  style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                ),
          
                Container(
                  padding: const EdgeInsets.only(top: 10,left: 9),
                  child: const Text('When it was first introduced in 1992, the E36 M3 was initially only available as a coupe.he E36 M3 Manual coupe was initially offered with a 5 speed manual gearbox, but from the 1996 model year, a 6 speed manual became standard for European models (North American examples retained the 5 speed).The 3.0L inline six used between 1992 and 1995 produced 286hp, while the later 3.2L inline six produced 316hp.'),
                ),
          
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(top: 10,left: 9),
                      child:Row(children: [
                        CircleAvatar(
                        backgroundColor: Colors.blue[900],
                        child: Icon(Icons.favorite,
                        color: Colors.blue[900],
                        ),
                      ),

                      const SizedBox(width: 10,),

                      const CircleAvatar(
                        backgroundColor: Colors.blueGrey,
                        child: Icon(Icons.favorite,
                        color: Colors.blueGrey,
                        ),
                      ),

                      const SizedBox(width: 10,),

                      const CircleAvatar(
                        backgroundColor: Colors.black,
                        child: Icon(Icons.favorite,
                        color: Colors.black,
                        ),
                      ),

                       const SizedBox(width: 10,),

                      const CircleAvatar(
                        backgroundColor: Colors.yellowAccent,
                        child: Icon(Icons.favorite,
                        color: Colors.yellowAccent,
                        ),
                      ),
                      ],),
                    ),

                    const SizedBox(width: 60,),

                    Container(
                      padding: const EdgeInsets.only(left: 10,right: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(
                          color: Colors.black,
                          width: 2
                        ),
                        borderRadius: BorderRadius.circular(590.0)
                      ),
                      child: Row(
                        children: [
                          IconButton(
                        onPressed: (){
                          setState(() {
                            car--;
                          });
                        },
                         icon: const Icon(Icons.remove),
                         ),
                         const SizedBox(width: 6,),
                         Text(
                               '$car',
                                style: const TextStyle(fontSize: 20.0),
                             ),
                             const SizedBox(width: 6,),
                         IconButton(
                         icon: const Icon(Icons.add),
                        onPressed: (){
                          setState(() {
                            car++;
                          });
                        }
                       ),
                        ],
                      )
                    ),
                  ],
                ),

                Row(
                  children: [
                   Container(
                    padding: const EdgeInsets.only(top: 20,left: 9,bottom: 65),
                    child:  Card(
                      borderOnForeground: true,
                      color: Colors.white,
                      child: IconButton(onPressed:(){}
                           , icon:Icon(Icons.favorite_border_outlined,
                           size: 40,
                           color: Colors.red[700],
                           ),
                           ),
                    ),
                   ),
                    const SizedBox(width: 6,),
                   Container(
                    padding: const EdgeInsets.only(top: 20,bottom: 65),
                    child: ElevatedButton(onPressed: 
                    (){},
                    style: ElevatedButton.styleFrom(
                     foregroundColor: Colors.white, backgroundColor: Colors.black,
                     ), 
                    child:const Padding(
                      padding: EdgeInsets.only(left: 82,right: 82,
                      top: 10,
                      bottom: 10
                      ),
                      child: Text('Add to cart',
                      style: TextStyle(
                        fontSize: 22
                      ),
                      ),
                    ),
                     ),
                   )
                  ],
                ),
            ],
          ),
          ], 
        ),
      ),
    );
  }
}