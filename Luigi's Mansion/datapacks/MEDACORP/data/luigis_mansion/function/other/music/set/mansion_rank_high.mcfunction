function #luigis_mansion:other/music/cannot_overwrite/mansion_rank_high
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/mansion_rank_high
tag @s remove cancel