scoreboard players add #temp PathStep 1
execute as @e[distance=..1,tag=reacts_to_flashlight,tag=!flee,tag=!hurt,tag=!model_piece,tag=same_room] at @s run function 3ds_remake:items/flashlight/effects/flash
execute unless score #temp PathStep matches 5 positioned ^ ^ ^1 if block ~ ~ ~ #luigis_mansion:flashlight_path run function 3ds_remake:items/flashlight/effects/small_flash/path