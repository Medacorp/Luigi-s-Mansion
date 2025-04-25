execute unless block ^ ^ ^-0.6 #luigis_mansion:all_ignore unless block ^ ^ ^-0.6 #minecraft:slabs[type=bottom] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^0.2"}
execute positioned as @s unless block ~0.4 ~ ~ #luigis_mansion:all_ignore unless block ~0.4 ~ ~ #minecraft:slabs[type=bottom] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~-0.2 ~ ~"}
execute positioned as @s unless block ~-0.4 ~ ~ #luigis_mansion:all_ignore unless block ~-0.4 ~ ~ #minecraft:slabs[type=bottom] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~0.2 ~ ~"}
execute positioned as @s unless block ~ ~ ~0.4 #luigis_mansion:all_ignore unless block ~ ~ ~0.4 #minecraft:slabs[type=bottom] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~ ~-0.2"}
execute positioned as @s unless block ~ ~ ~-0.4 #luigis_mansion:all_ignore unless block ~ ~ ~-0.4 #minecraft:slabs[type=bottom] run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~ ~0.2"}
execute positioned as @s unless block ^ ^1 ^-0.6 #luigis_mansion:all_ignore run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^0.2"}
execute positioned as @s unless block ~0.4 ~1 ~ #luigis_mansion:all_ignore run function luigis_mansion:entities/luigi/move/teleport {teleport:"~-0.2 ~ ~"}
execute positioned as @s unless block ~-0.4 ~1 ~ #luigis_mansion:all_ignore run function luigis_mansion:entities/luigi/move/teleport {teleport:"~0.2 ~ ~"}
execute positioned as @s unless block ~ ~1 ~0.4 #luigis_mansion:all_ignore run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~ ~-0.2"}
execute positioned as @s unless block ~ ~1 ~-0.4 #luigis_mansion:all_ignore run function luigis_mansion:entities/luigi/move/teleport {teleport:"~ ~ ~0.2"}
function luigis_mansion:items/poltergust_3000/vacuuming/sound