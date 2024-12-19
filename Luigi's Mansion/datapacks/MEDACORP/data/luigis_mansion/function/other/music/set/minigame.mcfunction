function #luigis_mansion:other/music/cannot_overwrite/minigame
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/minigame
tag @s remove cancel