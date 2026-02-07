package main

import "fmt"

func main() {
    fmt.Println("--- Simple Go Calculator ---")
    var num1, num2 int
    fmt.Print("Enter first number: ")
    fmt.Scan(&num1)
    fmt.Print("Enter second number: ")
    fmt.Scan(&num2)
    fmt.Printf("The sum of %d and %d is: %d\n", num1, num2, num1+num2)
}
