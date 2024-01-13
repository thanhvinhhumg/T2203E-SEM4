class Student {
  String? name;
  String? address;
  String? phone;
  Student({this.name, this.address, this.phone});

  @override
  String toString() {
    // TODO: implement toString
    return "name : $name, address : $address";
  }

}