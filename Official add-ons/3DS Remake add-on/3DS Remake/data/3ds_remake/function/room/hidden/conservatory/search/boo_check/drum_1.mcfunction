execute unless entity @e[x=656.5,y=11,z=-12.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] run function 3ds_remake:room/hidden/conservatory/search/drum_1
tag @e[x=656.5,y=11,z=-12.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn
tag @e[scores={Room=25},tag=drum_1,limit=1] add open