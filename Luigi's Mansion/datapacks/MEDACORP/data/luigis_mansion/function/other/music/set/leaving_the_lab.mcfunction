function #luigis_mansion:other/music/cannot_overwrite/leaving_the_lab
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/leaving_the_lab
tag @s remove cancel