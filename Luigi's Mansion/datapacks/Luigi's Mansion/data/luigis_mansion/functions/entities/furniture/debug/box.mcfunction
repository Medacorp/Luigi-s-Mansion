summon minecraft:marker ~ ~1.4 ~ {Tags:["temp","remove_from_existence","left_up_forward"]}
summon minecraft:marker ~ ~1.4 ~ {Tags:["temp","remove_from_existence","right_up_forward"]}
summon minecraft:marker ~ ~1.4 ~ {Tags:["temp","remove_from_existence","left_up_backward"]}
summon minecraft:marker ~ ~1.4 ~ {Tags:["temp","remove_from_existence","right_up_backward"]}
summon minecraft:marker ~ ~1.4 ~ {Tags:["temp","remove_from_existence","left_down_forward"]}
summon minecraft:marker ~ ~1.4 ~ {Tags:["temp","remove_from_existence","right_down_forward"]}
summon minecraft:marker ~ ~1.4 ~ {Tags:["temp","remove_from_existence","left_down_backward"]}
summon minecraft:marker ~ ~1.4 ~ {Tags:["temp","remove_from_existence","right_down_backward"]}
scoreboard players operation #temp FurnitureSizeLeft = @s FurnitureSizeWidth
scoreboard players operation #temp FurnitureSizeUp = @s FurnitureSizeHeight
scoreboard players operation #temp FurnitureSizeForward = @s FurnitureSizeWidth
scoreboard players operation #temp FurnitureSizeLeft /= #2 Constants
execute if entity @s[tag=!hanging_furniture,tag=!standing_furniture] run scoreboard players operation #temp FurnitureSizeUp /= #2 Constants
scoreboard players operation #temp FurnitureSizeForward /= #2 Constants
scoreboard players operation #temp FurnitureSizeLeft *= #10 Constants
scoreboard players operation #temp FurnitureSizeUp *= #10 Constants
scoreboard players operation #temp FurnitureSizeForward *= #10 Constants

scoreboard players set #temp2 FurnitureSizeLeft 0
scoreboard players set #temp2 FurnitureSizeUp 0
scoreboard players set #temp2 FurnitureSizeForward 0
scoreboard players operation #temp2 FurnitureSizeLeft = #temp FurnitureSizeLeft
execute if entity @s[tag=!hanging_furniture] run scoreboard players operation #temp2 FurnitureSizeUp = #temp FurnitureSizeUp
scoreboard players operation #temp2 FurnitureSizeForward = #temp FurnitureSizeForward
execute as @e[tag=temp,tag=left_up_forward,limit=1] positioned as @s run function luigis_mansion:entities/furniture/debug/move_box

scoreboard players operation #temp2 FurnitureSizeLeft -= #temp FurnitureSizeLeft
execute if entity @s[tag=!hanging_furniture] run scoreboard players operation #temp2 FurnitureSizeUp = #temp FurnitureSizeUp
scoreboard players operation #temp2 FurnitureSizeForward = #temp FurnitureSizeForward
execute as @e[tag=temp,tag=right_up_forward,limit=1] positioned as @s run function luigis_mansion:entities/furniture/debug/move_box

scoreboard players operation #temp2 FurnitureSizeLeft = #temp FurnitureSizeLeft
execute if entity @s[tag=!hanging_furniture] run scoreboard players operation #temp2 FurnitureSizeUp = #temp FurnitureSizeUp
scoreboard players operation #temp2 FurnitureSizeForward -= #temp FurnitureSizeForward
execute as @e[tag=temp,tag=left_up_backward,limit=1] positioned as @s run function luigis_mansion:entities/furniture/debug/move_box

scoreboard players operation #temp2 FurnitureSizeLeft -= #temp FurnitureSizeLeft
execute if entity @s[tag=!hanging_furniture] run scoreboard players operation #temp2 FurnitureSizeUp = #temp FurnitureSizeUp
scoreboard players operation #temp2 FurnitureSizeForward -= #temp FurnitureSizeForward
execute as @e[tag=temp,tag=right_up_backward,limit=1] positioned as @s run function luigis_mansion:entities/furniture/debug/move_box

scoreboard players operation #temp2 FurnitureSizeLeft = #temp FurnitureSizeLeft
execute if entity @s[tag=!standing_furniture] run scoreboard players operation #temp2 FurnitureSizeUp -= #temp FurnitureSizeUp
scoreboard players operation #temp2 FurnitureSizeForward = #temp FurnitureSizeForward
execute as @e[tag=temp,tag=left_down_forward,limit=1] positioned as @s run function luigis_mansion:entities/furniture/debug/move_box

scoreboard players operation #temp2 FurnitureSizeLeft -= #temp FurnitureSizeLeft
execute if entity @s[tag=!standing_furniture] run scoreboard players operation #temp2 FurnitureSizeUp -= #temp FurnitureSizeUp
scoreboard players operation #temp2 FurnitureSizeForward = #temp FurnitureSizeForward
execute as @e[tag=temp,tag=right_down_forward,limit=1] positioned as @s run function luigis_mansion:entities/furniture/debug/move_box

scoreboard players operation #temp2 FurnitureSizeLeft = #temp FurnitureSizeLeft
execute if entity @s[tag=!standing_furniture] run scoreboard players operation #temp2 FurnitureSizeUp -= #temp FurnitureSizeUp
scoreboard players operation #temp2 FurnitureSizeForward -= #temp FurnitureSizeForward
execute as @e[tag=temp,tag=left_down_backward,limit=1] positioned as @s run function luigis_mansion:entities/furniture/debug/move_box

scoreboard players operation #temp2 FurnitureSizeLeft -= #temp FurnitureSizeLeft
execute if entity @s[tag=!standing_furniture] run scoreboard players operation #temp2 FurnitureSizeUp -= #temp FurnitureSizeUp
scoreboard players operation #temp2 FurnitureSizeForward -= #temp FurnitureSizeForward
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

scoreboard players reset #temp FurnitureSizeLeft
scoreboard players reset #temp FurnitureSizeUp
scoreboard players reset #temp FurnitureSizeForward
scoreboard players reset #temp2 FurnitureSizeLeft
scoreboard players reset #temp2 FurnitureSizeUp
scoreboard players reset #temp2 FurnitureSizeForward