//constructor in oop
class Animal{
    String? name;
    int? age;
    // Animal(){
    //     print("Animal class");
    // }

    Animal(this.name,this.age){//parameterized const. er jonno ager by deafault const ke cmnt korte hobe , 
        this.name = name;
        this.age = age;
    }
    Animal.dogAge(age){ //age named cons ,name er jonno o same ekhane age/name pass kora jay
        this.age = age;
    }
    Animal.dogName(name){
        this.name = name  //datatuype specific kora jay
    }
    display(){
        print("Name: $name,Age:$age");
    }
}
// or evabe o likha jay: Animal(this.name,this.age);


void main(){
    Animal obj = Animal("Dog",2);
    Animal obj1 = Animal.dogName("Dog",2);
    Animal obj2 = Animal.dogAge("Dog",2);
    obj.display();

}