function #luigis_mansion:other/music/cannot_overwrite/collect_area_key
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/collect_area_key
tag @s remove cancel