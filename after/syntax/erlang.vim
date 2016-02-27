" we need the conceal feature (vim ≥ 7.3)
if !has('conceal')
    finish
endif

syntax match erlNiceOperator "=<" conceal cchar=≤
syntax match erlNiceOperator ">=" conceal cchar=≥
syntax match erlNiceOperator "=:=" conceal cchar=≡
syntax match erlNiceOperator "=/=" conceal cchar=≢
syntax match erlNiceOperator "->" conceal cchar=→
syntax match erlNiceOperator "::" conceal cchar=∷

" include the space after “not” if present – so that “not X” becomes “¬X”.
syntax match erlNiceConditional "\<not\%( \|\>\)" conceal cchar=¬
syntax keyword erlNiceConditional orelse conceal cchar=∨
syntax keyword erlNiceConditional andalso conceal cchar=∧

syntax keyword erlNiceKeyword fun conceal cchar=λ

hi link erlNiceOperator Operator
hi link erlNiceConditional Keyword
hi link erlNiceKeyword Keyword
hi! link Conceal Operator

setlocal conceallevel=1
