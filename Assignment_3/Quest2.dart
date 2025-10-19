void evenNumbers(int strt, int end){
    for(int i = strt; i<= end; i++){
        if(i%2 == 0){
            print(i);
        }
    }
}

void main(){
    evenNumbers(1, 20);
}