This syntax file displays unicode characters for some Erlang operators and
built-in functions, turning the following:

```erlang
    A = lists:map(fun (X) -> X end, [1,2,3]),
    B = [1,2,3] =/= A orelse hd(A) >= 5,
    C = not B.
```

into

```erlang
    A = lists:map(λ (X) → X end, [1,2,3]),
    B = [1,2,3] ≢ A ∨ hd(A) ≥ 5,
    C = ¬ B.
```

Screenshot:

<img src="http://hamberg.no/erlend/files/cute_erlang.png" title="Screenshot" />

*This does not – at any point – alter your source code*. It simply uses Vim's
"conceal" feature to “hide” `fun` behind `λ`, etc. Whenever the cursor is at
a line with concealed text, the text will be expanded.

To install, simply put `erlang.vim` in `~/.vim/after/syntax` or use something
like [Pathogen](https://github.com/tpope/vim-pathogen) or
[Vundle](https://github.com/gmarik/vundle) (recommended).

Vim ≥ 7.3 is required.

This plug-in is very much inspired by
<http://github.com/Twinside/vim-haskellConceal>.
