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
syntax match erlNiceOperator "=<" conceal cchar=≤
syntax match erlNiceOperator ">=" conceal cchar=≥

syntax keyword erlangConditional not conceal cchar=¬
syntax keyword erlNiceConditional orelse conceal cchar=∨
syntax keyword erlNiceConditional andalso conceal cchar=∧

syntax keyword erlNiceKeyword fun conceal cchar=λ

hi link erlNiceOperator Operator
hi link erlNiceConditional erlangConditional
hi link erlNiceKeyword Keyword
hi! link Conceal Operator

setlocal conceallevel=1
