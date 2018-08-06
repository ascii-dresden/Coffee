// Kaffee, Milch (50/50)

package main

import "fmt"

func nameWithPrice(price string) string {
	return "Melange - " + price
}

func main() {
	description := nameWithPrice("1,00€")
	fmt.Println(description)
}
