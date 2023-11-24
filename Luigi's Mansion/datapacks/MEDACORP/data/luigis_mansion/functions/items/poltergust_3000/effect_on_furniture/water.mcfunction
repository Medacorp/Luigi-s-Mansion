tag @s[tag=fire_elemental_source,tag=!elemental_cannot_disable] remove enabled
tag @s[tag=searchable_by_water] add in_water
tag @s[tag=shaken_by_water,tag=!rolling] add shake
execute if entity @s[tag=searchable_by_water,tag=swinging] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/swing_push
execute if entity @s[tag=searchable_by_water,tag=swirling] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/swirl