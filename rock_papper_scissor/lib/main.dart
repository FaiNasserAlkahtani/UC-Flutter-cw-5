import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
   MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
Image s= Image.asset("assets/Images/S.jpeg");
Image r= Image.asset("assets/Images/r.jpeg");
Image p= Image.asset("assets/Images/P.jpeg");

Image i = Image.asset("assets/Images/r.jpeg");
Image j = Image.asset("assets/Images/r.jpeg");

String winner="lets go!";
//player 1 function

void RPS1(){
  //show a picture randomly out of the 3 pictures
  int RPS = Random().nextInt(3) + 1;
  //1 R, 2 is P, 3 is S

  if (RPS == 1)
  //show Rock picture
    {
      //Image.asset("/Users/maryomal-enizi/Desktop/fefo/rock_papper_scissor/assets/rock.png");
      setState(() {
        i= Image.asset("assets/Images/r.jpeg");
      });
      
      print("Rock");

    }

  else if(RPS == 2)
  //show Papper picture
      {
//Image.asset("/Users/maryomal-enizi/Desktop/fefo/rock_papper_scissor/assets/papper.png");
setState(() {
  i= Image.asset("assets/Images/P.jpeg");

});
print("Papper");
      }
  else 
  //show Scissors picture
      {
//Image.asset("/Users/maryomal-enizi/Desktop/fefo/rock_papper_scissor/assets/scissors.png");
setState(() {
i= Image.asset("assets/Images/S.jpeg");
  
});

print("Scissors");
      }
}//end of player 1 function

//player 2 function 
void RPS2(){
  //show a picture randomly out of the 3 pictures
  int RPS = Random().nextInt(3) + 1;
  //1 R, 2 is P, 3 is S

  if (RPS == 1)
  //show Rock picture
    {
      //Image.asset("/Users/maryomal-enizi/Desktop/fefo/rock_papper_scissor/assets/rock.png");
      setState(() {
        j= Image.asset("assets/Images/r.jpeg");
      });
      
      print("Rock");

    }

  else if(RPS == 2)
  //show Papper picture
      {
//Image.asset("/Users/maryomal-enizi/Desktop/fefo/rock_papper_scissor/assets/papper.png");
setState(() {
  j= Image.asset("assets/Images/P.jpeg");

});
print("Papper");
      }
  else 
  //show Scissors picture
      {
//Image.asset("/Users/maryomal-enizi/Desktop/fefo/rock_papper_scissor/assets/scissors.png");
setState(() {
j= Image.asset("assets/Images/S.jpeg");
  
});

print("Scissors");
      }
}//end of player 2 function

// void Winner(){
//   if ((i==p && j==p) ||( i==s && j==s )||( i==r && j==r ))
//      setState(() {
//        winner="tie";
//      });
     
  
//   else if((i==p && j==r) || (i==r && j==s) || (i==s && j==p))
//       setState(() {
//         winner="Player 1 wins!";
//       });
      
      
//   else
//   setState(() {
//     winner="Plyer 2 wins!";
//   });
      
// print(winner);

// }
//cmd+k+c

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SafeArea(
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //image
                    Container(child: i, margin: EdgeInsets.all(50),)
                    ,
                    //button
                    ElevatedButton(onPressed: (){
                      RPS1();
                    }, child: Text("go player 1!")),
                    //image
                    Container(child: j, margin: EdgeInsets.all(50),)
                    ,
                    //button
                    ElevatedButton(onPressed: (){
                      RPS2();
                    }, child: Text("go player 2!"))
                    ,
                    //ElevatedButton(onPressed: (){Winner();}, child: Text("show result"))
                    ]),//image
                  
                  

              ],
            ),) ),)

      
    );
  }
}
