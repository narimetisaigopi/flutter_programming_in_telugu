


/* Asynchronus Programming in Dart/Flutter
 ** Key Words in Dart Asynchronus Programming **
 1) Future -- it holds the future results
 2) await  --  it stops the execution till it gets results
 3) async  --  indicates that function Asynchronus function
 4) Then   --  for fetching results from Future object

 Dart are single thread programming language

 await and async are introduced in Dart 1.9 Version prior to that then was in usage

**/

// all functions declared here run on Main UI Thread
void main() {
  print('Main method started');
  printFileContentWithThen();
  print('Main method ended');
}

// it will print the file content after it downloads
printFileContent() async {
  String fileData = await downloadFile();
  print("Download file content is ==> $fileData");
}

printFileContentWithThen()  {
  Future<String> fileData =  downloadFile();

  fileData.then((onValue){
      print("Download file content is ==> $onValue");  
  }).catchError((onError){
    print("Download file failed error ==> $onError");
  });
  
}

// to download a file -- [Dummy long running operation]
Future<String> downloadFile(){
    Future<String> fileData = Future.delayed(Duration(seconds: 5),(){ // 1 2 3 4 5
      return 'The file has secret content.';
    });

    return fileData;
}
