abstract class UserNetworkDataProvider {
  Future<void> signInWithGoogle();

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> createUserWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> logOut();

  bool isAuth();
}
