execute positioned ^ ^ ^-0.2 unless entity @a[tag=!spectator,distance=..1.5] positioned as @s run teleport @s ^ ^ ^-0.01
scoreboard players add #temp Move 1
execute if score #temp Move matches ..-1 positioned as @s run function luigis_mansion:entities/boo/move_pulled