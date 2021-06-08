#include <stdio.h>

int main(void) {
	int y,x,i;
	float ca,cb,a,b,t;
	int flag = 0;
	for (y = -12 ; y < 13 ; y++) {
		for (x = -39 ; x < 40 ; x++) {
			ca = x * 0.0458;
			cb = y * 0.08333;
			a = ca;
			b = cb;
			for (i = 0; i < 16 ; i++) {
				t = a*a-b*b+ca;
				b = 2*a*b+cb;
				a = t;
				flag = 0;
				if ((a*a+b*b) > 4) {
					flag = 1;
					break;
				}
			}
			if (flag == 0) {
				printf(" ");
			} else {
				printf("%x",i);
			}
		}
		printf("\n");
	}
}
