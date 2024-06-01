
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class VerificationController extends GetxController{

  var emailverified =false.obs;

  final FirebaseAuth _auth = FirebaseAuth.instance;


  Future <void> sendEmailverification()async {
    try{

      User?  user = _auth.currentUser;
      await user?.reload();
      if(user!=null&&!user.emailVerified){
        await user.sendEmailVerification();
        Get.snackbar("Email verification", "Verification has been sent");
      }
    }catch(e){
     Get.snackbar( "could not send Email verification email ",e.toString());
        
      }
  }
  Future<void> checkoutEmailVerification()async{
    try{ User? user= _auth.currentUser;
       await user?.reload();
       if(user!=null&&user.emailVerified){
        emailverified.value=true;
        Get.snackbar("Email verification", "Email verified");
       }
       
       else{
        emailverified.value=false;
       }
       }catch(e){

        Get.snackbar("Error","could not checkout emailverification ${e.toString()}", );
       }
      
  }
  Future <void> onSend()async {
    try{

      User?  user = _auth.currentUser;
      await user?.reload();
      if(user!=null&&!user.emailVerified){
        await user.sendEmailVerification();
        Get.snackbar("Email verification", "Verification has been sent");
      }
    }catch(e){
     Get.snackbar( "could not send Email verification email ",e.toString());
        
      }
  }
  
}
