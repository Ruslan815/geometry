#include <iostream>
#include <math.h>
using namespace std;
float const PI=3.1415;

float squareC(int r){
	float s=0;
	s=PI*r*r;
	return s;
}

float squareT(int a, int b,int c){
	float p, s;
	p=(a+b+c)/2.;
	s=sqrt(p*(p-a)*(p-b)*(p-c));
	return s;
}

/*int main(){
	int a=3,b=4,c=5,r=5;
	float sC=0,sT=0;
	sC=squareC(r);
	cout << "sC= " << sC;
	sT=squareT(a,b,c);
	cout << "sT= " << sT;
	return 0;
}*/
