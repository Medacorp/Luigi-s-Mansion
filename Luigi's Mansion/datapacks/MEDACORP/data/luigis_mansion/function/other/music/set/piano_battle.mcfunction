function #luigis_mansion:other/music/cannot_overwrite/piano_battle
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/piano_battle
tag @s remove cancel