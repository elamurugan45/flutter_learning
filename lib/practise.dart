void main() {
  for (int i = 0; i < 10; i++) {
    print('hello ${i + 1}');
  }

  //creating class object

  //declaration of Varible
  int a = 1;
  print(a);

  String vi = "vishal";
  print(vi);
  var myC = myClass();
  myC.myFunc();
  myFunc();
  var listName =[1,2,3,4];
  listName.add(5);
  listName.addAll([6,7,8,9]);
  listName.insert(0,0);
  listName.remove(1);
  print(listName);
}

class myClass {
  myClass() {
    print("constructor called");
  }
  void myFunc() {
    print("func call done");
  }
}

void myFunc() {
  print(" ouside func call done");
}
