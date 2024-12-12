scoreboard players add #dialog Dialog 1

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 1..160 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle_no_poltergust
execute if score #dialog Dialog matches 1 run stopsound @a[tag=same_room] music
execute if score #dialog Dialog matches 1 run scoreboard players set @a[tag=same_room] Music 160
execute if score #dialog Dialog matches 1 run playsound luigis_mansion:music.solve_puzzle music @a[tag=same_room] ~ ~ ~ 10000
execute if score #dialog Dialog matches 31 run playsound luigis_mansion:music.close_pipe music @a[tag=same_room] ~ ~ ~ 10000
execute if score #dialog Dialog matches 161 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 161 run scoreboard players set #dialog Dialog -1