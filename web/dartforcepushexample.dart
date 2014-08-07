import 'dart:html';
import 'package:force/force_browser.dart';

ForceClient fc;
void main() {
  fc = new ForceClient();
  fc.connect();
  
  fc.on("update", (fme, sender) {
    querySelector("#list").appendHtml("<div>${fme.json["count"]}</div>");
  });
}
