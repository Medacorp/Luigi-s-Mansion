tag @s add in_water
execute if entity @s[scores={FurnitureElementUp=-2147483648..}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/water_element
tag @s[tag=shaken_by_water,nbt=!{ArmorItems:[{tag:{luigis_mansion:{furniture_type:"rolling"}}}]}] add shake
execute if entity @s[tag=searchable_by_water,nbt={ArmorItems:[{tag:{luigis_mansion:{furniture_type:"swinging"}}}]}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/swing_push
execute if entity @s[tag=searchable_by_water,nbt={ArmorItems:[{tag:{luigis_mansion:{furniture_type:"swirling"}}}]}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/swirl
data modify entity @s ArmorItems[3].tag.luigis_mansion.hit_by.water append value 0
execute store result entity @s ArmorItems[3].tag.luigis_mansion.hit_by.water[-1] int 1 run scoreboard players get #temp ID