void main(){
    createUser("Mahim", 22);
    createUser("Liza", 25)
}

void createUser(String name, int age, [bool isActive = true]){
    print("Name: $name, $age, Active: $isActive.");
}