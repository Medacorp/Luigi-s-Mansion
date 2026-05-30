function #luigis_mansion:other/music/cannot_overwrite/trick_door
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/trick_door
tag @s remove cancel