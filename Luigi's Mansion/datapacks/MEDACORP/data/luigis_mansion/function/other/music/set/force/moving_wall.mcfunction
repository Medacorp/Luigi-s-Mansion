advancement grant @s only luigis_mansion:jukebox/moving_wall
execute unless entity @s[scores={MusicType=-5,MusicGroup=0}] run function luigis_mansion:other/music/moving_wall
execute unless entity @s[scores={MusicType=-5,MusicGroup=0}] run scoreboard players set @s MusicGroup 0
execute unless entity @s[scores={MusicType=-5,MusicGroup=0}] run scoreboard players set @s MusicType -5