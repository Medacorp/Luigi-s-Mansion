tag @s add in_vacuum
data modify entity @s[type=minecraft:armor_stand] ArmorItems[3].components."minecraft:custom_data".hit_by.vacuum append from entity @e[tag=me,limit=1] UUID
data modify entity @s[type=minecraft:marker] data.hit_by.vacuum append from entity @e[tag=me,limit=1] UUID
execute if entity @s[scores={VulnerableTime=1..}] run function luigis_mansion:items/poltergust_3000/effect_on_entity/vacuum_latch with entity @s