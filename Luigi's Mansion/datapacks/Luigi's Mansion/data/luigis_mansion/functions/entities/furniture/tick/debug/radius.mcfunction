summon minecraft:marker ~ ~1.4 ~ {Tags:["temp","remove_from_existence","front"]}
summon minecraft:marker ~ ~1.4 ~ {Tags:["temp","remove_from_existence","back"]}
summon minecraft:marker ~ ~1.4 ~ {Tags:["temp","remove_from_existence","left"]}
summon minecraft:marker ~ ~1.4 ~ {Tags:["temp","remove_from_existence","right"]}
summon minecraft:marker ~ ~1.4 ~ {Tags:["temp","remove_from_existence","up"]}
summon minecraft:marker ~ ~1.4 ~ {Tags:["temp","remove_from_existence","down"]}
scoreboard players operation #temp FurnitureRadius = @s FurnitureRadius

scoreboard players set #temp2 FurnitureSizeL 0
scoreboard players set #temp2 FurnitureSizeU 0
scoreboard players set #temp2 FurnitureSizeF 0
scoreboard players operation #temp2 FurnitureSizeF = #temp FurnitureRadius
execute if entity @s[tag=hanging_furniture] run scoreboard players operation #temp2 FurnitureSizeU -= #temp FurnitureRadius
execute if entity @s[tag=standing_furniture] run scoreboard players operation #temp2 FurnitureSizeU += #temp FurnitureRadius
execute as @e[tag=temp,tag=front,limit=1] positioned as @s run function luigis_mansion:entities/furniture/tick/debug/move_radius

scoreboard players operation #temp2 FurnitureSizeF -= #temp FurnitureRadius
execute if entity @s[tag=hanging_furniture] run scoreboard players operation #temp2 FurnitureSizeU -= #temp FurnitureRadius
execute if entity @s[tag=standing_furniture] run scoreboard players operation #temp2 FurnitureSizeU += #temp FurnitureRadius
execute as @e[tag=temp,tag=back,limit=1] positioned as @s run function luigis_mansion:entities/furniture/tick/debug/move_radius

scoreboard players operation #temp2 FurnitureSizeL = #temp FurnitureRadius
execute if entity @s[tag=hanging_furniture] run scoreboard players operation #temp2 FurnitureSizeU -= #temp FurnitureRadius
execute if entity @s[tag=standing_furniture] run scoreboard players operation #temp2 FurnitureSizeU += #temp FurnitureRadius
execute as @e[tag=temp,tag=left,limit=1] positioned as @s run function luigis_mansion:entities/furniture/tick/debug/move_radius

scoreboard players operation #temp2 FurnitureSizeL -= #temp FurnitureRadius
execute if entity @s[tag=hanging_furniture] run scoreboard players operation #temp2 FurnitureSizeU -= #temp FurnitureRadius
execute if entity @s[tag=standing_furniture] run scoreboard players operation #temp2 FurnitureSizeU += #temp FurnitureRadius
execute as @e[tag=temp,tag=right,limit=1] positioned as @s run function luigis_mansion:entities/furniture/tick/debug/move_radius

scoreboard players operation #temp2 FurnitureSizeU = #temp FurnitureRadius
execute if entity @s[tag=hanging_furniture] run scoreboard players operation #temp2 FurnitureSizeU -= #temp FurnitureRadius
execute if entity @s[tag=standing_furniture] run scoreboard players operation #temp2 FurnitureSizeU += #temp FurnitureRadius
execute as @e[tag=temp,tag=up,limit=1] positioned as @s run function luigis_mansion:entities/furniture/tick/debug/move_radius

scoreboard players operation #temp2 FurnitureSizeU -= #temp FurnitureRadius
execute if entity @s[tag=hanging_furniture] run scoreboard players operation #temp2 FurnitureSizeU -= #temp FurnitureRadius
execute if entity @s[tag=standing_furniture] run scoreboard players operation #temp2 FurnitureSizeU += #temp FurnitureRadius
execute as @e[tag=temp,tag=down,limit=1] positioned as @s run function luigis_mansion:entities/furniture/tick/debug/move_radius

execute at @e[tag=temp] run function luigis_mansion:entities/furniture/tick/debug/highlight
execute at @e[tag=temp,tag=front,limit=1] facing entity @e[tag=temp,tag=left,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:entities/furniture/tick/debug/highlight_trail
execute at @e[tag=temp,tag=front,limit=1] facing entity @e[tag=temp,tag=right,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:entities/furniture/tick/debug/highlight_trail
execute at @e[tag=temp,tag=front,limit=1] facing entity @e[tag=temp,tag=up,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:entities/furniture/tick/debug/highlight_trail
execute at @e[tag=temp,tag=front,limit=1] facing entity @e[tag=temp,tag=down,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:entities/furniture/tick/debug/highlight_trail
execute at @e[tag=temp,tag=back,limit=1] facing entity @e[tag=temp,tag=left,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:entities/furniture/tick/debug/highlight_trail
execute at @e[tag=temp,tag=back,limit=1] facing entity @e[tag=temp,tag=right,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:entities/furniture/tick/debug/highlight_trail
execute at @e[tag=temp,tag=back,limit=1] facing entity @e[tag=temp,tag=up,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:entities/furniture/tick/debug/highlight_trail
execute at @e[tag=temp,tag=back,limit=1] facing entity @e[tag=temp,tag=down,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:entities/furniture/tick/debug/highlight_trail
execute at @e[tag=temp,tag=left,limit=1] facing entity @e[tag=temp,tag=up,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:entities/furniture/tick/debug/highlight_trail
execute at @e[tag=temp,tag=left,limit=1] facing entity @e[tag=temp,tag=down,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:entities/furniture/tick/debug/highlight_trail
execute at @e[tag=temp,tag=right,limit=1] facing entity @e[tag=temp,tag=up,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:entities/furniture/tick/debug/highlight_trail
execute at @e[tag=temp,tag=right,limit=1] facing entity @e[tag=temp,tag=down,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:entities/furniture/tick/debug/highlight_trail

kill @e[tag=temp]

scoreboard players reset #temp FurnitureRadius
scoreboard players reset #temp2 FurnitureSizeL
scoreboard players reset #temp2 FurnitureSizeU
scoreboard players reset #temp2 FurnitureSizeF