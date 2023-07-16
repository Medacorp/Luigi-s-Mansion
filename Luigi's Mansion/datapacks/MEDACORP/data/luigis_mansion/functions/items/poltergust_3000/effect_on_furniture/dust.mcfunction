tag @s[tag=searchable_by_dust] add in_dust
tag @s[tag=shaken_by_dust,tag=!rolling] add shake
execute if entity @s[tag=searchable_by_dust,tag=swinging] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/swing_push
execute if entity @s[tag=searchable_by_dust,tag=swirling] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/swirl