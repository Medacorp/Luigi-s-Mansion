advancement grant @s only luigis_mansion:jukebox/lit_room
execute unless entity @s[scores={MusicType=6..9,MusicGroup=0}] unless entity @s[scores={MusicType=41,MusicGroup=0}] run function luigis_mansion:other/music/set_health_transition
execute unless entity @s[scores={MusicType=9,MusicGroup=0}] run scoreboard players set @s MusicGroup 0
execute unless entity @s[scores={MusicType=9,MusicGroup=0}] run scoreboard players set @s MusicType 9