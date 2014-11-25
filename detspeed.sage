# detspeed.sage; graph the speed of determinant calcuation
# run as: sage detspeed.sage it produces detspeed.pdf
# 2014-Nov-25 JH
rows = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
secs = [0.016, 0.081, 0.248, 0.556, 1.054, 1.779, 2.760, 4.106, 5.811, 7.869]
data = zip(rows, secs)
g = scatter_plot(data, markersize=5, facecolor='white', edgecolor='black', marker='o', figsize=2.5, fontsize=7, typeset='latex')
g.save("detspeed.pdf")
