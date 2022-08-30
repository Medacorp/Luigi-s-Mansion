execute at @s facing entity @a[tag=searcher,limit=1] feet rotated ~ 0 run teleport @e[tag=interact,limit=1] ^ ^-1 ^1
function luigis_mansion:items/interact/target_furniture/swing_get_x
scoreboard players operation #temp FurnitureXTarget *= #-1 Constants
scoreboard players set @s FurnitureXProg 0
execute store result score @s FurnitureXOrigin run data get entity @s Pose.Head[0] 10
scoreboard players operation @s FurnitureXTarget = #temp FurnitureXTarget
scoreboard players reset #temp FurnitureXTarget
execute at @s facing entity @a[tag=searcher,limit=1] feet rotated ~ 0 run teleport @e[tag=interact,limit=1] ^ ^-1 ^1
function luigis_mansion:items/interact/target_furniture/swing_get_z
scoreboard players operation #temp FurnitureZTarget *= #-1 Constants
scoreboard players set @s FurnitureZProg 0
execute store result score @s FurnitureZOrigin run data get entity @s Pose.Head[2] 10
scoreboard players operation @s FurnitureZTarget = #temp FurnitureZTarget
scoreboard players reset #temp FurnitureZTarget
execute positioned as @s run teleport @s ~ ~ ~ 0 0