function #luigis_mansion:other/music/cannot_overwrite/king_boo
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/king_boo
tag @s remove cancel