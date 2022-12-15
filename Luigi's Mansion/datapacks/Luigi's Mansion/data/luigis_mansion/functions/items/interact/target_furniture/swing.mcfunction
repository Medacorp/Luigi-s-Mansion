execute at @s positioned ~ ~1.4 ~ facing entity @a[tag=searcher,limit=1] feet rotated ~ 0 run teleport @e[tag=interact,limit=1] ^ ^-1 ^1
execute store result score #interact PosX run data get entity @e[tag=interact,limit=1] Pos[0] 10
execute store result score #interact PosY run data get entity @e[tag=interact,limit=1] Pos[1] 10
execute store result score #interact PosZ run data get entity @e[tag=interact,limit=1] Pos[2] 10
teleport @e[tag=interact,limit=1] ~ ~ ~
function luigis_mansion:items/interact/target_furniture/swing_get_direction
scoreboard players set @s FurnitureXProg 0
execute store result score @s FurnitureXOrigin run data get entity @s Pose.Head[0] 10
scoreboard players operation @s FurnitureXTarget = #temp FurnitureXTarget
scoreboard players reset #temp FurnitureXTarget
scoreboard players set @s FurnitureZProg 0
execute store result score @s FurnitureZOrigin run data get entity @s Pose.Head[2] 10
scoreboard players operation @s FurnitureZTarget = #temp FurnitureZTarget
scoreboard players reset #temp FurnitureZTarget