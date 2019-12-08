package foo

import (
	"os"
	"testing"
)

func TestMain(m *testing.M) {
	code := m.Run()
	os.Exit(code)
}

func TestNew(t *testing.T) {
	f := New()
	if f == nil {
		t.Error("fail")
	}
}

func TestError(t *testing.T) {
	f := New()
	if f.Error() != "Error" {
		t.Error("invalid message")
	}
}
