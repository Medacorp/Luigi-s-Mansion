forceload add 720 8
forceload add 761 -4
forceload add 787 15
forceload add 771 7 768 4
execute if loaded 768 89 4 run fill 768 89 11 771 94 4 minecraft:air
execute if loaded 768 89 4 run place template luigis_mansion:gate/closed 768 89 4
execute unless loaded 768 89 4 run schedule function luigis_mansion:room/exterior/reset/unload 1
execute if loaded 768 89 4 run forceload remove 771 7 768 4
execute unless loaded 720 102 7 run scoreboard players set #temp Time 1
execute unless loaded 761 99 -4 run scoreboard players set #temp Time 1
execute unless loaded 787 90 15 run scoreboard players set #temp Time 1
execute unless loaded 768 89 4 run scoreboard players set #temp Time 1
execute unless score #exterior Ticking matches 1 run scoreboard players reset #temp Time
execute if score #temp Time matches 1 run schedule function luigis_mansion:room/exterior/reset 1
execute unless score #temp Time matches 1 run forceload remove 720 8
execute unless score #temp Time matches 1 run forceload remove 761 -4
execute unless score #temp Time matches 1 run forceload remove 787 15
execute unless score #temp Time matches 1 run forceload remove 771 7 768 4
scoreboard players reset #temp Time