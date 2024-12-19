function #luigis_mansion:other/music/cannot_overwrite/collect_item
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/collect_item
tag @s remove cancel