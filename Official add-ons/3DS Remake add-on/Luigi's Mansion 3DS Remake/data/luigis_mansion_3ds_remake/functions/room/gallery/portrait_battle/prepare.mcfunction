function luigis_mansion_3ds_remake:room/gallery/portrait_battle/save_current_data
tag @s add portrait_battle
gamemode spectator @a
gamemode adventure @s
scoreboard players set @s LoadedChunks 0
tag @s remove loaded_chunks