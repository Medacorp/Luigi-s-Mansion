execute unless entity @e[x=657.5,y=11,z=-14.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] run function luigis_mansion:room/normal/conservatory/search/drum_2
tag @e[x=657.5,y=11,z=-14.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn
tag @e[scores={Room=25},tag=drum_2,limit=1] add open