import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gomarketapp/screens/user-panel/all_ordersscreen.dart';
import 'package:gomarketapp/utils/app_constants.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../screens/auth-ui/welcome_screen.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({super.key});

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: Get.height/25),
      child: Drawer(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(20),
      )
    ),
    child: Wrap(
      runSpacing: 10,
      children: [
      Padding(
  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
  child: ListTile(
    title: Text(
      'Umair',
      textAlign: TextAlign.start, style: TextStyle(color: AppConstant.TextColor),
      // or TextAlign.left or TextAlign.right
    ),
    subtitle: Text('Version 1.0.1',style: TextStyle(color: AppConstant.TextColor),),
    leading: CircleAvatar(
      radius: 22,
      backgroundColor: AppConstant.AppMainColor,
      child: Text('U'),
    ),
  ),
),
Divider(
  indent: 10.0,
  endIndent: 10.0,
  thickness: 1.5,
  color: Colors.grey,
),
 Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20, ),
  child: ListTile(
    title: Text(
      'Umair',style: TextStyle(color: AppConstant.TextColor),
      textAlign: TextAlign.start, 
      // or TextAlign.left or TextAlign.right
    ),
   
    leading: Icon(Icons.home,color: AppConstant.TextColor,),
    trailing: Icon(Icons.arrow_forward,color: AppConstant.TextColor,),
  ),
),
 Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20, ),
  child: ListTile(
    title: Text(
      'Products',style: TextStyle(color: AppConstant.TextColor),
      textAlign: TextAlign.start, 
      // or TextAlign.left or TextAlign.right
    ),
   
    leading: Icon(Icons.production_quantity_limits,color: AppConstant.TextColor,),
    trailing: Icon(Icons.arrow_forward,color: AppConstant.TextColor,),
  ),
),
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20, ),
  child: ListTile(
    title: Text(
      'Orders',style: TextStyle(color: AppConstant.TextColor),
      textAlign: TextAlign.start, 
      // or TextAlign.left or TextAlign.right
    ),
   
    leading: Icon(Icons.shopping_bag,color: AppConstant.TextColor,),
    trailing: Icon(Icons.arrow_forward,color: AppConstant.TextColor,),
    onTap: () {
      Get.back();
      Get.to(()=>AllOrderScreen());
    },
  ),
),
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20, ),
  child: ListTile(
    title: Text(
      'Contact',style: TextStyle(color: AppConstant.TextColor),
      textAlign: TextAlign.start, 
      // or TextAlign.left or TextAlign.right
    ),
   
    leading: Icon(Icons.phone,color: AppConstant.TextColor,),
    trailing: Icon(Icons.arrow_forward,color: AppConstant.TextColor,),
  ),
),
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20, ),
  child: ListTile(
    onTap: () async{
      GoogleSignIn googleSignIn=GoogleSignIn();
FirebaseAuth _auth=FirebaseAuth.instance;
await _auth.signOut();
    await    googleSignIn.signOut();
         Get.offAll(()=>WelcomeScreen());

    },
    title: Text(
      'Log out',style: TextStyle(color: AppConstant.TextColor),
      textAlign: TextAlign.start, 
      // or TextAlign.left or TextAlign.right
    ),
   
    leading: Icon(Icons.logout,color: AppConstant.TextColor,),
    trailing: Icon(Icons.arrow_forward,color: AppConstant.TextColor,),
  ),
),


      ],
    ),
    backgroundColor: AppConstant.AppSecondaryColor,
        
      ),
    );
  }
}