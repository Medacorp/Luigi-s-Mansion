scoreboard players set @s Room -1
scoreboard players set @s LoadedChunks 0
tag @s remove loaded_chunks
function luigis_mansion:entities/luigi/move/execute {execute:"in e3_demo:original",teleport:"754 11 9.0 90 0"}