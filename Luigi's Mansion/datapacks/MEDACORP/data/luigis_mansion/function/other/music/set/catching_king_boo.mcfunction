function #luigis_mansion:other/music/cannot_overwrite/catching_king_boo
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/catching_king_boo
tag @s remove cancel