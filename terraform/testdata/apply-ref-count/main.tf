resource "aws_instance" "foo" {
  count = 3
}

resource "aws_instance" "bar" {
  foo = length(aws_instance.foo)
}
