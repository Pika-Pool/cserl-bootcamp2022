#include <iostream>

using namespace std;

struct Complex {
	int a, b;

	static Complex add(const Complex &c1, const Complex &c2) {
		return Complex{
			.a = c1.a + c2.a,
			.b = c1.b + c2.b
		};
	}
};

istream &operator>>(istream &input, Complex &c) {
	input >> c.a >> c.b;
	return input;
}

ostream &operator<<(ostream &out, const Complex &c) {
	out << c.a << ' ' << c.b;
	return out;
}

int main() {
	Complex c1, c2;

	cout << "Enter first complex number: ";
	cin >> c1;

	cout << "Enter second complex number: ";
	cin >> c2;
	
	const auto sum = Complex::add(c1, c2);
	cout << "Result: " << sum << endl;

	return 0;
}
