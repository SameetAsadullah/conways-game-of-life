#pragma once
#include "grid_info.h"
class NeighboursInfo :
	public GridInfo
{
private:
	int sum;

public:
	NeighboursInfo() :GridInfo(), sum(0) {
	}

	void setSum(int s) {
		if (sum >= 0) {
			sum = s;
		}
	}

	int getSum()const {
		return sum;
	}
};
