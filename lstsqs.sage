dist = [2, 7, 8, 16, 27, 47, 67, 82, 102, 120]
toll = [6, 6, 6, 6.5, 2.5, 1, 1, 1, 1, 1]
var('a,b,t')
model(t) = a*t+b
data = zip(dist,toll)
fit = find_fit(data, model, solution_dict=True)
model.subs(fit)
p = plot(model.subs(fit), (t,0,120))+points(data,size=25,color='red')
p.save('bridges.pdf')