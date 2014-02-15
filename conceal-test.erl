% conceal test -- lines should match

foo() -> fun (X) -> not X end.
foo() → λ (X, Y) → ¬X end.

-record(foo, { id :: binary() }).
-record(foo, { id ∷ binary() }).

X >= Y.
X ≥ Y.

X =< Y.
X ≤ Y.

X =:= Y.
X ≡ Y.

X =/= Y.
X ≢ Y.

X andalso Y.
X ∧ Y.

X orelse Y.
X ∨ Y.
