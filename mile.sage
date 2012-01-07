# mile.sage
# Data for mens mile for lstsqs topic
# inside sage run load "mile.sage" and the .png appears
data=[[1870,268.8], 
      [1880,264.5], 
      [1890,258.4], 
      [1900,255.6],  
      [1910,255.6], 
      [1920,252.6], 
      [1930,250.4], 
      [1940,246.4], 
      [1950,241.4]]
var('slope,intercept')
model(x) = slope*x+intercept
g=points(data)+plot(model(intercept=find_fit(data,model)[0].rhs(),slope=find_fit(data,model)[1].rhs()),(x,1860,1960),color='red',figsize=3)
g.save("four_minute_mile.png")