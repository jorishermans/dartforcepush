library dart_force_todo;

import "package:force/force_serverside.dart";
import "dart:async";
import 'dart:math';

void main() {
  
  ForceServer fs = new ForceServer(clientFiles: "../build/web/", startPage: "dartforcepushexample.html");
  
  fs.setupConsoleLog();
  
  const TIMEOUT = const Duration(seconds: 3);
  var number = 0;

  new Timer.periodic(TIMEOUT, (Timer t) {
    var rng = new Random();
    number=rng.nextInt(250);
    
    print("send a number to the clients $number");
    
    var data = { "count" : "$number"};
    fs.send("update", data);
  });
 
  fs.start();
  
}