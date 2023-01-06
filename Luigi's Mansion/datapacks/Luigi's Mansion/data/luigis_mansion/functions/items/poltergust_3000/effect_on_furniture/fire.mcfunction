tag @s[tag=searchable_by_fire] add in_fire
tag @s[tag=shaken_by_fire,tag=!rolling] add shake
execute if entity @s[tag=searchable_by_fire,tag=swinging] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/swing_push
execute if entity @s[tag=searchable_by_fire,tag=swirling] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/swirl