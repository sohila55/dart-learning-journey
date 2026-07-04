# 🎯 Dart Mastery Roadmap

A self-paced, project-based journey to mastering Dart — from core syntax to a publish-ready package.
Each phase pairs official documentation with hands-on drills and a shippable GitHub project.

**Progress key:** `[ ]` not started · `[~]` in progress · `[x]` done

---

## Phase 1 — Core Language Foundations
**Weeks 1–2**

### 📖 Docs to read
- [ ] Introduction to Dart
- [ ] Variables
- [ ] Operators
- [ ] Comments
- [ ] Built-in types
- [ ] Collections
- [ ] Control flow (loops, branches)
- [ ] Error handling
- [ ] Functions

### 🧪 Drills
- [ ] Write scripts covering every built-in type (`int`, `double`, `String`, `bool`, `List`, `Set`, `Map`)
- [ ] Practice null safety: `?`, `!`, `??`, `late`
- [ ] Write functions using named, optional, and positional parameters

### 🚀 Project — `dart-cli-toolbox`
- [ ] Calculator
- [ ] In-memory to-do list
- [ ] Unit converter
- [ ] Number-guessing game
- [ ] Each in its own folder, each with a short README
- [ ] Push to GitHub

---

## Phase 2 — OOP & Modern Dart
**Weeks 3–4**

### 📖 Docs to read
- [ ] Classes
- [ ] Constructors
- [ ] Primary constructors
- [ ] Methods
- [ ] Extending a class
- [ ] Mixins
- [ ] Enums
- [ ] Extension methods
- [ ] Extension types
- [ ] Callable objects
- [ ] Class modifiers (`sealed`, `final`, `base`, `interface`)

### 🧪 Drills
- [ ] Model a small domain (e.g. library system: `Book`, `Member`, `Library`)
- [ ] Use mixins to share behavior across classes
- [ ] Try `sealed` classes combined with enums for state modeling

### 🚀 Project — `dart-oop-bank-system`
- [ ] `Account` base class
- [ ] `SavingsAccount` / `CheckingAccount` subclasses
- [ ] Transaction history
- [ ] Interest calculation via mixin
- [ ] Basic unit tests
- [ ] Push to GitHub

---

## Phase 3 — Patterns, Records & Type System
**Weeks 4–5**

### 📖 Docs to read
- [ ] Patterns overview
- [ ] Pattern types
- [ ] Records
- [ ] Generics
- [ ] Typedefs
- [ ] Type system
- [ ] Dot shorthands

### 🧪 Drills
- [ ] Rewrite Phase 2 logic using `switch` expressions and destructuring
- [ ] Use records to return multiple values from a function
- [ ] Implement a generic `Stack<T>` from scratch

### 🚀 Project — `dart-generics-patterns`
- [ ] Generic `Stack`
- [ ] Generic `Queue`
- [ ] Generic `LinkedList`
- [ ] Generic `BinaryTree`
- [ ] Pattern-matching-based traversal/print logic
- [ ] Push to GitHub

---

## Phase 4 — Async, Concurrency & Core Libraries
**Weeks 6–7**

### 📖 Docs to read
- [ ] Concurrency overview
- [ ] Async
- [ ] Isolates
- [ ] `dart:async`
- [ ] `dart:convert`
- [ ] `dart:io`
- [ ] `dart:math`
- [ ] Async tutorial
- [ ] Futures & error handling
- [ ] Streams (using and creating)

### 🧪 Drills
- [ ] Fetch and parse JSON from a public API
- [ ] Build a stream that emits values over time (e.g. countdown)
- [ ] Offload CPU-heavy work to an isolate (e.g. naive prime calculator)

### 🚀 Project — `dart-weather-cli`
- [ ] Async API calls to a real weather service
- [ ] Graceful error handling (timeouts, bad JSON)
- [ ] Live updates via streams every N seconds
- [ ] Push to GitHub

---

## Phase 5 — Tooling, Testing, Packages & Effective Dart
**Weeks 8–10**

### 📖 Docs to read
- [ ] Effective Dart: Style
- [ ] Effective Dart: Documentation
- [ ] Effective Dart: Usage
- [ ] Effective Dart: Design
- [ ] Testing
- [ ] `dart test`
- [ ] `dart analyze`
- [ ] `dart format`
- [ ] Creating packages
- [ ] Pubspec file
- [ ] Package layout conventions

### 🧪 Drills
- [ ] Add unit tests to all previous projects
- [ ] Run `dart analyze` + `dart format`, fix every warning
- [ ] Convert one utility into a pub.dev-style package structure

### 🚀 Capstone Project — `dart-task-manager-package`
- [ ] Clean architecture (`lib/`, `test/`, proper `pubspec.yaml`)
- [ ] Full test coverage
- [ ] CLI front-end using the package
- [ ] API docs generated via `dart doc`
- [ ] Polished README with usage examples and badges
- [ ] Push to GitHub

---

## 📌 GitHub Presentation Checklist

- [ ] Create a profile-level repo `dart-learning-journey` linking to every project above, phase by phase
- [ ] Each project repo has: clear README, run instructions, concepts demonstrated
- [ ] Every repo passes `dart format` and `dart analyze` with zero warnings
- [ ] Tests included where relevant
- [ ] Commit history shows iteration (meaningful messages, not one giant commit)

---

*Reference: [Dart official documentation](https://dart.dev/docs)*