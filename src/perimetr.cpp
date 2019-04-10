#include <iostream>
using namespace std;
const float PI=3.1415;

float PerimetrC(int r) {
	float per=0;
	per=2*PI*r;
	return per;
}

int PerimetrT(int a,int b,int c) {
	int per=0;
	per=a+b+c;
	return per;
}

/*int main() {
	int a=2,b=3,c=4,r=3;
	cout << PerimetrC(r) << endl;
	cout << PerimetrT(a,b,c) << endl;
	return 0;
}*/
