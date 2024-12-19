tag @s[tag=spawn] add visible
execute if entity @s[tag=spawn] as @a[tag=same_room] run function luigis_mansion:other/music/set/secret_revealed
tag @s[tag=spawn] remove spawn