function #luigis_mansion:other/music/cannot_overwrite/observatory_moon
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/observatory_moon
tag @s remove cancel