# code gauss_method.sage
# Show Gauss's method and Gauss-Jordan reduction steps. 
# 2012-Apr-20  Jim Hefferon  Public Domain. 

# Naive Gaussian reduction
def gauss_method(M,rescale_leading_entry=False):
    """Describe the reduction to echelon form of the given matrix of 
    rationals.

    M  matrix of rationals   e.g., M = matrix(QQ, [[..], [..], ..])
    rescale_leading_entry=False  boolean  make leading entries to 1's

    Returns: None.  Side effect: M is reduced.  Note that this is 
    echelon form, not reduced echelon form;, and that this routine 
    does not end the same way as does M.echelon_form().

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
                print " take",factor,"times row",row+1,  \
                      "plus row",changed_row+1 
                M.add_multiple_of_row(changed_row,row,factor)
        if change_flag:
            print M
        col +=1

# Naive Gauss-Jordan reduction
def gauss_jordan(M):
    """Describe the reduction to reduced echelon form of the 
    given matrix of rationals.

    M  matrix of rationals   e.g., M = matrix(QQ, [[..], [..], ..])

    Returns: None.  Side effect: M is reduced.

    """
    gauss_method(M,rescale_leading_entry=False)
    # Get list of leading entries [le in row 0, le in row1, ..]
    pivot_list=M.pivots()
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
        change_flag=False
        for changed_row in range(0,row):
            if M[changed_row,col] != 0:
                change_flag=True
                factor=-1*M[changed_row][col]/M[row][col]
                print " take",factor,"times row",   \
                      row+1,"plus row",changed_row+1 
                M.add_multiple_of_row(changed_row,row,factor)
        if change_flag:
            print M


    