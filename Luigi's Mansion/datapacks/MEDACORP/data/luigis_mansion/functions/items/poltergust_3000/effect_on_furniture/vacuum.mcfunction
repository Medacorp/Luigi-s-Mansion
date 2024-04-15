tag @s add in_vacuum
execute if entity @s[scores={FurnitureElementUp=-2147483648..}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/vacuum_element
execute at @s[tag=incense_particle] facing entity @a[tag=me,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=incense_particle] if entity @a[tag=me,limit=1,distance=..1.2] run tag @s add dead
tag @s[tag=shaken_by_vacuum,nbt=!{ArmorItems:[{tag:{luigis_mansion:{furniture_type:"rolling"}}}]}] add shake
execute if entity @s[tag=searchable_by_vacuum,nbt={ArmorItems:[{tag:{luigis_mansion:{furniture_type:"swinging"}}}]}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/swing_pull
execute if entity @s[tag=searchable_by_vacuum,nbt={ArmorItems:[{tag:{luigis_mansion:{furniture_type:"swirling"}}}]}] run function luigis_mansion:items/poltergust_3000/effect_on_furniture/swirl
data modify entity @s ArmorItems[3].tag.luigis_mansion.hit_by.vacuum append value 0
execute store result entity @s ArmorItems[3].tag.luigis_mansion.hit_by.vacuum[-1] int 1 run scoreboard players get #temp ID