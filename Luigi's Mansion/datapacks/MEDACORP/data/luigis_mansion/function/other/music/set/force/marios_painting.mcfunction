advancement grant @s only luigis_mansion:jukebox/marios_painting
execute unless entity @s[scores={MusicType=-10,MusicGroup=0}] run function luigis_mansion:other/music/set_no_transition
execute unless entity @s[scores={MusicType=-10,MusicGroup=0}] run scoreboard players set @s MusicGroup 0
execute unless entity @s[scores={MusicType=-10,MusicGroup=0}] run scoreboard players set @s MusicType -10