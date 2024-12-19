function #luigis_mansion:other/music/cannot_overwrite/secret_altar
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/secret_altar
tag @s remove cancel