#!/usr/bin/env bats

setup_fixture
test_prepare is_writable
load_module is_writable

@test "l.is_writable a normal file" {
  local temp=$(mktemp)
  run l.is_writable "$temp"
	assert_success
	assert_output ''
}

@test "l.is_writable a executable file" {
  local temp=$(mktemp)
  chmod +x "$temp"
  run l.is_writable "$temp"
	assert_success
	assert_output ''
}

@test "l.is_writable a directory" {
  local temp=$(mktemp -d)
  run l.is_writable "$temp"
	assert_success
  # interesting https://superuser.com/a/168583
	assert_output ''
}

@test "l.is_writable unexist path" {
  run l.is_writable /not-exist
	assert_failure
	assert_output ''
}
