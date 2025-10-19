void main(){
    int basE = 2;
    int power = 3;
    print(pow(2,3));
}

int pow(int bas, int power){
    int r = 1;
    for(int i = 0; i< power; i++){
        r *= bas;
    }
    return r;
}