advancement grant @s only luigis_mansion:jukebox/good_night
execute unless entity @s[scores={MusicType=-4,MusicGroup=0}] run function luigis_mansion:other/music/reset_progress
execute unless entity @s[scores={MusicType=-4,MusicGroup=0}] run scoreboard players set @s MusicGroup 0
execute unless entity @s[scores={MusicType=-4,MusicGroup=0}] run scoreboard players set @s MusicType -4