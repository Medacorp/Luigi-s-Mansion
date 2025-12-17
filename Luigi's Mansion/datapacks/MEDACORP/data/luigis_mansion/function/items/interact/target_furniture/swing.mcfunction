execute at @s positioned ~ ~1.43875 ~ facing entity @e[tag=searcher,limit=1] feet rotated ~ 0 run teleport @e[tag=interact,limit=1] ^ ^-1 ^1
execute store result score #interact PositionX run data get entity @e[tag=interact,limit=1] Pos[0] 10
execute store result score #interact PositionY run data get entity @e[tag=interact,limit=1] Pos[1] 10
execute store result score #interact PositionZ run data get entity @e[tag=interact,limit=1] Pos[2] 10
teleport @e[tag=interact,limit=1] ~ ~ ~
function luigis_mansion:items/interact/target_furniture/swing_get_direction
scoreboard players set @s FurnitureXProgress 0
execute if entity @s[tag=inverted_swing] run scoreboard players operation #temp FurnitureXTarget *= #-1 Constants
execute store result score @s FurnitureXOrigin run data get entity @s Pose.Head[0] 10
scoreboard players operation @s FurnitureXTarget = #temp FurnitureXTarget
scoreboard players reset #temp FurnitureXTarget
scoreboard players set @s FurnitureZProgress 0
execute if entity @s[tag=inverted_swing] run scoreboard players operation #temp FurnitureZTarget *= #-1 Constants
execute store result score @s FurnitureZOrigin run data get entity @s Pose.Head[2] 10
scoreboard players operation @s FurnitureZTarget = #temp FurnitureZTarget
scoreboard players reset #temp FurnitureZTarget