tag @s remove extinguish
tag @s remove burning
execute if entity @s[tag=!fake] run stopsound @a[tag=same_room] block luigis_mansion:block.door.burn
execute if entity @s[tag=!fake] run playsound luigis_mansion:music.solve_puzzle music @a[tag=same_room] ~ ~ ~ 1000
execute if entity @s[tag=!fake] run scoreboard players set @a[tag=same_room] Music 30
particle minecraft:large_smoke ~ ~ ~ 0.2 0 0.2 0 4 normal @a[tag=same_room]