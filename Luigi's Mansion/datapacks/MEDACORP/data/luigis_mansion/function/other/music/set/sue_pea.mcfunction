function #luigis_mansion:other/music/cannot_overwrite/sue_pea
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/sue_pea
tag @s remove cancel