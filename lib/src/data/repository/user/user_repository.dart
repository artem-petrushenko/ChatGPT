abstract class UserRepository {
  Future<void> signInWithGoogle();

  Future<void> logOut();

  Future<void> createWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<void> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  bool isAuth();

  String getCurrentUID();
}
