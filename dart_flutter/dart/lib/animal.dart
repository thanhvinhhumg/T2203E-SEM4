class Animal {
  String? color;
  int? length;
  Animal({this.color = "black" , this.length = 2});
  Animal.constructorWithColor({this.color = "black"});
  @override
  String toString() {
    // TODO: implement toString
    return "color: $color, length: $length";
  }

  

}