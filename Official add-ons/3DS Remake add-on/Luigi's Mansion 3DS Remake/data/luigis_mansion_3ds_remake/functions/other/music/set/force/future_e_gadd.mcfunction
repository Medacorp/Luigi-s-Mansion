execute unless entity @s[scores={MusicType=1,MusicGroup=1}] run function luigis_mansion:other/music/set_no_transition
execute unless entity @s[scores={MusicType=1,MusicGroup=1}] run scoreboard players set @s MusicGroup 1
execute unless entity @s[scores={MusicType=1,MusicGroup=1}] run scoreboard players set @s MusicType 1