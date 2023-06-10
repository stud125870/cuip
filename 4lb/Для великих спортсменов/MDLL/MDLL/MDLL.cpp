#include<iostream>
#include<math.h>
#include<cmath>

extern "C" __declspec(dllexport)

float funcC(int x) {
	float f;
	f = ((cos(x) + sin(x)) / exp(x));
	return f;
}