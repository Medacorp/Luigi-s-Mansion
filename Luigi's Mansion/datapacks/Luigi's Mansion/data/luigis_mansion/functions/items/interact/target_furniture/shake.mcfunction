function luigis_mansion:items/interact/target_furniture/root
execute if entity @e[tag=interact,tag=manual,distance=..0.2,tag=long_shake] run tag @s[tag=hit] add long_shake
execute if entity @e[tag=interact,tag=manual,distance=..0.2,tag=!long_shake] run tag @s[tag=hit] add shake
tag @s remove hit