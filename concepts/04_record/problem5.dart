
/*
Problem 5 — Compare Two Records for "Meaningful" Equality
Difficulty: Medium (conceptual, not just algorithmic)
Write a function bool sameShape(Record a, Record b) that:

Creates two named records with identical values but different field names (e.g. (x: 1, y: 2) vs (a: 1, b: 2))
Prints whether == considers them equal, and explains why in a comment
Then creates two positional records with identical values but different documentation-only names in their type annotations (e.g. (int x, int y) vs (int p, int q)), and shows they ARE considered equal

Expected output:
(x:1,y:2) == (a:1,b:2) -> false  // different named shape
(1,2) as (x,y) == (1,2) as (p,q) -> true  // positional names are cosmetic
Goal: this problem isn't about clever logic — it's about proving to yourself, with running code, that you truly understand structural equality from the earlier chapter.

*/