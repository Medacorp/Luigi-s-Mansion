execute unless block ~ ~1 ~-1 #luigis_mansion:ghosts_ignore unless block ~ ~2 ~-1 #luigis_mansion:ghosts_ignore store result entity @s Rotation[0] float 1 run random value -45..45
execute unless block ~ ~1 ~1 #luigis_mansion:ghosts_ignore unless block ~ ~2 ~1 #luigis_mansion:ghosts_ignore store result entity @s Rotation[0] float 1 run random value 135..225
execute unless block ~1 ~1 ~ #luigis_mansion:ghosts_ignore unless block ~1 ~2 ~ #luigis_mansion:ghosts_ignore store result entity @s Rotation[0] float 1 run random value 45..135
execute unless block ~-1 ~1 ~ #luigis_mansion:ghosts_ignore unless block ~-1 ~2 ~ #luigis_mansion:ghosts_ignore store result entity @s Rotation[0] float 1 run random value -135..-45

execute unless block ~ ~1 ~-1 #luigis_mansion:ghosts_ignore if block ~ ~1 ~1 #luigis_mansion:ghosts_ignore if block ~-1 ~1 ~ #luigis_mansion:ghosts_ignore if block ~1 ~1 ~ #luigis_mansion:ghosts_ignore run function luigis_mansion:old_entities/purple_mouse/randomize/south
execute unless block ~ ~1 ~1 #luigis_mansion:ghosts_ignore if block ~ ~1 ~-1 #luigis_mansion:ghosts_ignore if block ~-1 ~1 ~ #luigis_mansion:ghosts_ignore if block ~1 ~1 ~ #luigis_mansion:ghosts_ignore run function luigis_mansion:old_entities/purple_mouse/randomize/north
execute unless block ~1 ~1 ~ #luigis_mansion:ghosts_ignore if block ~-1 ~1 ~ #luigis_mansion:ghosts_ignore if block ~ ~1 ~1 #luigis_mansion:ghosts_ignore if block ~ ~1 ~-1 #luigis_mansion:ghosts_ignore run function luigis_mansion:old_entities/purple_mouse/randomize/west
execute unless block ~-1 ~1 ~ #luigis_mansion:ghosts_ignore if block ~1 ~1 ~ #luigis_mansion:ghosts_ignore if block ~ ~1 ~1 #luigis_mansion:ghosts_ignore if block ~ ~1 ~-1 #luigis_mansion:ghosts_ignore run function luigis_mansion:old_entities/purple_mouse/randomize/east
tag @s add rotated
tag @s add visible
execute store result score @s HomeRotation run data get entity @s Rotation[0]