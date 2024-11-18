import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:remdy/auth_bloc/google_sign_in_event.dart';
import 'package:remdy/auth_bloc/google_sign_in_state.dart';



class GoogleSignInBloc extends Bloc<GoogleSignInEvent, GoogleSignInState> {
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  GoogleSignInBloc() : super(GoogleSignInInitial());

  @override
  Stream<GoogleSignInState> mapEventToState(GoogleSignInEvent event) async* {
    if (event is GoogleSignInRequested) {
      yield GoogleSignInInProgress();
      try {
        // Start Google sign-in process
        final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
        if (googleUser == null) {
          yield GoogleSignInFailure("Sign-in aborted");
        } else {
          final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
          final OAuthCredential credential = GoogleAuthProvider.credential(
            accessToken: googleAuth.accessToken,
            idToken: googleAuth.idToken,
          );

          final UserCredential userCredential = await _firebaseAuth.signInWithCredential(credential);
          final user = userCredential.user;
          yield GoogleSignInSuccess(user?.displayName ?? 'User');
        }
      } catch (e) {
        yield GoogleSignInFailure(e.toString());
      }
    } else if (event is GoogleSignOutRequested) {
      yield GoogleSignInInProgress();
      try {
        await _googleSignIn.signOut();
        await _firebaseAuth.signOut();
        yield GoogleSignInInitial();
      } catch (e) {
        yield GoogleSignInFailure(e.toString());
      }
    }
  }
}