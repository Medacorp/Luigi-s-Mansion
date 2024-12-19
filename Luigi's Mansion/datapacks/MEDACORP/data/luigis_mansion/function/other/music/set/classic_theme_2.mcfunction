function #luigis_mansion:other/music/cannot_overwrite/classic_theme_2
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/classic_theme_2
tag @s remove cancel