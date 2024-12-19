function #luigis_mansion:other/music/cannot_overwrite/talking_ghosts
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/talking_ghosts
tag @s remove cancel