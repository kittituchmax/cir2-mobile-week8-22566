Stream<int>createStremWithException(int last) async*{
  for (int i = 1; i <= last;i++) {
    if(i == 5){
      throw Exception("Execption when accessing 5ht number");
    }
    yield i;
  }
}

void subScribUserListen(){
  Stream stream = createStremWithException(5);
  final subscribe = stream.listen(null);
  subscribe.onData((x) => print("Number: $x"));
  subscribe.onError ((err)=>print("error: $err"));
  subscribe.onDone (()=>print("Done"));
}