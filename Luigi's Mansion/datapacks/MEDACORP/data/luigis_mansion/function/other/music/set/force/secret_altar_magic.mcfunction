advancement grant @s only luigis_mansion:jukebox/secret_altar_magic
execute unless entity @s[scores={MusicType=-16,MusicGroup=0}] run function luigis_mansion:other/music/reset_progress
execute unless entity @s[scores={MusicType=-16,MusicGroup=0}] run scoreboard players set @s MusicGroup 0
execute unless entity @s[scores={MusicType=-16,MusicGroup=0}] run scoreboard players set @s MusicType -16