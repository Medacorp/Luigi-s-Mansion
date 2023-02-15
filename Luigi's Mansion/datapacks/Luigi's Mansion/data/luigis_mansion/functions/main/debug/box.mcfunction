summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence","left_up_forward"]}
summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence","right_up_forward"]}
summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence","left_up_backward"]}
summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence","right_up_backward"]}
summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence","left_down_forward"]}
summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence","right_down_forward"]}
summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence","left_down_backward"]}
summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence","right_down_backward"]}
scoreboard players operation #temp FurnitureSizeL = @s EntitySizeW
scoreboard players operation #temp FurnitureSizeU = @s EntitySizeH
scoreboard players operation #temp FurnitureSizeF = @s EntitySizeW
scoreboard players operation #temp EntityYOffset = @s EntityYOffset
scoreboard players operation #temp FurnitureSizeL /= #2 Constants
scoreboard players operation #temp FurnitureSizeU /= #2 Constants
scoreboard players operation #temp FurnitureSizeF /= #2 Constants
scoreboard players operation #temp FurnitureSizeL *= #10 Constants
scoreboard players operation #temp FurnitureSizeU *= #10 Constants
scoreboard players operation #temp FurnitureSizeF *= #10 Constants
scoreboard players operation #temp EntityYOffset *= #10 Constants

scoreboard players set #temp2 FurnitureSizeL 0
scoreboard players operation #temp2 FurnitureSizeU = #temp EntityYOffset
scoreboard players set #temp2 FurnitureSizeF 0
scoreboard players operation #temp2 FurnitureSizeL = #temp FurnitureSizeL
scoreboard players operation #temp2 FurnitureSizeU += #temp FurnitureSizeU
scoreboard players operation #temp2 FurnitureSizeF = #temp FurnitureSizeF
execute as @e[tag=temp,tag=left_up_forward,limit=1] run function luigis_mansion:main/debug/move_box

scoreboard players operation #temp2 FurnitureSizeL -= #temp FurnitureSizeL
scoreboard players operation #temp2 FurnitureSizeU = #temp EntityYOffset
scoreboard players operation #temp2 FurnitureSizeU += #temp FurnitureSizeU
scoreboard players operation #temp2 FurnitureSizeF = #temp FurnitureSizeF
execute as @e[tag=temp,tag=right_up_forward,limit=1] run function luigis_mansion:main/debug/move_box

scoreboard players operation #temp2 FurnitureSizeL = #temp FurnitureSizeL
scoreboard players operation #temp2 FurnitureSizeU = #temp EntityYOffset
scoreboard players operation #temp2 FurnitureSizeU += #temp FurnitureSizeU
scoreboard players operation #temp2 FurnitureSizeF -= #temp FurnitureSizeF
execute as @e[tag=temp,tag=left_up_backward,limit=1] run function luigis_mansion:main/debug/move_box

scoreboard players operation #temp2 FurnitureSizeL -= #temp FurnitureSizeL
scoreboard players operation #temp2 FurnitureSizeU = #temp EntityYOffset
scoreboard players operation #temp2 FurnitureSizeU += #temp FurnitureSizeU
scoreboard players operation #temp2 FurnitureSizeF -= #temp FurnitureSizeF
execute as @e[tag=temp,tag=right_up_backward,limit=1] run function luigis_mansion:main/debug/move_box

scoreboard players operation #temp2 FurnitureSizeL = #temp FurnitureSizeL
scoreboard players operation #temp2 FurnitureSizeU = #temp EntityYOffset
scoreboard players operation #temp2 FurnitureSizeU -= #temp FurnitureSizeU
scoreboard players operation #temp2 FurnitureSizeF = #temp FurnitureSizeF
execute as @e[tag=temp,tag=left_down_forward,limit=1] run function luigis_mansion:main/debug/move_box

