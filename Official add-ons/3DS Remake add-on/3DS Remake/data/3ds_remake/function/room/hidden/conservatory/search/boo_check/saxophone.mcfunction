execute unless entity @e[x=658.5,y=11,z=-3.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] run function 3ds_remake:room/hidden/conservatory/search/saxophone
tag @e[x=658.5,y=11,z=-3.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn
tag @e[scores={Room=25},tag=saxophone,limit=1] add open