

import 'package:flutter/material.dart';
import 'package:intro_to_restfulapi/profile/profile_model.dart';
import 'package:intro_to_restfulapi/profile/profile_service.dart';

class ProfilePage extends StatefulWidget {
  const new({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

ProfileModel? profileModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: 
      Center(child: 
      profileModel == null ? CircularProgressIndicator():
      ListTile(
        title:Text(profileModel!.email) ,
        leading:Image.network(profileModel!.image),
        subtitle: Text(profileModel!.username) ,
      ),),
      floatingActionButton: FloatingActionButton(onPressed: ()async{
profileModel= await fetchProfile();
      setState(() {
        
      });
      }),
    );
  }
}