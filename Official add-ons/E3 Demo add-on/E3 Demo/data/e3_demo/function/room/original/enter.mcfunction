tag @s remove wall_warp
scoreboard players set @s Room -1
scoreboard players set @s LoadedChunks 0
tag @s remove loaded_chunks
execute in e3_demo:original run teleport @s 754 11 9.0 90 0