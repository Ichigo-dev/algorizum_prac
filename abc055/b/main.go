package main

import "fmt"
import "math"

func main() {
	var a int
	fmt.Scan(&a)

  fmt.Println(a)
  var power int64
  power = 1
  for i := 0; i < a; i++ {
    fmt.Println(power)
    power *= int64(i + 1)
  }
  b := math.Pow10(9) + 7
  fmt.Println(power)
  ans := float64(power)
  fmt.Println(math.Mod(ans, b))
}
