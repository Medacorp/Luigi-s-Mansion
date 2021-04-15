teleport @s ^ ^ ^-0.05
scoreboard players add #temp Move 1
execute if score #temp Move matches ..-1 positioned as @s run function luigis_mansion:entities/boo/move_pulled