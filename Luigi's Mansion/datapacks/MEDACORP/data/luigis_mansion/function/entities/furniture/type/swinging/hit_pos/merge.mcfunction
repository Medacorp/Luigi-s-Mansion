execute if entity @s[scores={FurnitureSizeForward=1..}] run teleport @s ^ ^ ^0.1
execute if entity @s[scores={FurnitureSizeForward=..-1}] run teleport @s ^ ^ ^-0.1
scoreboard players remove @s[scores={FurnitureSizeForward=1..}] FurnitureSizeForward 1
scoreboard players add @s[scores={FurnitureSizeForward=..-1}] FurnitureSizeForward 1
execute at @s unless entity @s[scores={FurnitureSizeForward=0}] run function luigis_mansion:entities/furniture/type/swinging/hit_pos/merge