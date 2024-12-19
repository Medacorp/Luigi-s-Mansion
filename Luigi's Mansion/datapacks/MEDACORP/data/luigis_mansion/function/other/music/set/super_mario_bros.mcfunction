function #luigis_mansion:other/music/cannot_overwrite/super_mario_bros
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/super_mario_bros
tag @s remove cancel