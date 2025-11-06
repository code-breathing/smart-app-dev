void main() {
  Map<String, String> contacts = {'Mash': '1234', 'Lina': '9101'};
  for (var i in contacts.entries) {
    if (i.key.length == 4) print(i.key);
  }
}
