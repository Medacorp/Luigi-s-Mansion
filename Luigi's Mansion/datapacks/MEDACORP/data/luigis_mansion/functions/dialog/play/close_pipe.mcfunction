scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 1..160 as @a[tag=same_room] run function luigis_mansion:entities/player/animation/set/idle
execute if score #dialog Dialog matches 1 run stopsound @a[tag=same_room] music
execute if score #dialog Dialog matches 1 run scoreboard players set @a[tag=same_room] Music 160
execute if score #dialog Dialog matches 1 run playsound luigis_mansion:music.solve_puzzle music @a[tag=same_room] ~ ~ ~ 10000
execute if score #dialog Dialog matches 31 run playsound luigis_mansion:music.close_pipe music @a[tag=same_room] ~ ~ ~ 10000
execute if score #dialog Dialog matches 161 as @a[tag=same_room] run function luigis_mansion:entities/player/animation/set/none
execute if score #dialog Dialog matches 161 run scoreboard players set #dialog Dialog -1