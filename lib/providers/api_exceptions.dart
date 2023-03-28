enum ApiExceptionsType {
  network,
  other,
}

class ApiExceptions implements Exception {
  const ApiExceptions(this.type);

  final ApiExceptionsType type;
}
