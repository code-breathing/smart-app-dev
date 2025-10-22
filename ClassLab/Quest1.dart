void main(){
    Student st1 = new Student(01, "Mahim", 67.5);
    st1.displayDetails();
}

class Student{
    int? id;
    String? name;
    double? marks;
    
    Student(int id, String name, double marks){
        this.id = id;
        this.name = name;
        this.marks = marks;
    }
    
    void displayDetails(){
        print("Student info\n name:- $name \n roll:- $id \n marks:- $marks");
    }
}
