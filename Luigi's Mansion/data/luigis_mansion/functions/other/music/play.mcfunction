stopsound @s music
execute unless score @s MusicType = @s PrevMusicType run function luigis_mansion:other/music/play/intro
execute if score @s MusicType = @s PrevMusicType run function luigis_mansion:other/music/play/loop
scoreboard players operation @s PrevMusicType = @s MusicType
execute if entity @s[scores={MusicType=0}] if block ~ ~-1 ~ minecraft:mycelium run function luigis_mansion:other/music/set/boo_woods
