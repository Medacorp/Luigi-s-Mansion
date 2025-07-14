execute if entity @s[distance=4..] run scoreboard players add #temp FurnitureSearch 1
$execute if entity @s[distance=4..] run function luigis_mansion:entities/luigi/move/execute {execute:"positioned as @s rotated ~ 0 positioned ^ ^ ^0.2 facing $(facing_x) $(facing_y) $(facing_z)",teleport:"~ ~ ~ ~ ~"}
execute if entity @s[distance=..4] run function luigis_mansion:entities/luigi/move/execute {execute:"positioned as @s",teleport:"~ ~ ~ ~ ~"}
scoreboard players remove @s TeleportDelay 1
execute unless entity @s[distance=..4] if entity @s[scores={TeleportDelay=0..}] run function luigis_mansion:entities/furniture/type/cloth/teleport with storage luigis_mansion:data macro