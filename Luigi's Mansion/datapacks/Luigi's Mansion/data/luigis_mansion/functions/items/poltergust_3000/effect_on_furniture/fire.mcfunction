function luigis_mansion:items/poltergust_3000/effect_on_furniture/root
tag @s[tag=hit] add in_fire
execute if entity @s[tag=hit,tag=swinging] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/swing_push