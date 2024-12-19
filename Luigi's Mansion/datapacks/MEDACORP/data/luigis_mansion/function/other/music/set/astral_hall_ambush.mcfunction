function #luigis_mansion:other/music/cannot_overwrite/astral_hall_ambush
execute if entity @s[tag=!cancel,scores={MusicType=0..}] run function luigis_mansion:other/music/set/force/astral_hall_ambush
tag @s remove cancel