tag @s[tag=spawn] add visible
execute if entity @s[tag=spawn] run playsound luigis_mansion:music.solve_puzzle music @a[tag=same_room] ~ ~ ~ 1000
execute if entity @s[tag=spawn] run scoreboard players set @a[tag=same_room,scores={Music=..29}] Music 30
tag @s[tag=spawn] remove spawn