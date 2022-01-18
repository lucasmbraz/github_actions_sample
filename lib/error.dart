int foo() {
  return 5;
}

// void bar() {
//   // print('whatever');
// }

void main() {
  // bar();
  foo(); // LINT: return value is silently ignored

  const str = "Hello there";
  str.substring(
    5,
  ); // LINT: Strings are immutable and the return value should be handled

  final date = DateTime(2018, 1, 13);
  date.add(const Duration(
    days: 1,
    hours: 23,
  )); // LINT: Return value ignored, DateTime is immutable
}
