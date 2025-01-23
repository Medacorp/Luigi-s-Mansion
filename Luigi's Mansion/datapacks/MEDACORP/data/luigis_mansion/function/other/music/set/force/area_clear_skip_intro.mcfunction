advancement grant @s only luigis_mansion:jukebox/area_clear
execute unless entity @s[scores={MusicType=14,MusicGroup=0}] run function luigis_mansion:other/music/set_no_transition
execute unless entity @s[scores={MusicType=14,MusicGroup=0}] run scoreboard players set @s PreviousMusicType 14
execute unless entity @s[scores={MusicType=14,MusicGroup=0}] run scoreboard players set @s MusicGroup 0
execute unless entity @s[scores={MusicType=14,MusicGroup=0}] run scoreboard players set @s MusicType 14