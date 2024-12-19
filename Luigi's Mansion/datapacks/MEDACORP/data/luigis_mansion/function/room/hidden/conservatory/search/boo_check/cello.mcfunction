execute unless entity @e[x=661.5,y=11,z=24.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] run function luigis_mansion:room/hidden/conservatory/search/cello
tag @e[x=661.5,y=11,z=24.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn
tag @e[scores={Room=25},tag=cello,limit=1] add open