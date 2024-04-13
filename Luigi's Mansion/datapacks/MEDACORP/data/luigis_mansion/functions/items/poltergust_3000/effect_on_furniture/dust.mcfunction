tag @s add in_dust
tag @s[tag=shaken_by_dust,nbt=!{ArmorItems:[{tag:{luigis_mansion:{furniture_type:"rolling"}}}]}] add shake
execute if entity @s[tag=searchable_by_dust,nbt={ArmorItems:[{tag:{luigis_mansion:{furniture_type:"swinging"}}}]}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/swing_push
execute if entity @s[tag=searchable_by_dust,nbt={ArmorItems:[{tag:{luigis_mansion:{furniture_type:"swirling"}}}]}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/swirl