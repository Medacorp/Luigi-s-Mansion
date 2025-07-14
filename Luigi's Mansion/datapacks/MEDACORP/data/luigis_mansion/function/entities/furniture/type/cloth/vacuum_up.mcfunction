execute unless entity @s[tag=!pulled_left,tag=!pulled_right] run scoreboard players remove @s[scores={FurnitureSizeLeft=3..}] FurnitureSizeLeft 2
execute unless entity @s[tag=!pulled_front,tag=!pulled_back] run scoreboard players remove @s[scores={FurnitureSizeForward=3..}] FurnitureSizeForward 2
execute unless entity @s[tag=!pulled_left,tag=!pulled_right] store result score #temp Time run data get entity @s data.default_transformation[0] 10
execute unless entity @s[tag=!pulled_front,tag=!pulled_back] store result score #temp Time run data get entity @s data.default_transformation[10] 10
execute unless entity @s[tag=!pulled_left,tag=!pulled_right] store result entity @s data.default_transformation[0] float 0.1 run scoreboard players remove #temp Time 2
execute unless entity @s[tag=!pulled_front,tag=!pulled_back] store result entity @s data.default_transformation[10] float 0.1 run scoreboard players remove #temp Time 2
execute rotated ~ 0 run teleport @s[tag=pulled_left] ^0.1 ^ ^
execute rotated ~ 0 run teleport @s[tag=pulled_right] ^-0.1 ^ ^
execute rotated ~ 0 run teleport @s[tag=pulled_front] ^ ^ ^0.1
execute rotated ~ 0 run teleport @s[tag=pulled_back] ^ ^ ^-0.1
execute store result score @s PositionX run data get entity @s Pos[0] 10
execute store result score @s PositionY run data get entity @s Pos[1] 10
execute store result score @s PositionZ run data get entity @s Pos[2] 10
execute if score #temp Time matches ..0 run tag @s add remove_from_existence
$execute if score #temp Time matches ..0 as @e[nbt={UUID:$(blocked_furniture)},limit=1] run function luigis_mansion:entities/furniture/search/removed_cloth
execute if score #temp Time matches ..0 run function luigis_mansion:entities/furniture/search/generic
$execute if score #temp Time matches ..0 at @e[tag=vacuuming_me,scores={ID=$(puller)},limit=1] run function luigis_mansion:spawn_entities/vacuumed_cloth
scoreboard players reset #temp Time