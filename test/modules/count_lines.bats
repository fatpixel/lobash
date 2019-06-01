#!/usr/bin/env bats

setup_fixture
load_module count_lines

@test "l.count_lines <<< \$(printf '%s\n%s' a b)" {
  run l.count_lines <(printf '%s\n%s' a b)
  assert_success
  assert_output 2
}

@test "l.count_lines %s\n%s" {
  run l.count_lines "$(printf '%s\n%s' a b)"
  assert_success
  assert_output 2
}

@test "l.count_lines %s\n%s\n" {
  run l.count_lines "$(printf '%s\n%s\n' a b)"
  assert_success
  assert_output 3
}

@test "l.count_lines %s\n%s\n\n" {
  run l.count_lines "$(printf '%s\n%s\n\n' a b)"
  assert_success
  assert_output 4
}

@test "l.count_lines %s\n\n%s\n\n" {
  run l.count_lines "$(printf '%s\n\n%s\n\n' a b)"
  assert_success
  assert_output 5
}

@test "l.count_lines %s\n\n\n\n%s" {
  run l.count_lines "$(printf '%s\n\n\n\n%s' a b)"
  assert_success
  assert_output 5
}