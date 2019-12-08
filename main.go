package main

import (
	"fmt"

	"github.com/rkunihiro/cci-hello/foo"
)

func main() {
	fmt.Println("Hello,World!")
	f := foo.New()
	fmt.Println(f)
}
