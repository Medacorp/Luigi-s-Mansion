advancement grant @s only e3_demo:jukebox/lit_room
execute unless entity @s[scores={MusicType=3,MusicGroup=2}] run function luigis_mansion:other/music/set_no_transition
execute unless entity @s[scores={MusicType=3,MusicGroup=2}] run scoreboard players set @s MusicGroup 2
execute unless entity @s[scores={MusicType=3,MusicGroup=2}] run scoreboard players set @s MusicType 3