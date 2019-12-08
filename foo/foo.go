package foo

// Foo is foo
type Foo struct{}

// New return new Foo
func New() *Foo {
	return &Foo{}
}

// Error return error message
func (p *Foo) Error() string {
	return "Error"
}
