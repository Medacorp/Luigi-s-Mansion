data modify storage luigis_mansion:data macro set value {forward:0f}
$execute as @e[nbt={UUID:$(search_furniture)}] if entity @s[scores={FurnitureSizeWidth=1..}] run scoreboard players operation #temp Time = @s FurnitureSizeWidth
$execute as @e[nbt={UUID:$(search_furniture)}] if entity @s[scores={FurnitureSizeForward=1..}] run scoreboard players operation #temp Time = @s FurnitureSizeForward
execute store result storage luigis_mansion:data macro.forward float 0.1 run scoreboard players operation #temp Time /= #2 Constants
$execute as @e[nbt={UUID:$(search_furniture)}] if entity @s[scores={FurnitureSizeRadius=1..}] store result storage luigis_mansion:data macro.forward float 0.1 run scoreboard players get @s FurnitureSizeRadius
scoreboard players reset #temp Time
$execute as @e[nbt={UUID:$(search_furniture)}] at @s positioned ^ ^ ^0.5 run function luigis_mansion:entities/furniture/type/approach/wait with storage luigis_mansion:data macro