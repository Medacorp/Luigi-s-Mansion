tag @s add in_vacuum
data modify entity @s[type=minecraft:armor_stand] ArmorItems[3].components."minecraft:custom_data".hit_by.vacuum append from entity @a[tag=me,limit=1] UUID
data modify entity @s[type=minecraft:marker] data.hit_by.vacuum append from entity @a[tag=me,limit=1] UUID

execute if entity @s[tag=in_vacuum,scores={VulnerableTime=1..},tag=!appear,tag=!vanish,tag=!hurt] run data modify storage luigis_mansion:data my_memory.poltergust_latch_on_order append from entity @s UUID