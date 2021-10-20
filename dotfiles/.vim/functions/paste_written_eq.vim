vsp ~/Downloads/Equation.tex
let line=getline('.')
q!
silent !rm ~/Downloads/Equation.tex 
call append('.', line)
redraw!
