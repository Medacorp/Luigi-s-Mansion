function #luigis_mansion:other/music/cannot_overwrite/split_boolossus
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/split_boolossus
tag @s remove cancel