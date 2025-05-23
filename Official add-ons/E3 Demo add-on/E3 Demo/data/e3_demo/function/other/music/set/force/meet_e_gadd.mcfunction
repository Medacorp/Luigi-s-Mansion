advancement grant @s only e3_demo:jukebox/meet_e_gadd
execute unless entity @s[scores={MusicType=-1,MusicGroup=2}] run function luigis_mansion:other/music/reset_progress
execute unless entity @s[scores={MusicType=-1,MusicGroup=2}] run scoreboard players set @s MusicGroup 2
execute unless entity @s[scores={MusicType=-1,MusicGroup=2}] run scoreboard players set @s MusicType -1