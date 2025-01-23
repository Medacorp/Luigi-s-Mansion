function #luigis_mansion:other/music/cannot_overwrite/area_clear
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/area_clear_skip_intro
tag @s remove cancel