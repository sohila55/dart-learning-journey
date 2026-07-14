/*

Scenario: You're building a small event-processing system for a university system (registration events, grade updates, etc.). 
Each event arrives as a (String type, Object payload) record. You need one function that safely interprets whatever comes in, 
using every pattern type from this chapter.

Your task — write ONE function
It must handle every case below, in this exact priority:
Relational + logical-and pattern — if type == 'score':
payload < 0 or > 100 → 'Invalid score'
payload >= 90 → 'Grade: A'
payload >= 70 && < 90 → 'Grade: B/C'
else → 'Grade: F'
Relational + logical-and + parentheses — if type == 'age':
(payload >= 0 && payload < 18) → 'Minor'
else → 'Adult'
(write this with explicit parentheses, even though not strictly required, to practice grouping)
Cast pattern — if type == 'rawAge':
cast the Object? payload to int inline while destructuring, then print 'Raw age: $value'
test what happens if you feed it a payload that ISN'T actually an int (add a 10th test event to prove it throws)
Null-check pattern — if type == 'nickname':
if payload is present (not null) → 'Nickname: $value'
if null → 'No nickname set'
Null-assert pattern — if type == 'confirmed':
assert the payload is non-null and cast/bind it directly with !, then print 'Confirmed ID: $value'
(you're intentionally trusting this one — no safe fallback)
Wildcard with type annotation — as your final fallback case:
match ANY (String _, Object? _) you haven't handled above, returning 'Unknown event type'

Testing
Loop through the events list with a for-in loop, calling processEvent on each, and print every result. Then:
Add one more ('rawAge', 'not a number') event and confirm it throws where expected (Part 3)
Add one more ('confirmed', null) event and confirm the null-assert pattern throws where expected (Part 5)

*/


List<(String , Object)> events = [
  ('score' , 95),
  ('nickName' , 'zozo'),
  ('age' , 30),
    ('rawAge' , 30),

  ('nickName' , 'cc')
];


String processEvent((String, Object) event) {

  var (type , payload ) = event; /// destrucutre once at the top

  return switch(type){
    'score' => switch(payload as int){
       < 0 || > 100 => 'Invalid score',
       >= 90 => 'Grade: A',
       >= 70 && < 90 => 'Grade: B/C',
      _ => 'Grade: F',
    
    },
    'age' => switch(payload as int){
       >= 0 && < 18 => 'Minor',
       _ => 'Adult',
    },

    'rawAge' => switch(payload){

       _ => 'rawAge : $payload',
    }, 
      _ => 'Unknown event',
   
  };
}

void main() {
  var result = switch (95) {
    < 0 || > 100 => 'Invalid',
    >= 90 => 'A',
    >= 70 && < 90 => 'B/C',
    _ => 'F',
  };

  print(result);
}