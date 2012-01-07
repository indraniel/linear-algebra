# currency.sage
# data for line of best fit topic
# inside sage, say 
# load "currency.sage"
# (A.transpose()*A).inverse()*A.transpose()*v
A = Matrix([[1, 1], 
            [1, 5],
            [1, 10],
            [1, 20],
            [1, 50],
            [1, 100]])
v = vector([22.0, 
            15.9, 
            18.3, 
            24.3, 
            55.4, 
            88.8])