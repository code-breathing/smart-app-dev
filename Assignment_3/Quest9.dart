int maxNumber(int a, int b, int c) {
    int crntMax;

    crntMax = (a>b ? a:b);
    crntMax = crntMax>c ? crntMax:c;


    return crntMax;
}

void main() {
    print(maxNumber(10, 30, 20));
}
