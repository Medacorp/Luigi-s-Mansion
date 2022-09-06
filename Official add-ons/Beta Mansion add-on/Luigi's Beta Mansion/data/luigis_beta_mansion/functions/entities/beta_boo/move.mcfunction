execute if block ^ ^ ^0.3 #luigis_mansion:ghosts_ignore if block ^ ^1 ^0.3 #luigis_mansion:ghosts_ignore run teleport @s ^ ^ ^0.01
scoreboard players remove #temp Move 1
execute if score #temp Move matches 1.. run function luigis_beta_mansion:entities/beta_boo/move