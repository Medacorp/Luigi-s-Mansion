execute unless entity @e[x=661.5,y=11,z=-15.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] run function luigis_mansion:room/normal/conservatory/search/xylophone
tag @e[x=661.5,y=11,z=-15.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn
tag @e[scores={Room=25},tag=xylophone,limit=1] add open