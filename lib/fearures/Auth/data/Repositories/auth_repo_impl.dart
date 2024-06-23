import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/fearures/Auth/domain/Repositories/auth_repo.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';



class AuthRepoImpl extends AuthRepo {
  @override
  Future<UserCredential> loginWithFacebook() async {
    // Trigger the sign-in flow
    final LoginResult loginResult = await FacebookAuth.instance.login();

    if (loginResult.status == LoginStatus.success) {
      // Retrieve the access token
      final AccessToken accessToken = loginResult.accessToken!;

      // Create a credential from the access token
      final OAuthCredential facebookAuthCredential = FacebookAuthProvider
          .credential(accessToken.tokenString);

      // Once signed in, return the UserCredential
      return FirebaseAuth.instance.signInWithCredential(facebookAuthCredential);
    } else {
      throw Exception('Facebook login failed: ${loginResult.message}');
    }
  }

  @override
  Future<Either<Exception, UserCredential>> loginWithGoogle() async {
    try {
      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication? googleAuth = await googleUser!
          .authentication;

      // Create a new credential
      final credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      // Once signed in, return the UserCredential
      return Right(
          await FirebaseAuth.instance.signInWithCredential(credential));
    } catch (e) {
      // Handle exception and return Left with Exception
      return Left(Exception('Something went wrong: $e'));
    }
  }
}