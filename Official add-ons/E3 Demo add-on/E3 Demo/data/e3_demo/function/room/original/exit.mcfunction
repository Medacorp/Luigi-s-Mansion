tag @s remove wall_warp
scoreboard players set @s Room 0
scoreboard players set @s LastRoom 0
function luigis_mansion:other/music/set/silence
scoreboard players set @s LoadedChunks 0
tag @s remove loaded_chunks
execute in minecraft:overworld positioned as @s run teleport @s ~-34 ~91 ~-1