function #luigis_mansion:other/music/cannot_overwrite/title_menu
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/title_menu
tag @s remove cancel