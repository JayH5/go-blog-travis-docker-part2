package main

import (
  "fmt"
  "os"
  "strings"
)

func main() {
	fmt.Println(Hello(strings.Join(os.Args[1:], " ")))
}
