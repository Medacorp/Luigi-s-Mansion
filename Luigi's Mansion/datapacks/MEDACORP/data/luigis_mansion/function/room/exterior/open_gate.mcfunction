forceload add 771 7 768 4
execute if loaded 768 89 4 if score #exterior Ticking matches 1 run fill 768 89 11 771 94 4 minecraft:air
execute if loaded 768 89 4 if score #exterior Ticking matches 1 run place template luigis_mansion:gate/open 768 89 4
execute unless loaded 768 89 4 if score #exterior Ticking matches 1 run schedule function luigis_mansion:room/exterior/open_gate 1
execute if loaded 768 89 4 run forceload remove 771 7 768 4
execute unless score #exterior Ticking matches 1 run forceload remove 771 7 768 4