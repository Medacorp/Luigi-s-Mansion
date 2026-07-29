function #luigis_mansion:other/music/cannot_overwrite/title_screen
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/title_screen
tag @s remove cancel