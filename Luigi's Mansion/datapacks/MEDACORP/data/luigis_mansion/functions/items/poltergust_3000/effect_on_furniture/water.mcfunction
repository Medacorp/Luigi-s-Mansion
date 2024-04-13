tag @s add in_water
tag @s[tag=fire_elemental_source,tag=!elemental_cannot_disable] remove enabled
tag @s[tag=shaken_by_water,nbt=!{ArmorItems:[{tag:{luigis_mansion:{furniture_type:"rolling"}}}]}] add shake
execute if entity @s[tag=searchable_by_water,nbt={ArmorItems:[{tag:{luigis_mansion:{furniture_type:"swinging"}}}]}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/swing_push
execute if entity @s[tag=searchable_by_water,nbt={ArmorItems:[{tag:{luigis_mansion:{furniture_type:"swirling"}}}]}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/swirl