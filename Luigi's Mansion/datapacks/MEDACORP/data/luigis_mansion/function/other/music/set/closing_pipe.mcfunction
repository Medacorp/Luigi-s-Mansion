function #luigis_mansion:other/music/cannot_overwrite/closing_pipe
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/closing_pipe
tag @s remove cancel