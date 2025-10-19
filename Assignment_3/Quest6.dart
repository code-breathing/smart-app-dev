void main(){
    print(revString("Hello string!!"));
}

String revString(String text){
    return text.split("").reversed.join();
}