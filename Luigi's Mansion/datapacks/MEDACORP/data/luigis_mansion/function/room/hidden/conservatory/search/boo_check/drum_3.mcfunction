execute unless entity @e[x=656.5,y=11,z=32.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] run function luigis_mansion:room/hidden/conservatory/search/drum_3
tag @e[x=656.5,y=11,z=32.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn
tag @e[scores={Room=25},tag=drum_3,limit=1] add open