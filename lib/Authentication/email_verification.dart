
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qytnite/app_controllers/email_verify_controller.dart';
import 'package:qytnite/utils/constants.dart';

class EmailVerification extends StatefulWidget {
  const EmailVerification({super.key});

  @override
  State<EmailVerification> createState() => _EmailVerificationState();
}

class _EmailVerificationState extends State<EmailVerification> {

  // VerificationController verifiycontroller= Get.put(VerificationController());
  @override
  Widget build(BuildContext context) {
    return   SafeArea(
      child:Scaffold(
    
      body: Container(
        decoration:const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF172339),
             Color(0xFF4f4d5a),
              Color(0xFFae9090),
              ], 
            begin: Alignment.topCenter,
            
            end: Alignment.bottomCenter,

          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
              const  SizedBox(height: 0,),
                  Image.asset('s_fork/assets/images/pngs/logo.png', height: 100), 
              
              const    SizedBox(height: 10),
              
              const    Text(
                    AppConstant.product,
                    style: TextStyle(
                      fontSize: 24,
                      color: Color(0xff8493aa),
                    ),
                  ),
              
                const  SizedBox(height: 50),
              
               const   Text(
                    AppConstant.emailaddress,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xff969589),
                    ),
                  ),
              
              const    SizedBox(height: 42),
              
               
                  Center(
                    child: SizedBox(
                      // height: 50,
                      width: 280,
                      child: TextField(
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide.none,
                          ),
                          hintText: AppConstant.star,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
              
                const  SizedBox(height: 30),
                  SizedBox(
                    width: 280,
                    child: ElevatedButton(
                      onPressed: () {
                      // verifiycontroller.sendEmailverification();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xfffef1ba),
                        
                        
                        padding:const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child:const Text(AppConstant.register,style: TextStyle(
                       
                      ),),
                    ),
                  ),
               const   SizedBox(height: 63,),
              
                const  SizedBox(height: 20),
                  Container(
                    height: 50,
                    width: 280,
                    decoration: BoxDecoration(
                      border:  Border.all( color: Colors.white),
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: TextButton(
                      onPressed: () {
                        
                      },
                      child:const Text.rich(
                                        TextSpan(
                                          children: [
                                            TextSpan(
                                              
                      text: AppConstant.re,
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.white,
                       
                        decorationStyle: TextDecorationStyle.solid,
                          decorationThickness: 2.0,
                      )
                                            ),
                                            TextSpan(
                      text: AppConstant.code,
                      style: TextStyle(
                        color: Colors.white
                      ),
                                            ),
                                          ],
                                        ),
                                            ),
                  ),
              
             
              ),
          const    SizedBox(height: 10,),
              const    Text(
                    AppConstant.check,
                    style: TextStyle(
                      fontSize: 13,
                      color: Colors.white,
                    ),
                  ),
                ],
            ),
          ),
        ),
      ),
    ) ));
  }
}