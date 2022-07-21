scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..279}] as @a[tag=same_room,gamemode=!spectator,scores={IdleTime=0..},tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/stand_still
execute if entity @s[scores={Dialog=1..89}] run stopsound @a[tag=same_room] music
execute if entity @s[scores={Dialog=1}] run scoreboard players set @a[tag=same_room] Music 310
execute if entity @s[scores={Dialog=40}] run fill 682 11 67 682 12 67 minecraft:air
execute if entity @s[scores={Dialog=40..240}] run fill 681 11 67 689 17 54 minecraft:air replace minecraft:light
execute if entity @s[scores={Dialog=40}] run clone 681 11 67 689 17 66 681 11 65 replace move
execute if entity @s[scores={Dialog=40}] run setblock 682 11 67 minecraft:andesite_stairs[facing=north,shape=straight,half=bottom]
execute if entity @s[scores={Dialog=40}] run setblock 682 12 66 minecraft:oak_fence[north=true]
execute if entity @s[scores={Dialog=80}] run setblock 682 12 66 minecraft:air
execute if entity @s[scores={Dialog=80}] run clone 681 11 66 689 17 65 681 11 64 replace move
execute if entity @s[scores={Dialog=80}] run setblock 682 11 66 minecraft:oak_slab[type=bottom]
execute if entity @s[scores={Dialog=80}] run setblock 682 11 67 minecraft:andesite_slab[type=bottom]
execute if entity @s[scores={Dialog=90}] run playsound luigis_mansion:music.moving_wall music @a[tag=same_room] ~ ~ ~ 10000
execute if entity @s[scores={Dialog=100}] run clone 681 11 65 689 17 64 681 11 63 replace move
execute if entity @s[scores={Dialog=120}] run clone 681 11 64 689 17 63 681 11 62 replace move
execute if entity @s[scores={Dialog=140}] run clone 681 11 63 689 17 62 681 11 61 replace move
execute if entity @s[scores={Dialog=160}] run clone 681 11 62 689 17 61 681 11 60 replace move
execute if entity @s[scores={Dialog=160}] run summon minecraft:item_frame 681 13 61 {Facing:5b,CustomName:'{"translate":"luigis_mansion:entity.poster"}',Fixed:1b,Invisible:1b,Silent:1b,Item:{id:"minecraft:filled_map",Count:1b,tag:{map:314}},Tags:["poster"]}
execute if entity @s[scores={Dialog=180}] run clone 681 11 61 689 17 60 681 11 59 replace move
execute if entity @s[scores={Dialog=200}] run clone 681 11 60 689 17 59 681 11 58 replace move
execute if entity @s[scores={Dialog=210}] run clone 681 11 59 689 17 58 681 11 57 replace move
execute if entity @s[scores={Dialog=220}] run clone 681 11 58 689 17 57 681 11 56 replace move
execute if entity @s[scores={Dialog=230}] run clone 681 11 57 689 17 56 681 11 55 replace move
execute if entity @s[scores={Dialog=240}] run clone 681 11 56 689 17 55 681 11 54 replace move
execute if entity @s[scores={Dialog=240}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {moved_wall:1b}
execute if entity @s[scores={Dialog=20}] run playsound luigis_mansion:block.moving_wall block @a[tag=same_room] 685 11 64 2
execute if entity @s[scores={Dialog=280}] run playsound luigis_mansion:music.solve_puzzle music @a[tag=same_room] ~ ~ ~ 10000
execute if entity @s[scores={Dialog=280}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
tag @s[scores={Dialog=280}] remove move_wall

execute if entity @s[scores={Dialog=40}] run fill 678 11 67 678 12 67 minecraft:air
execute if entity @s[scores={Dialog=40..240}] run fill 671 11 67 679 17 54 minecraft:air replace minecraft:light
execute if entity @s[scores={Dialog=40}] run clone 671 11 67 679 17 66 671 11 65 replace move
execute if entity @s[scores={Dialog=40}] run setblock 678 11 67 minecraft:andesite_stairs[facing=north,shape=straight,half=bottom]
execute if entity @s[scores={Dialog=40}] run setblock 678 12 66 minecraft:oak_fence[north=true]
execute if entity @s[scores={Dialog=80}] run setblock 678 12 66 minecraft:air
execute if entity @s[scores={Dialog=80}] run clone 671 11 66 679 17 65 671 11 64 replace move
execute if entity @s[scores={Dialog=80}] run setblock 678 11 66 minecraft:oak_slab[type=bottom]
execute if entity @s[scores={Dialog=80}] run setblock 678 11 67 minecraft:andesite_slab[type=bottom]
execute if entity @s[scores={Dialog=100}] run clone 671 11 65 679 17 64 671 11 63 replace move
execute if entity @s[scores={Dialog=120}] run clone 671 11 64 679 17 63 671 11 62 replace move
execute if entity @s[scores={Dialog=140}] run clone 671 11 63 679 17 62 671 11 61 replace move
execute if entity @s[scores={Dialog=160}] run clone 671 11 62 679 17 61 671 11 60 replace move
execute if entity @s[scores={Dialog=160}] run summon minecraft:item_frame 679 13 61 {Facing:4b,CustomName:'{"translate":"luigis_mansion:entity.poster"}',Fixed:1b,Invisible:1b,Silent:1b,Item:{id:"minecraft:filled_map",Count:1b,tag:{map:151}},Tags:["poster"]}
execute if entity @s[scores={Dialog=180}] run clone 671 11 61 679 17 60 671 11 59 replace move
execute if entity @s[scores={Dialog=200}] run clone 671 11 60 679 17 59 671 11 58 replace move
execute if entity @s[scores={Dialog=210}] run clone 671 11 59 679 17 58 671 11 57 replace move
execute if entity @s[scores={Dialog=220}] run clone 671 11 58 679 17 57 671 11 56 replace move
execute if entity @s[scores={Dialog=230}] run clone 671 11 57 679 17 56 671 11 55 replace move
execute if entity @s[scores={Dialog=240}] run clone 671 11 56 679 17 55 671 11 54 replace move

scoreboard players set @s[scores={Dialog=280}] Dialog 0