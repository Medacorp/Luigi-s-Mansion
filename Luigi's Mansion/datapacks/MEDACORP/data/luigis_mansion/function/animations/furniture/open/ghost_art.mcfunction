scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] store result storage luigis_mansion:data macro.room int 1 run scoreboard players get @s Room
execute if entity @s[scores={ActionTime=1}] run function luigis_mansion:animations/furniture/open/ghost_art_dialog with storage luigis_mansion:data macro
summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence"]}
execute store result entity @e[tag=temp,limit=1] Pos[1] double 0.1 run scoreboard players get @s PositionY
scoreboard players operation #temp Time = @s FurnitureContentLeft
scoreboard players operation #temp2 Time = @s FurnitureContentUp
scoreboard players operation #temp3 Time = @s FurnitureContentForward
execute as @e[tag=temp,limit=1] positioned as @s run function luigis_mansion:entities/furniture/spawn/move
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time
scoreboard players reset #temp3 Time
execute if entity @s[scores={ActionTime=10..80}] positioned as @e[tag=temp,limit=1] run particle minecraft:dust{color:16777215,scale:2f} ~ ~ ~ 0.5 0.5 0.5 0 1 normal @a[tag=same_room]
kill @e[tag=temp,limit=1]
execute if entity @s[scores={ActionTime=80}] run tag @s add full_search
execute if entity @s[scores={ActionTime=80}] run tag @s remove idle_furniture
data modify entity @s[scores={ActionTime=80}] equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.open
scoreboard players reset #temp Time
scoreboard players set @s[scores={ActionTime=80}] ActionTime -1