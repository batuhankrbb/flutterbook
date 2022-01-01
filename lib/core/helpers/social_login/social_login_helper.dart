import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_book/core/custom_types/result_type/result_type.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'utils/apple_sign_in_sh256.dart';

class SocialAuthHelper {
  static final SocialAuthHelper instance = SocialAuthHelper();
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  static final FirebaseAuth authInstance = FirebaseAuth.instance;

  Future<void> firebaseInitialize() async {
    Firebase.initializeApp();
  }

  Future<Result<UserCredential>> facebookSignin() async {
    try {
      final LoginResult loginResult = await FacebookAuth.instance
          .login(permissions: ['public_profile', 'email']);
      if (loginResult.status == LoginStatus.success) {
        final OAuthCredential facebookAuthCredential =
            FacebookAuthProvider.credential(loginResult.accessToken!.token);
        final UserCredential userCredential =
            await authInstance.signInWithCredential(facebookAuthCredential);
        return Result.success(userCredential);
      } else if (loginResult.status == LoginStatus.cancelled) {
        return Result.failure("Login Cancelled");
      } else if (loginResult.status == LoginStatus.failed) {
        return Result.failure("Something went wrong");
      } else {
        return Result.failure(loginResult.message ?? "Something went wrong.");
      }
    } on FirebaseAuthException catch (e) {
      print(e.code);
      print(e.message);
      if (e.code == "account-exists-with-different-credential") {
        return Result.failure(
            "This account exists with different credentials.");
      } else {
        return Result.failure(e.message ?? "Something went wrong.");
      }
    }
  }

  Future<Result<UserCredential>> googleSignin() async {
    try {
      final GoogleSignInAccount? googleSignInAccount =
          await _googleSignIn.signIn();
      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;
        final OAuthCredential credential = GoogleAuthProvider.credential(
            accessToken: googleSignInAuthentication.accessToken,
            idToken: googleSignInAuthentication.idToken);
        final UserCredential userCredential =
            await FirebaseAuth.instance.signInWithCredential(credential);
        return Result.success(userCredential);
      } else {
        return Result.failure("Something went wrong.");
      }
    } on FirebaseAuthException catch (e) {
      return Result.failure(e.message ?? "Something went wrong.");
    }
  }

  Future<Result<UserCredential>> appleSignin() async {
    try {
      final rawNonce = FirebaseHelperAppleSignin.instance.generateNonce();
      final nonce = FirebaseHelperAppleSignin.instance.sha256ofString(rawNonce);

      final AuthorizationCredentialAppleID appleCredential =
          await SignInWithApple.getAppleIDCredential(scopes: [
        AppleIDAuthorizationScopes.email,
        AppleIDAuthorizationScopes.fullName
      ], nonce: nonce);

      final OAuthCredential oauthCredential =
          OAuthProvider("apple.com").credential(
        idToken: appleCredential.identityToken,
        rawNonce: rawNonce,
      );
      final UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(oauthCredential);

      return Result.success(userCredential);
    } on FirebaseAuthException catch (e) {
      return Result.failure(e.message ?? "Something went wrong.");
    } on SignInWithAppleAuthorizationException catch (e) {
      if (e.code == AuthorizationErrorCode.canceled) {
        return Result.failure("Something went wrong.");
      }
      if (e.code == AuthorizationErrorCode.failed) {
        return Result.failure("Something went wrong.");
      } else {
        return Result.failure(e.message);
      }
    }
  }
}
