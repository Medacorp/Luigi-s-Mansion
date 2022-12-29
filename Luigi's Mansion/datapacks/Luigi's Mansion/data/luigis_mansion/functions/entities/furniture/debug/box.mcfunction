summon minecraft:marker ~ ~1.4 ~ {Tags:["temp","remove_from_existence","left_up_forward"]}
summon minecraft:marker ~ ~1.4 ~ {Tags:["temp","remove_from_existence","right_up_forward"]}
summon minecraft:marker ~ ~1.4 ~ {Tags:["temp","remove_from_existence","left_up_backward"]}
summon minecraft:marker ~ ~1.4 ~ {Tags:["temp","remove_from_existence","right_up_backward"]}
summon minecraft:marker ~ ~1.4 ~ {Tags:["temp","remove_from_existence","left_down_forward"]}
summon minecraft:marker ~ ~1.4 ~ {Tags:["temp","remove_from_existence","right_down_forward"]}
summon minecraft:marker ~ ~1.4 ~ {Tags:["temp","remove_from_existence","left_down_backward"]}
summon minecraft:marker ~ ~1.4 ~ {Tags:["temp","remove_from_existence","right_down_backward"]}
scoreboard players operation #temp FurnitureSizeL = @s FurnitureSizeW
scoreboard players operation #temp FurnitureSizeU = @s FurnitureSizeH
scoreboard players operation #temp FurnitureSizeF = @s FurnitureSizeW
scoreboard players operation #temp FurnitureSizeL /= #2 Constants
execute if entity @s[tag=!hanging_furniture,tag=!standing_furniture] run scoreboard players operation #temp FurnitureSizeU /= #2 Constants
scoreboard players operation #temp FurnitureSizeF /= #2 Constants

scoreboard players set #temp2 FurnitureSizeL 0
scoreboard players set #temp2 FurnitureSizeU 0
scoreboard players set #temp2 FurnitureSizeF 0
scoreboard players operation #temp2 FurnitureSizeL = #temp FurnitureSizeL
execute if entity @s[tag=!hanging_furniture] run scoreboard players operation #temp2 FurnitureSizeU = #temp FurnitureSizeU
scoreboard players operation #temp2 FurnitureSizeF = #temp FurnitureSizeF
execute as @e[tag=temp,tag=left_up_forward,limit=1] positioned as @s run function luigis_mansion:entities/furniture/debug/move_box

scoreboard players operation #temp2 FurnitureSizeL -= #temp FurnitureSizeL
execute if entity @s[tag=!hanging_furniture] run scoreboard players operation #temp2 FurnitureSizeU = #temp FurnitureSizeU
scoreboard players operation #temp2 FurnitureSizeF = #temp FurnitureSizeF
execute as @e[tag=temp,tag=right_up_forward,limit=1] positioned as @s run function luigis_mansion:entities/furniture/debug/move_box

scoreboard players operation #temp2 FurnitureSizeL = #temp FurnitureSizeL
execute if entity @s[tag=!hanging_furniture] run scoreboard players operation #temp2 FurnitureSizeU = #temp FurnitureSizeU
scoreboard players operation #temp2 FurnitureSizeF -= #temp FurnitureSizeF
execute as @e[tag=temp,tag=left_up_backward,limit=1] positioned as @s run function luigis_mansion:entities/furniture/debug/move_box

scoreboard players operation #temp2 FurnitureSizeL -= #temp FurnitureSizeL
execute if entity @s[tag=!hanging_furniture] run scoreboard players operation #temp2 FurnitureSizeU = #temp FurnitureSizeU
scoreboard players operation #temp2 FurnitureSizeF -= #temp FurnitureSizeF
execute as @e[tag=temp,tag=right_up_backward,limit=1] positioned as @s run function luigis_mansion:entities/furniture/debug/move_box

scoreboard players operation #temp2 FurnitureSizeL = #temp FurnitureSizeL
execute if entity @s[tag=!standing_furniture] run scoreboard players operation #temp2 FurnitureSizeU -= #temp FurnitureSizeU
scoreboard players operation #temp2 FurnitureSizeF = #temp FurnitureSizeF
execute as @e[tag=temp,tag=left_down_forward,limit=1] positioned as @s run function luigis_mansion:entities/furniture/debug/move_box

