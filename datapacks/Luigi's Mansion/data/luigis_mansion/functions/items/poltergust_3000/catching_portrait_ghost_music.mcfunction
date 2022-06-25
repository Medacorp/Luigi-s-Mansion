function #luigis_mansion:items/poltergust_3000/music_cannot_overwrite
execute if entity @s[tag=!cancel] unless entity @s[scores={MusicGroup=0,MusicType=29}] run function luigis_mansion:other/music/set/catching_portrait_ghost
tag @s remove cancel