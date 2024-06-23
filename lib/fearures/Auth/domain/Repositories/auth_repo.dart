
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepo {

  Future <Either<Exception,UserCredential>> loginWithGoogle();
  Future<UserCredential> loginWithFacebook();

}