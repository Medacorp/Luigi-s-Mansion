function #luigis_mansion:other/music/cannot_overwrite/mansion_rank_medium
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/mansion_rank_medium
tag @s remove cancel