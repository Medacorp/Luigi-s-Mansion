scoreboard players add #dialog Dialog 1

scoreboard players reset @a[tag=same_room,tag=!spectator] WarpTime
execute as @a[tag=same_room,tag=!spectator,tag=game_boy_horror_menu] run function luigis_mansion:selection_menu/game_boy_horror/exit
execute if score #dialog Dialog matches 1..279 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/idle
execute if score #dialog Dialog matches 1..89 run stopsound @a[tag=same_room] music
execute if score #dialog Dialog matches 1 run scoreboard players set @a[tag=same_room] Music 310
execute if score #dialog Dialog matches 40 run fill 682 11 -52 682 12 -52 minecraft:air
execute if score #dialog Dialog matches 40..240 run fill 681 11 -52 689 17 -39 minecraft:air replace minecraft:light
execute if score #dialog Dialog matches 40 run clone 681 11 -52 689 17 -51 681 11 -51 replace move
execute if score #dialog Dialog matches 40 run setblock 682 11 -52 minecraft:andesite_stairs[facing=south,shape=straight,half=bottom]
execute if score #dialog Dialog matches 40 run setblock 682 12 -51 minecraft:oak_fence[south=true]
execute if score #dialog Dialog matches 80 run setblock 682 12 -51 minecraft:air
execute if score #dialog Dialog matches 80 run clone 681 11 -51 689 17 -50 681 11 -50 replace move
execute if score #dialog Dialog matches 80 run setblock 682 11 -51 minecraft:oak_slab[type=bottom]
execute if score #dialog Dialog matches 80 run setblock 682 11 -52 minecraft:andesite_slab[type=bottom]
execute if score #dialog Dialog matches 90 run playsound luigis_mansion:music.moving_wall music @a[tag=same_room] ~ ~ ~ 10000
execute if score #dialog Dialog matches 100 run clone 681 11 -50 689 17 -49 681 11 -49 replace move
execute if score #dialog Dialog matches 120 run clone 681 11 -49 689 17 -48 681 11 -48 replace move
execute if score #dialog Dialog matches 140 run clone 681 11 -48 689 17 -47 681 11 -47 replace move
execute if score #dialog Dialog matches 160 run clone 681 11 -47 689 17 -46 681 11 -46 replace move
execute if score #dialog Dialog matches 160 run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {moved_wall:1b}
execute if score #dialog Dialog matches 160 run function luigis_mansion:room/normal/storage_room/load/poster
execute if score #dialog Dialog matches 180 run clone 681 11 -46 689 17 -45 681 11 -45 replace move
execute if score #dialog Dialog matches 200 run clone 681 11 -45 689 17 -44 681 11 -44 replace move
execute if score #dialog Dialog matches 210 run clone 681 11 -44 689 17 -43 681 11 -43 replace move
execute if score #dialog Dialog matches 220 run clone 681 11 -43 689 17 -42 681 11 -42 replace move
execute if score #dialog Dialog matches 230 run clone 681 11 -42 689 17 -41 681 11 -41 replace move
execute if score #dialog Dialog matches 240 run clone 681 11 -41 689 17 -40 681 11 -40 replace move
execute if score #dialog Dialog matches 20 run playsound luigis_mansion:furniture.moving_wall block @a[tag=same_room] 685 11 -49 2
execute if score #dialog Dialog matches 280 run playsound luigis_mansion:music.solve_puzzle music @a[tag=same_room] ~ ~ ~ 10000
execute if score #dialog Dialog matches 280 as @e[tag=luigi,tag=same_room] run function luigis_mansion:entities/luigi/animation/set/none
execute if score #dialog Dialog matches 280 run scoreboard players set #dialog Dialog -1

#mirror
execute if score #dialog Dialog matches 40 run fill 678 11 -52 678 12 -52 minecraft:air
execute if score #dialog Dialog matches 40..240 run fill 671 11 -52 679 17 -39 minecraft:air replace minecraft:light
execute if score #dialog Dialog matches 40 run clone 671 11 -52 679 17 -51 671 11 -51 replace move
execute if score #dialog Dialog matches 40 run setblock 678 11 -52 minecraft:andesite_stairs[facing=south,shape=straight,half=bottom]
execute if score #dialog Dialog matches 40 run setblock 678 12 -51 minecraft:oak_fence[south=true]
execute if score #dialog Dialog matches 80 run setblock 678 12 -51 minecraft:air
execute if score #dialog Dialog matches 80 run clone 671 11 -51 679 17 -50 671 11 -50 replace move
execute if score #dialog Dialog matches 80 run setblock 678 11 -51 minecraft:oak_slab[type=bottom]
execute if score #dialog Dialog matches 80 run setblock 678 11 -52 minecraft:andesite_slab[type=bottom]
execute if score #dialog Dialog matches 100 run clone 671 11 -50 679 17 -49 671 11 -49 replace move
execute if score #dialog Dialog matches 120 run clone 671 11 -49 679 17 -48 671 11 -48 replace move
execute if score #dialog Dialog matches 140 run clone 671 11 -48 679 17 -47 671 11 -47 replace move
execute if score #dialog Dialog matches 160 run clone 671 11 -47 679 17 -46 671 11 -46 replace move
execute if score #dialog Dialog matches 180 run clone 671 11 -46 679 17 -45 671 11 -45 replace move
execute if score #dialog Dialog matches 200 run clone 671 11 -45 679 17 -44 671 11 -44 replace move
execute if score #dialog Dialog matches 210 run clone 671 11 -44 679 17 -43 671 11 -43 replace move
execute if score #dialog Dialog matches 220 run clone 671 11 -43 679 17 -42 671 11 -42 replace move
execute if score #dialog Dialog matches 230 run clone 671 11 -42 679 17 -41 671 11 -41 replace move
execute if score #dialog Dialog matches 240 run clone 671 11 -41 679 17 -40 671 11 -40 replace move

execute if score #dialog Dialog matches 280 run scoreboard players set #dialog Dialog 0