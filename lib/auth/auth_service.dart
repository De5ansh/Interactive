import 'package:firebase_auth/firebase_auth.dart';

class AuthService{
  //instance of firebase auth
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //sign in with email and password
  Future<UserCredential> signInWithEmailAndPassword(String email, String password) async{
    try{
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch(e){
      throw Exception(e.code);
    }
  }

  //sign up with email and password
  Future<UserCredential> signUpWithEmailAndPassword(String email, String password) async{
    try{
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch(e){
      throw Exception(e.code);
    }
  }

  //sign out
  Future<void> signOut() async{
    await _auth.signOut();
  }

//errors
}