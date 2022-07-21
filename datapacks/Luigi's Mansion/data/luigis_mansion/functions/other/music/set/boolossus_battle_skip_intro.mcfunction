function #luigis_mansion:other/music/cannot_overwrite/boolossus_battle
execute if entity @s[tag=!cancel] run function luigis_mansion:other/music/set/force/boolossus_battle_skip_intro
tag @s remove cancel