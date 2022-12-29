execute if entity @s[scores={FurnitureSizeF=1..}] run teleport @s ^ ^ ^0.1
execute if entity @s[scores={FurnitureSizeF=..-1}] run teleport @s ^ ^ ^-0.1
scoreboard players remove @s[scores={FurnitureSizeF=1..}] FurnitureSizeF 1
scoreboard players add @s[scores={FurnitureSizeF=..-1}] FurnitureSizeF 1
execute at @s unless entity @s[scores={FurnitureSizeF=0}] run function luigis_mansion:entities/furniture/type/tick/swinging/hit_pos/merge