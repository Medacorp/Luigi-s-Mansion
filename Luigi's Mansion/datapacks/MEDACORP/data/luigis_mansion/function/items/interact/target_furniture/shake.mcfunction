function luigis_mansion:items/interact/target_furniture/root
execute if entity @e[tag=interact,tag=manual,distance=..0.2,tag=long_shake] run tag @s[tag=hit,tag=shaken_by_interact,tag=!no_long_shake_animation] add long_shake
execute if entity @e[tag=interact,tag=manual,distance=..0.2,tag=!long_shake] run tag @s[tag=hit,tag=shaken_by_interact,tag=!no_short_shake_animation] add shake
tag @s remove hit