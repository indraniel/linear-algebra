# code for one_1.tex
# M = matrix(QQ, [[], []])  creates the matrix of rationals
# M.rescale_row(n,a)  does:  -- a\rho_n -->  
# M.add_multiple_of_row(n,m,a)  does -- a\rho_m+\rho_n -->
# M.swap_rows(n,m)  does --\rho_n\leftrightarrow\rho_m --> 
# M.echelon_form()  produces the echelon form
M = matrix(QQ, [[1/2, 1, 4, -2], [2, 4, -1, 5], [1, 2, 0, 4]]); print M
print "-- 2\\rho_1 -->"; M.rescale_row(2,1); print M
