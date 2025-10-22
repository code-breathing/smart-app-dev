class Car{
    String? brand;
    String? model;
    int? year;

    Car(String brand, String model, int year){
        this.brand = brand;
        this.model = model;
        this.year = year;
    }

    void displayInfo(){
        print("Car brand: $brand");
        print("Car model: $model");
        print("Car year: $year");
    }
}

void main(){
    Car c1 = new Car("corolla", "toyota", 2015);
    c1.displayInfo();
}