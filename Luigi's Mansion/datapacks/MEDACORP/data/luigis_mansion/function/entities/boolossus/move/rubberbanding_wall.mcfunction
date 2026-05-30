tag @s remove wall
execute rotated ~ 0 unless block ^ ^ ^0.6 #luigis_mansion:all_ignore unless block ^ ^1 ^0.6 #luigis_mansion:all_ignore unless block ^ ^1 ^0.6 #luigis_mansion:all_ignore unless block ^ ^3 ^0.6 #luigis_mansion:all_ignore unless block ^ ^4 ^0.6 #luigis_mansion:all_ignore unless block ^ ^5 ^0.6 #luigis_mansion:all_ignore unless block ^ ^6 ^0.6 #luigis_mansion:all_ignore run tag @s add wall
teleport @s ^ ^ ^0.01
execute positioned as @s[tag=wall] run function luigis_mansion:entities/boolossus/move/rubberbanding_wall