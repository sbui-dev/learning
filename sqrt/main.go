package main

import (
	"fmt"
)

type ErrNegativeSqrt float64

func (e ErrNegativeSqrt) Error() string {
	return "cannot Sqrt negative number: " + fmt.Sprintf("%.0f", e)
}

func sqrt(x float64) (float64, error) {
	if x < 0 {
		return 0, ErrNegativeSqrt(x)
	}

	z := 1.0
	c := 0.0

	for i := 1; i < 10; i++ {
		c = (z*z - x) / (2 * z)
		if c == 0 {
			return z, nil
		}
		z -= c
	}

	return z, nil
}

func main() {
	fmt.Println(sqrt(2))
	fmt.Println(sqrt(-2))
}