scoreboard players operation #temp2 FurnitureSizeL -= #temp FurnitureSizeL
execute if entity @s[tag=!standing_furniture] run scoreboard players operation #temp2 FurnitureSizeU -= #temp FurnitureSizeU
scoreboard players operation #temp2 FurnitureSizeF = #temp FurnitureSizeF
execute as @e[tag=temp,tag=right_down_forward,limit=1] positioned as @s run function luigis_mansion:entities/furniture/debug/move_box

scoreboard players operation #temp2 FurnitureSizeL = #temp FurnitureSizeL
execute if entity @s[tag=!standing_furniture] run scoreboard players operation #temp2 FurnitureSizeU -= #temp FurnitureSizeU
scoreboard players operation #temp2 FurnitureSizeF -= #temp FurnitureSizeF
execute as @e[tag=temp,tag=left_down_backward,limit=1] positioned as @s run function luigis_mansion:entities/furniture/debug/move_box

scoreboard players operation #temp2 FurnitureSizeL -= #temp FurnitureSizeL
execute if entity @s[tag=!standing_furniture] run scoreboard players operation #temp2 FurnitureSizeU -= #temp FurnitureSizeU
scoreboard players operation #temp2 FurnitureSizeF -= #temp FurnitureSizeF
execute as @e[tag=temp,tag=right_down_backward,limit=1] positioned as @s run function luigis_mansion:entities/furniture/debug/move_box

execute at @e[tag=temp] run function luigis_mansion:entities/furniture/debug/highlight
execute at @e[tag=temp,tag=left_up_forward,limit=1] facing entity @e[tag=temp,tag=right_up_forward,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:entities/furniture/debug/highlight_trail
execute at @e[tag=temp,tag=left_up_forward,limit=1] facing entity @e[tag=temp,tag=left_down_forward,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:entities/furniture/debug/highlight_trail
execute at @e[tag=temp,tag=left_up_forward,limit=1] facing entity @e[tag=temp,tag=left_up_backward,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:entities/furniture/debug/highlight_trail
execute at @e[tag=temp,tag=right_down_backward,limit=1] facing entity @e[tag=temp,tag=left_down_backward,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:entities/furniture/debug/highlight_trail
execute at @e[tag=temp,tag=right_down_backward,limit=1] facing entity @e[tag=temp,tag=right_up_backward,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:entities/furniture/debug/highlight_trail
execute at @e[tag=temp,tag=right_down_backward,limit=1] facing entity @e[tag=temp,tag=right_down_forward,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:entities/furniture/debug/highlight_trail
execute at @e[tag=temp,tag=left_down_forward,limit=1] facing entity @e[tag=temp,tag=right_down_forward,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:entities/furniture/debug/highlight_trail
execute at @e[tag=temp,tag=left_down_forward,limit=1] facing entity @e[tag=temp,tag=left_down_backward,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:entities/furniture/debug/highlight_trail
execute at @e[tag=temp,tag=right_up_backward,limit=1] facing entity @e[tag=temp,tag=left_up_backward,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:entities/furniture/debug/highlight_trail
execute at @e[tag=temp,tag=right_up_backward,limit=1] facing entity @e[tag=temp,tag=right_up_forward,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:entities/furniture/debug/highlight_trail
execute at @e[tag=temp,tag=left_up_backward,limit=1] facing entity @e[tag=temp,tag=left_down_backward,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:entities/furniture/debug/highlight_trail
execute at @e[tag=temp,tag=right_up_forward,limit=1] facing entity @e[tag=temp,tag=right_down_forward,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:entities/furniture/debug/highlight_trail

kill @e[tag=temp]

scoreboard players reset #temp FurnitureSizeL
scoreboard players reset #temp FurnitureSizeU
scoreboard players reset #temp FurnitureSizeF
scoreboard players reset #temp2 FurnitureSizeL
scoreboard players reset #temp2 FurnitureSizeU
scoreboard players reset #temp2 FurnitureSizeF