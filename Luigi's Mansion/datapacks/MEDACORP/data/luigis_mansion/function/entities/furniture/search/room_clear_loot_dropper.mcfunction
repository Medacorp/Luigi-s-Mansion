execute rotated ~ 0 run function luigis_mansion:entities/furniture/spawn/contents
tag @s add remove_from_existence
execute if entity @s[tag=drop_loot,tag=play_sound] run playsound luigis_mansion:music.solve_puzzle music @a[tag=same_room] ~ ~ ~ 1000
tag @s remove drop_loot