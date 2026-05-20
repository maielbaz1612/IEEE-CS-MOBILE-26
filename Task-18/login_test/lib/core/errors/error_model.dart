class ErrorModel {
  final int status;
  final String errorMessage;

  ErrorModel(this.status, this.errorMessage);
  factory ErrorModel.fromJson(Map<String,dynamic> jsonData){
    return ErrorModel(jsonData['status'], jsonData['ErrorMessage']);
  }
}