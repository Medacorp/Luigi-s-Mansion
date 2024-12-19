function #luigis_mansion:other/music/cannot_overwrite/observatory_path
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/observatory_path
tag @s remove cancel