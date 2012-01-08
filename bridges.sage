# bridges.sage
# data on bridges and tolls
# http://costoftolls.com/Tolls_in_New_York.html
# http://maps.google.com/
# 2012-Jan-07 JH
# Bring up sage in a terminal, then call 
# load "bridges.sage"
#
# Holland Tunnel  12.00 one way, 7
# Lincoln Tunnel  12.00 one way, 2 
# George Washington Bridge 12.00 one way, 8
# Bear Mountain Bridge 1.00, 47
# Mid Hudson Bridge, Highland, NY, 1.00, 82
# Gov. Thomas E. Dewey Thruway bridge over hudson toll part of larger road toll
# Kingston-Rhinecliff Bridge, 1.00 , 102
# Newburgh-Beacon Bridge, 1.00, 67
# Rip Van Winkle Bridge, 1.00, 120
# Tappan Zee Bridge, 5.00 one way, 27
# Verrazano-Narrows Bridge, 13.00 one way, 16
data=[
      [2,6],  # Lincoln Tunnel
      [7,6],  # Holland Tunnel
      [8,6], # George Washington Bridge
      [16,6.5],  # Verrazano-Narrows Bridge
      [27,2.5],   # Tappan Zee Bridge
      [47,1],  # Bear Mountain Bridge
      [67,1],  # Newburgh-Beacon Bridge
      [82,1],  # Mid Hudson Bridge
      [102,1],  # Kingston-Rhinecliff Bridge
      [120,1],  # Rip Van Winkle Bridge
      ]
var('slope,intercept')
model(x) = slope*x+intercept
# use this to find the slope and intercept: find_fit(data,model)
g=points(data)+plot(model(intercept=find_fit(data,model)[0].rhs(),slope=find_fit(data,model)[1].rhs()),(x,0,140),color='red',figsize=3)
g.save("bridges.png")