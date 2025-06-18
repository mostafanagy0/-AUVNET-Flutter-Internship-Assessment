class SignupState {
  final bool isLoading;
  final String? errorMessage;
  final bool isSuccess;

  SignupState({
    this.isLoading = false,
    this.errorMessage,
    this.isSuccess = false,
  });

  SignupState copyWith({
    bool? isLoading,
    String? errorMessage,
    bool? isSuccess,
  }) {
    return SignupState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage,
      isSuccess: isSuccess ?? this.isSuccess,
    );
  }
}
