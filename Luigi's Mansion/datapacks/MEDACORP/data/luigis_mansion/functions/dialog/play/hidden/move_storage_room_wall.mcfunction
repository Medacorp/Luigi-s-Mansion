scoreboard players add #dialog Dialog 1
execute if score #dialog Dialog matches 1..279 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/idle
execute if score #dialog Dialog matches 1..89 run stopsound @a[tag=same_room] music
execute if score #dialog Dialog matches 1 run scoreboard players set @a[tag=same_room] Music 310
execute if score #dialog Dialog matches 40 run fill 682 11 67 682 12 67 minecraft:air
execute if score #dialog Dialog matches 40..240 run fill 681 11 67 689 17 54 minecraft:air replace minecraft:light
execute if score #dialog Dialog matches 40 run clone 681 11 67 689 17 66 681 11 65 replace move
execute if score #dialog Dialog matches 40 run setblock 682 11 67 minecraft:andesite_stairs[facing=north,shape=straight,half=bottom]
execute if score #dialog Dialog matches 40 run setblock 682 12 66 minecraft:oak_fence[north=true]
execute if score #dialog Dialog matches 80 run setblock 682 12 66 minecraft:air
execute if score #dialog Dialog matches 80 run clone 681 11 66 689 17 65 681 11 64 replace move
execute if score #dialog Dialog matches 80 run setblock 682 11 66 minecraft:oak_slab[type=bottom]
execute if score #dialog Dialog matches 80 run setblock 682 11 67 minecraft:andesite_slab[type=bottom]
execute if score #dialog Dialog matches 90 run playsound luigis_mansion:music.moving_wall music @a[tag=same_room] ~ ~ ~ 10000
execute if score #dialog Dialog matches 100 run clone 681 11 65 689 17 64 681 11 63 replace move
execute if score #dialog Dialog matches 120 run clone 681 11 64 689 17 63 681 11 62 replace move
execute if score #dialog Dialog matches 140 run clone 681 11 63 689 17 62 681 11 61 replace move
execute if score #dialog Dialog matches 160 run clone 681 11 62 689 17 61 681 11 60 replace move
execute if score #dialog Dialog matches 160 run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {moved_wall:1b}
execute if score #dialog Dialog matches 160 run function luigis_mansion:room/hidden/storage_room/load/poster
execute if score #dialog Dialog matches 180 run clone 681 11 61 689 17 60 681 11 59 replace move
execute if score #dialog Dialog matches 200 run clone 681 11 60 689 17 59 681 11 58 replace move
execute if score #dialog Dialog matches 210 run clone 681 11 59 689 17 58 681 11 57 replace move
execute if score #dialog Dialog matches 220 run clone 681 11 58 689 17 57 681 11 56 replace move
execute if score #dialog Dialog matches 230 run clone 681 11 57 689 17 56 681 11 55 replace move
execute if score #dialog Dialog matches 240 run clone 681 11 56 689 17 55 681 11 54 replace move
execute if score #dialog Dialog matches 20 run playsound luigis_mansion:furniture.moving_wall block @a[tag=same_room] 685 11 64 2
execute if score #dialog Dialog matches 280 run playsound luigis_mansion:music.solve_puzzle music @a[tag=same_room] ~ ~ ~ 10000
execute if score #dialog Dialog matches 280 as @a[tag=same_room,tag=!spectator] run function luigis_mansion:entities/player/animation/set/none
execute if score #dialog Dialog matches 280 run scoreboard players set #dialog Dialog -1

#mirror
execute if score #dialog Dialog matches 40 run fill 678 11 67 678 12 67 minecraft:air
execute if score #dialog Dialog matches 40..240 run fill 671 11 67 679 17 54 minecraft:air replace minecraft:light
execute if score #dialog Dialog matches 40 run clone 671 11 67 679 17 66 671 11 65 replace move
execute if score #dialog Dialog matches 40 run setblock 678 11 67 minecraft:andesite_stairs[facing=north,shape=straight,half=bottom]
execute if score #dialog Dialog matches 40 run setblock 678 12 66 minecraft:oak_fence[north=true]
execute if score #dialog Dialog matches 80 run setblock 678 12 66 minecraft:air
execute if score #dialog Dialog matches 80 run clone 671 11 66 679 17 65 671 11 64 replace move
execute if score #dialog Dialog matches 80 run setblock 678 11 66 minecraft:oak_slab[type=bottom]
execute if score #dialog Dialog matches 80 run setblock 678 11 67 minecraft:andesite_slab[type=bottom]
execute if score #dialog Dialog matches 100 run clone 671 11 65 679 17 64 671 11 63 replace move
execute if score #dialog Dialog matches 120 run clone 671 11 64 679 17 63 671 11 62 replace move
execute if score #dialog Dialog matches 140 run clone 671 11 63 679 17 62 671 11 61 replace move
execute if score #dialog Dialog matches 160 run clone 671 11 62 679 17 61 671 11 60 replace move
execute if score #dialog Dialog matches 180 run clone 671 11 61 679 17 60 671 11 59 replace move
execute if score #dialog Dialog matches 200 run clone 671 11 60 679 17 59 671 11 58 replace move
execute if score #dialog Dialog matches 210 run clone 671 11 59 679 17 58 671 11 57 replace move
execute if score #dialog Dialog matches 220 run clone 671 11 58 679 17 57 671 11 56 replace move
execute if score #dialog Dialog matches 230 run clone 671 11 57 679 17 56 671 11 55 replace move
execute if score #dialog Dialog matches 240 run clone 671 11 56 679 17 55 671 11 54 replace move