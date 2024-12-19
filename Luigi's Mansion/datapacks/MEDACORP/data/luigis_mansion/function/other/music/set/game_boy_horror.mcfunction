function #luigis_mansion:other/music/cannot_overwrite/game_boy_horror
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/game_boy_horror
tag @s remove cancel