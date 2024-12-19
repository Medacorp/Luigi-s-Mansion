function #luigis_mansion:other/music/cannot_overwrite/warped_by_boos
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/warped_by_boos
tag @s remove cancel