function luigis_beta_mansion:items/poltergust_500/effect_on_furniture/root
tag @s[tag=hit] add in_water
execute if entity @s[tag=hit,tag=swinging] run function luigis_beta_mansion:items/poltergust_500/effect_on_furniture/swing_push