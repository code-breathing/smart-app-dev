void main(){
    File obj = File("text.txt");
    if(obj.existsSync()){
        obj.deleteSync();
        print("File deleted!");
    }
    else{
        print("File not found!!");
    }
}