# code gauss_method.sage
# Show Gauss's method and Gauss-Jordan reduction steps.  Pedagogical.  Intended
# for _Linear Algebra_ http://joshua.smcvt.edu/linearalgebra .
# 2012-Apr-20  Jim Hefferon jhefferon @s mcvt. edu  Written.  Public Domain. 

# Some linear algebra functions for reference in reading this code (p. 4952-ish)
# M = matrix(QQ, [[..], [..], ..])  
#   Creates the matrix of rationals
# M.rescale_row(i, s, start_col=0)
#   Replace i-th row of self by s times i-th row of self.
# M.add_multiple_of_row(i, j, s, start_col=0)
#   Add s times row j to row i
# M.swap_rows(r1, r2)
#   Swap rows r1 and r2 of self
# M.echelon_form()  
#   Produces the reduced echelon form
# M.nonzero_positions_in_column(i)
#   Return a sorted list of the integers j such that self[j,i] is nonzero
# M.nonzero_positions_in_row(i)
#   Return the integers j such that self[i,j] is nonzero
# M.nrows(), M.ncols()
#   Return the number of rows or columns of this matrix.

# Naive Gaussian reduction
def gauss_method(M,rescale_leading_entry=False):
    """Describe the reduction to echelon form of the given matrix of rationals.

    M  matrix of rationals   e.g., M = matrix(QQ, [[..], [..], ..])
    rescale_leading_entry=False  boolean  make the leading entries to 1's

    Returns: None.  Side effect: M is reduced.  Note: this is echelon form, 
    not reduced echelon form; this routine does not end the same way as does 
    M.echelon_form().

    """
    num_rows=M.nrows()
    num_cols=M.ncols()
    print M    

    col = 0   # all cols before this are already done
    for row in range(0,num_rows): 
        # ?Need to swap in a nonzero entry from below
        while (col < num_cols
               and M[row][col] == 0): 
	    for i in M.nonzero_positions_in_column(col):
	        if i > row:
                    print " swap row",row+1,"with row",i+1
		    M.swap_rows(row,i)
                    print M
                    break     
            else:
                col += 1

	if col >= num_cols:
            break
       
        # Now guaranteed M[row][col] != 0
        if (rescale_leading_entry
           and M[row][col] != 1):
            print " take",1/M[row][col],"times row",row+1
            M.rescale_row(row,1/M[row][col])
	    print M
        change_flag=False
        for changed_row in range(row+1,num_rows):
            if M[changed_row][col] != 0:
                change_flag=True
                factor=-1*M[changed_row][col]/M[row][col]
                print " take",factor,"times row",row+1,"plus row",changed_row+1 
                M.add_multiple_of_row(changed_row,row,factor)
        if change_flag:
            print M
        col +=1

# Naive Gauss-Jordan reduction
def gauss_jordan(M):
    """Describe the reduction to reduced echelon form of the given matrix of 
    rationals.

    M  matrix of rationals   e.g., M = matrix(QQ, [[..], [..], ..])

    Returns: None.  Side effect: M is reduced.

    """
    gauss_method(M,rescale_leading_entry=False)
    # Get list of leading entries [le in row 0, le in row1, ..]
    pivot_list=M.pivots()
    # print "pivot_list",pivot_list
    # Rescale leading entries
    change_flag=False
    for row in range(0,len(pivot_list)):
        col=pivot_list[row]
        if M[row][col] != 1:
            change_flag=True
            print " take",1/M[row][col],"times row",row+1
            M.rescale_row(row,1/M[row][col])
    if change_flag:
        print M    
    # Pivot
    for row in range(len(pivot_list)-1,-1,-1):
        col=pivot_list[row]
        # print "    row=",row,"col",col
        change_flag=False
        for changed_row in range(0,row):
            # print "    changed row=",changed_row
            if M[changed_row,col] != 0:
                change_flag=True
                factor=-1*M[changed_row][col]/M[row][col]
                print " take",factor,"times row",row+1,"plus row",changed_row+1 
                M.add_multiple_of_row(changed_row,row,factor)
        if change_flag:
            print M

M = matrix(QQ, [[1/2, 1, 4, -2], [2, 4, -1, 5], [1, 2, 0, 4]])
M1 = matrix(QQ, [[0, 0, 0, 0], [0, 0, 0, 0], [2, 4, -1, 5], [1, 2, 0, 4]]) 
M2 = matrix(QQ, [[1, 2, 3, 4], [1, 2, 3, 4], [2, 4, -1, 5], [1, 2, 0, 4]]) 
M3 = matrix(QQ, [[4]])
M4 = matrix(QQ, [[2,3,4], [4,6,8], [6,9,12]])


    