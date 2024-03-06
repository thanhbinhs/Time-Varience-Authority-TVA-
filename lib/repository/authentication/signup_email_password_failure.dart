class SignUpEmailAndPasswordFailure{
  final String message;

  const SignUpEmailAndPasswordFailure([this.message = "An Unknown error occurred"]);

  factory SignUpEmailAndPasswordFailure.code(String code){
    switch(code){
      case 'weak-password': return SignUpEmailAndPasswordFailure('Please enter a stronger password.');
      case 'invalid-email': return SignUpEmailAndPasswordFailure('Email is not valid or badly formatted.');
      case 'email-already-in-use': return SignUpEmailAndPasswordFailure('An account already exists for this email. Please sign in instead.');
      case 'operation-not-allowed': return SignUpEmailAndPasswordFailure('Opertion is not allowed. Please try again later.');
      case 'user-disabled': return SignUpEmailAndPasswordFailure('This user has been disabled. Please contact support.');

      default: return SignUpEmailAndPasswordFailure();
    }
  }
}