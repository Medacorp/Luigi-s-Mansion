function #luigis_mansion:other/music/cannot_overwrite/king_boo_battle
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/king_boo_battle_skip_intro
tag @s remove cancel