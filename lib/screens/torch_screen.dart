import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:torch_controller/torch_controller.dart';

class TorchScreen extends StatefulWidget {
  const TorchScreen({super.key});

  @override
  State<TorchScreen> createState() => _TorchScreenState();
}

class _TorchScreenState extends State<TorchScreen> {
  var controller=TorchController();
  bool isActive=false;
  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        title: Text('Torch Light',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
        elevation: 0.0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(isActive?Icons.flashlight_on_outlined:Icons.flashlight_off_outlined,
                  size: 150,
                  color: Colors.white,),
                  SizedBox(height: size.height*.05,),
                  CircleAvatar(
                    minRadius: 20,
                    maxRadius: 35,
                    child: Transform.scale(
                      scale: 1.5,
                      child: IconButton(
                        icon: Icon(Icons.power_settings_new),
                        onPressed: () {
                          controller.toggle();
                          isActive=!isActive;
                          setState(() {

                          });
                        },

                      ),
                    ),
                  )
                ],
              ),
            )
          ),
          Text('Developed by Adnan', style: TextStyle(color: Colors.white)),
          SizedBox(height: size.height*.05,)
        ],
      ),
    );
  }
}
