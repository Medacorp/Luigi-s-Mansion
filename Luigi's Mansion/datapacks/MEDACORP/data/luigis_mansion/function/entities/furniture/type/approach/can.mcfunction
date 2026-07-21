data modify storage luigis_mansion:data macro set value {forward:0f}
execute if entity @s[scores={FurnitureSizeWidth=1..}] run scoreboard players operation #temp Time = @s FurnitureSizeWidth
execute if entity @s[scores={FurnitureSizeForward=1..}] run scoreboard players operation #temp Time = @s FurnitureSizeForward
execute store result storage luigis_mansion:data macro.forward float 0.1 run scoreboard players operation #temp Time /= #2 Constants
execute if entity @s[scores={FurnitureSizeRadius=1..}] store result storage luigis_mansion:data macro.forward float 0.1 run scoreboard players get @s FurnitureSizeRadius
scoreboard players reset #temp Time
execute if data entity @s data.approachable_animation run data modify entity @s data.animation set from entity @s data.approachable_animation
execute if entity @s[scores={AnimationProgress=1..}] positioned ^ ^ ^0.5 run function luigis_mansion:entities/furniture/type/approach/wait with storage luigis_mansion:data macro
execute if entity @s[scores={AnimationProgress=0}] positioned ^ ^ ^0.5 run function luigis_mansion:entities/furniture/type/approach/detect with storage luigis_mansion:data macro