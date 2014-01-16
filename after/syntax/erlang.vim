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

syntax keyword erlNiceKeyword not conceal cchar=¬
syntax keyword erlNiceKeyword fun conceal cchar=λ
syntax keyword erlNiceKeyword orelse conceal cchar=∨
syntax keyword erlNiceKeyword andalso conceal cchar=∧

hi link erlNiceOperator Operator
hi link erlNiceKeyword Keyword
hi! link Conceal Operator

setlocal conceallevel=1