scoreboard players operation #temp2 FurnitureSizeL -= #temp FurnitureSizeL
scoreboard players operation #temp2 FurnitureSizeU = #temp EntityYOffset
scoreboard players operation #temp2 FurnitureSizeU -= #temp FurnitureSizeU
scoreboard players operation #temp2 FurnitureSizeF = #temp FurnitureSizeF
execute as @e[tag=temp,tag=right_down_forward,limit=1] run function luigis_mansion:main/debug/move_box

scoreboard players operation #temp2 FurnitureSizeL = #temp FurnitureSizeL
scoreboard players operation #temp2 FurnitureSizeU = #temp EntityYOffset
scoreboard players operation #temp2 FurnitureSizeU -= #temp FurnitureSizeU
scoreboard players operation #temp2 FurnitureSizeF -= #temp FurnitureSizeF
execute as @e[tag=temp,tag=left_down_backward,limit=1] run function luigis_mansion:main/debug/move_box

scoreboard players operation #temp2 FurnitureSizeL -= #temp FurnitureSizeL
scoreboard players operation #temp2 FurnitureSizeU = #temp EntityYOffset
scoreboard players operation #temp2 FurnitureSizeU -= #temp FurnitureSizeU
scoreboard players operation #temp2 FurnitureSizeF -= #temp FurnitureSizeF
execute as @e[tag=temp,tag=right_down_backward,limit=1] run function luigis_mansion:main/debug/move_box

execute at @e[tag=temp] run function luigis_mansion:main/debug/highlight
execute at @e[tag=temp,tag=left_up_forward,limit=1] facing entity @e[tag=temp,tag=right_up_forward,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:main/debug/highlight_trail
execute at @e[tag=temp,tag=left_up_forward,limit=1] facing entity @e[tag=temp,tag=left_down_forward,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:main/debug/highlight_trail
execute at @e[tag=temp,tag=left_up_forward,limit=1] facing entity @e[tag=temp,tag=left_up_backward,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:main/debug/highlight_trail
execute at @e[tag=temp,tag=right_down_backward,limit=1] facing entity @e[tag=temp,tag=left_down_backward,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:main/debug/highlight_trail
execute at @e[tag=temp,tag=right_down_backward,limit=1] facing entity @e[tag=temp,tag=right_up_backward,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:main/debug/highlight_trail
execute at @e[tag=temp,tag=right_down_backward,limit=1] facing entity @e[tag=temp,tag=right_down_forward,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:main/debug/highlight_trail
execute at @e[tag=temp,tag=left_down_forward,limit=1] facing entity @e[tag=temp,tag=right_down_forward,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:main/debug/highlight_trail
execute at @e[tag=temp,tag=left_down_forward,limit=1] facing entity @e[tag=temp,tag=left_down_backward,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:main/debug/highlight_trail
execute at @e[tag=temp,tag=right_up_backward,limit=1] facing entity @e[tag=temp,tag=left_up_backward,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:main/debug/highlight_trail
execute at @e[tag=temp,tag=right_up_backward,limit=1] facing entity @e[tag=temp,tag=right_up_forward,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:main/debug/highlight_trail
execute at @e[tag=temp,tag=left_up_backward,limit=1] facing entity @e[tag=temp,tag=left_down_backward,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:main/debug/highlight_trail
execute at @e[tag=temp,tag=right_up_forward,limit=1] facing entity @e[tag=temp,tag=right_down_forward,limit=1] feet positioned ^ ^ ^0.1 unless entity @e[tag=temp,distance=..0.09,limit=1] run function luigis_mansion:main/debug/highlight_trail

kill @e[tag=temp]

scoreboard players reset #temp EntityYOffset
scoreboard players reset #temp FurnitureSizeL
scoreboard players reset #temp FurnitureSizeU
scoreboard players reset #temp FurnitureSizeF
scoreboard players reset #temp2 FurnitureSizeL
scoreboard players reset #temp2 FurnitureSizeU
scoreboard players reset #temp2 FurnitureSizeF