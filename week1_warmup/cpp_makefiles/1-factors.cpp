#include <iostream>
#include <vector>

using namespace std;

vector<int> find_factors(int num) {
	vector<int> factors{1};

	for(int i = 2;i <= num;++i) {
		if(num % i == 0)
			factors.push_back(i);
	}

	return factors;
}

int main() {
	int num;
	cout << "Enter a number: ";
	cin >> num;
	
	auto factors = find_factors(num);
	cout << "Factors: ";
	for(const auto &factor : factors) {
		cout << factor << ' ';
	}

	cout << endl;

	return 0;
}
