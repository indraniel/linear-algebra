# from: http://www.mathgoespop.com/2011/09/moneyball.html
# Math Goes Pop!
#
#   team                  wins    losses  payroll  cost per win
#
# Oakland Athletics	103	59	$40,004,167	$0.388
# Minnesota Twins	94	67	$40,225,000	$0.428
# Montreal Expos	83	79	$38,670,500	$0.466
# Florida Marlins	79	83	$41,979,917	$0.531
# Cincinnati Reds	78	84	$45,050,390	$0.578
# Pittsburgh Pirates	72	89	$42,323,599	$0.588
# Los Angeles Angels	99	63	$61,721,667	$0.624
# Tampa Bay Rays	55	106	$34,380,000	$0.625
# San Diego Padres	66	96	$41,425,000	$0.628
# Chicago White Sox	81	81	$57,052,833	$0.704
# Philadelphia Phillies	80	81	$57,954,999	$0.724
# Houston Astros	84	78	$63,448,417	$0.755
# Kansas City Royals	62	100	$47,257,000	$0.762
# St. Louis Cardinals	97	65	$74,660,875	$0.770
# Colorado Rockies	73	89	$56,851,043	$0.779
# San Francisco Giants	95	66	$78,299,835	$0.824
# Seattle Mariners	93	69	$80,282,668	$0.863
# Milwaukee Brewers	56	106	$50,287,833	$0.898
# Baltimore Orioles	67	95	$60,493,487	$0.903
# Atlanta Braves	101	59	$93,470,367	$0.925
# Toronto Blue Jays	78	84	$76,864,333	$0.985
# Detroit Tigers	55	106	$55,048,000	$1.001
# Los Angeles Dodgers	92	70	$94,850,953	$1.031
# Arizona Diamondbacks	98	64	$102,819,999	$1.049
# Cleveland Indians	74	88	$78,909,449	$1.066
# Chicago Cubs		67	95	$75,690,833	$1.130
# Boston Red Sox	93	69	$108,366,060	$1.165
# New York Yankees	103	58	$125,928,583	$1.223
# New York Mets		75	86	$94,633,593	$1.262
# Texas Rangers		72	90	$105,726,122	$1.468

sal = [40, 40, 39, 42, 45, 42, 62, 34, 41, 57, 58, 63, 47, 75, 57, 78, 80, 50, 60, 93, 77, 55, 95, 103, 79, 76, 108, 126, 95, 106]
wins = [103, 94, 83, 79, 78, 72, 99, 55, 66, 81, 80, 84, 62, 97, 73, 95, 93, 56, 67, 101, 78, 55, 92, 98, 74, 67, 93, 103, 75, 72]
var('a, b, t')
model(t) = a*t+b
data = zip(sal,wins)
fit = find_fit(data, model, solution_dict=True)
model.subs(fit)
p = plot(model.subs(fit),(t,30,130))+points(data,size=25,color='red')
p.save('moneyball.pdf')