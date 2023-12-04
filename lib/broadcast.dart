void broadcastStreamOperation(){
  var stream = createNumberStream(5);
  var bStream = stream.asBroadcastStream();
  if (bStream.isBroadcast) {
    print("Broadcast Stream");
  } else {
    print("Single Stream");
  }
  bStream.first.then((value) => print("First even:$value"));
  bStream.last.then((value) => print("last even:$value"));
  bStream.length.then((value) => print("lenght even:$value"));
  bStream.isEmpty.then((value) => print("isEmpty even:$value"));
  stream = createNumberStream(0);
  bStream = stream.asBroadcastStream();
  bStream.isEmpty.then((value) => print("Is Empty even:$value"));

}

Stream<int>createNumberStream(int last) async* {
  for (int i = 1; i <= last;i++) {
    yield i;//to be able to send space out events
  }
}
