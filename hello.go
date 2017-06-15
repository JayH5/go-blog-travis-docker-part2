package main

import "fmt"

func Hello(name string) string {
  if len(name) == 0 {
    return "Hello!"
  }

	return fmt.Sprintf("Hello, %s!", name)
}
