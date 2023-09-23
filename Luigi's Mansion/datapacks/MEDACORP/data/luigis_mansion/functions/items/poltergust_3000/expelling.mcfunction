scoreboard players operation #temp Room = @s Room
scoreboard players operation #temp ID = @s ID
execute store result storage luigis_mansion:data macro.id int 1 run scoreboard players get #temp ID
execute if entity @s[scores={MirrorX=-2147483648..}] run scoreboard players operation #temp MirrorX = @s MirrorX
execute if entity @s[scores={MirrorZ=-2147483648..}] run scoreboard players operation #temp MirrorZ = @s MirrorZ
tag @s add me
tag @s remove vacuuming
summon minecraft:marker ~ ~ ~ {Tags:["interact","poltergust"]}
function luigis_mansion:entities/player/memory/get with entity @s
execute if data storage luigis_mansion:data my_memory{poltergust_element:"none"} run tag @e[tag=interact,limit=1] add dust
execute if data storage luigis_mansion:data my_memory{poltergust_element:"none"} run function luigis_mansion:items/poltergust_3000/expel_dust
execute if data storage luigis_mansion:data my_memory{poltergust_element:"none"} run tag @s add expelling_dust
execute if data storage luigis_mansion:data my_memory{poltergust_element:"fire"} run tag @e[tag=interact,limit=1] add fire
execute if data storage luigis_mansion:data my_memory{poltergust_element:"fire"} unless entity @s[scores={SneakTime=1..20}] run function luigis_mansion:items/poltergust_3000/expel_fire
execute if data storage luigis_mansion:data my_memory{poltergust_element:"fire"} if entity @s[scores={SneakTime=1}] run function luigis_mansion:items/poltergust_3000/shoot_fire
execute if data storage luigis_mansion:data my_memory{poltergust_element:"fire"} run tag @s add expelling_fire
execute if data storage luigis_mansion:data my_memory{poltergust_element:"water"} run tag @e[tag=interact,limit=1] add water
execute if data storage luigis_mansion:data my_memory{poltergust_element:"water"} unless entity @s[scores={SneakTime=1..20}] run function luigis_mansion:items/poltergust_3000/expel_water
execute if data storage luigis_mansion:data my_memory{poltergust_element:"water"} if entity @s[scores={SneakTime=1}] run function luigis_mansion:items/poltergust_3000/shoot_water
execute if data storage luigis_mansion:data my_memory{poltergust_element:"water"} run tag @s add expelling_water
execute if data storage luigis_mansion:data my_memory{poltergust_element:"ice"} run tag @e[tag=interact,limit=1] add ice
execute if data storage luigis_mansion:data my_memory{poltergust_element:"ice"} unless entity @s[scores={SneakTime=1..20}] run function luigis_mansion:items/poltergust_3000/expel_ice
execute if data storage luigis_mansion:data my_memory{poltergust_element:"ice"} if entity @s[scores={SneakTime=1}] run function luigis_mansion:items/poltergust_3000/shoot_ice
execute if data storage luigis_mansion:data my_memory{poltergust_element:"ice"} run tag @s add expelling_ice
execute unless entity @s[scores={SneakTime=1..20}] unless data storage luigis_mansion:data my_memory{poltergust_element:"none"} run function luigis_mansion:items/poltergust_3000/reduce_element
execute if entity @s[scores={SneakTime=1}] unless data storage luigis_mansion:data my_memory{poltergust_element:"none"} run function luigis_mansion:items/poltergust_3000/reduce_element_shoot
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory
kill @e[type=minecraft:marker,tag=interact,limit=1]
tag @e[tag=hit_by_poltergust] remove hit_by_poltergust
scoreboard players reset #temp MirrorX
scoreboard players reset #temp MirrorZ
scoreboard players reset #temp Room
scoreboard players reset #temp ID
scoreboard players reset #interact
tag @s remove me