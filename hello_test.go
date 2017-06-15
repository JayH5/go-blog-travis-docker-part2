package main

import "testing"

func TestHello(t *testing.T) {
	cases := []struct {
		in, want string
	}{
		{"World", "Hello, World!"},
		{"Jamie Hewland", "Hello, Jamie Hewland!"},
		{"", "Hello!"},
	}
	for _, c := range cases {
		got := Hello(c.in)
		if got != c.want {
			t.Errorf("Hello(%q) == %q, want %q", c.in, got, c.want)
		}
	}
}
