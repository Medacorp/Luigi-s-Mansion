execute if entity @e[tag=vacuuming_me,distance=..7,limit=1] run tag @s[tag=searchable_by_vacuum] add trigger
scoreboard players set #temp Time 64000
scoreboard players operation #temp2 Time = @s FurnitureVacuum
scoreboard players add #temp2 Time 1
scoreboard players operation #temp2 Time *= #100 Constants
scoreboard players operation #temp Time -= #temp2 Time
execute store result storage luigis_mansion:data macro.distance float 0.000015625 run scoreboard players get #temp Time
execute unless entity @s[tag=!remove_from_existence,tag=!dead,tag=!open,tag=!trigger] run function luigis_mansion:entities/furniture/type/dust/remove_blocks with storage luigis_mansion:data macro
scoreboard players add @s[tag=open] FurnitureVacuum 32
execute if entity @s[tag=open] run tag @e[tag=dust_furniture,distance=..3] remove idle_furniture
data modify storage luigis_mansion:data macro set value {distance:1f}
execute if entity @s[tag=trigger,tag=!open] run function luigis_mansion:entities/furniture/type/dust/lower
scoreboard players set #temp Time 64000
scoreboard players operation #temp2 Time = @s FurnitureVacuum
scoreboard players add #temp2 Time 1
scoreboard players operation #temp2 Time *= #100 Constants
scoreboard players operation #temp Time -= #temp2 Time
execute store result storage luigis_mansion:data macro.distance float 0.000015625 run scoreboard players get #temp Time
data modify entity @s transformation.scale[] set from storage luigis_mansion:data macro.distance
execute if score #temp Time matches ..0 run tag @s add remove_from_existence
execute unless score #temp Time matches ..0 run function luigis_mansion:entities/furniture/type/dust/place_blocks with storage luigis_mansion:data macro
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
tag @s[tag=!open,tag=!trigger] add idle_furniture
tag @s[tag=!trigger] add reset_sound
tag @s[tag=trigger] remove trigger
say end