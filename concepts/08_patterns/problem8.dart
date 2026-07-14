/*


Exercise 8 — Algebraic data type

Scenario: You're building a simple network-request status widget (a very common real Flutter pattern).

dartsealed class RequestState {}
class Idle extends RequestState {}
class InProgress extends RequestState {}
class Success extends RequestState {
  final String data;
  Success(this.data);
}
class Failure extends RequestState {
  final String message;
  Failure(this.message);
}

Write String render(RequestState state) using a switch expression that handles all 4 subtypes distinctly (e.g., 'Idle', 'Loading...', 'Data: ...', 'Error: ...'). 

Then add a 5th subtype class Cancelled extends RequestState {} without updating your switch —
 observe the analyzer's exhaustiveness error, then fix it.
*/
sealed class RequestState {}

class Idle extends RequestState {}

class InProgress extends RequestState {}

class Success extends RequestState {
  final String data;
  Success(this.data);
}

class Failure extends RequestState {
  final String message;
  Failure(this.message);
}

String render(RequestState state) => switch (state) {
  Idle() => 'idel',
  InProgress() => 'inProgress',
  Success(data: var d) => '$d',
  Failure(message: var m) => '$m',
};

void main() {
  print(render(Success('data')));
}
