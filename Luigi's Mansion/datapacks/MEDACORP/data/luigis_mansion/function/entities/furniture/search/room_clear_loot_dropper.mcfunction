execute rotated ~ 0 run function luigis_mansion:entities/furniture/spawn/contents
tag @s add remove_from_existence
execute if entity @s[tag=drop_loot,tag=play_sound] as @a[tag=same_room] run function luigis_mansion:other/music/set/secret_revealed
tag @s remove drop_loot