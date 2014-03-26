# mile.sage
# Data for mens mile for lstsqs topic
# inside sage run load "mile.sage" and the .pdf appears
year = [1870, 1880, 1890, 1900, 1910, 1920, 1930, 1940, 1950]
secs = [268.8, 264.5, 258.4, 255.6, 255.6, 252.6, 250.4, 246.4, 241.4]
var('a, b, t')
model(t) = a*t+b
data = zip(year, secs)
fit = find_fit(data, model, solution_dict=True)
model.subs(fit)
g=points(data)+plot(model.subs(fit),(t,1860,1960),color='red',figsize=3,fontsize=7,typeset='latex')
g.save("four_minute_mile.pdf")

