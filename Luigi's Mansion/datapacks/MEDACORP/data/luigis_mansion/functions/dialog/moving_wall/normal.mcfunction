scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..279}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/stand_still
execute if entity @s[scores={Dialog=1..89}] run stopsound @a[tag=same_room] music
execute if entity @s[scores={Dialog=1}] run scoreboard players set @a[tag=same_room] Music 310
execute if entity @s[scores={Dialog=40}] run fill 682 11 -52 682 12 -52 minecraft:air
execute if entity @s[scores={Dialog=40..240}] run fill 681 11 -52 689 17 -39 minecraft:air replace minecraft:light
execute if entity @s[scores={Dialog=40}] run clone 681 11 -52 689 17 -51 681 11 -51 replace move
execute if entity @s[scores={Dialog=40}] run setblock 682 11 -52 minecraft:andesite_stairs[facing=south,shape=straight,half=bottom]
execute if entity @s[scores={Dialog=40}] run setblock 682 12 -51 minecraft:oak_fence[south=true]
execute if entity @s[scores={Dialog=80}] run setblock 682 12 -51 minecraft:air
execute if entity @s[scores={Dialog=80}] run clone 681 11 -51 689 17 -50 681 11 -50 replace move
execute if entity @s[scores={Dialog=80}] run setblock 682 11 -51 minecraft:oak_slab[type=bottom]
execute if entity @s[scores={Dialog=80}] run setblock 682 11 -52 minecraft:andesite_slab[type=bottom]
execute if entity @s[scores={Dialog=90}] run playsound luigis_mansion:music.moving_wall music @a[tag=same_room] ~ ~ ~ 10000
execute if entity @s[scores={Dialog=100}] run clone 681 11 -50 689 17 -49 681 11 -49 replace move
execute if entity @s[scores={Dialog=120}] run clone 681 11 -49 689 17 -48 681 11 -48 replace move
execute if entity @s[scores={Dialog=140}] run clone 681 11 -48 689 17 -47 681 11 -47 replace move
execute if entity @s[scores={Dialog=160}] run clone 681 11 -47 689 17 -46 681 11 -46 replace move
execute if entity @s[scores={Dialog=160}] run summon minecraft:item_frame 681 13 -46 {Facing:5b,CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.poster"}',Fixed:1b,Invisible:1b,Silent:1b,Item:{id:"minecraft:filled_map",Count:1b,tag:{map:151}},Tags:["poster"]}
execute if entity @s[scores={Dialog=180}] run clone 681 11 -46 689 17 -45 681 11 -45 replace move
execute if entity @s[scores={Dialog=200}] run clone 681 11 -45 689 17 -44 681 11 -44 replace move
execute if entity @s[scores={Dialog=210}] run clone 681 11 -44 689 17 -43 681 11 -43 replace move
execute if entity @s[scores={Dialog=220}] run clone 681 11 -43 689 17 -42 681 11 -42 replace move
execute if entity @s[scores={Dialog=230}] run clone 681 11 -42 689 17 -41 681 11 -41 replace move
execute if entity @s[scores={Dialog=240}] run clone 681 11 -41 689 17 -40 681 11 -40 replace move
execute if entity @s[scores={Dialog=240}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {moved_wall:1b}
execute if entity @s[scores={Dialog=20}] run playsound luigis_mansion:furniture.moving_wall block @a[tag=same_room] 685 11 -49 2
execute if entity @s[scores={Dialog=280}] run playsound luigis_mansion:music.solve_puzzle music @a[tag=same_room] ~ ~ ~ 10000
execute if entity @s[scores={Dialog=280}] as @a[tag=same_room,tag=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
tag @s[scores={Dialog=280}] remove move_wall

execute if entity @s[scores={Dialog=40}] run fill 678 11 -52 678 12 -52 minecraft:air
execute if entity @s[scores={Dialog=40..240}] run fill 671 11 -52 679 17 -39 minecraft:air replace minecraft:light
execute if entity @s[scores={Dialog=40}] run clone 671 11 -52 679 17 -51 671 11 -51 replace move
execute if entity @s[scores={Dialog=40}] run setblock 678 11 -52 minecraft:andesite_stairs[facing=south,shape=straight,half=bottom]
execute if entity @s[scores={Dialog=40}] run setblock 678 12 -51 minecraft:oak_fence[south=true]
execute if entity @s[scores={Dialog=80}] run setblock 678 12 -51 minecraft:air
execute if entity @s[scores={Dialog=80}] run clone 671 11 -51 679 17 -50 671 11 -50 replace move
execute if entity @s[scores={Dialog=80}] run setblock 678 11 -51 minecraft:oak_slab[type=bottom]
execute if entity @s[scores={Dialog=80}] run setblock 678 11 -52 minecraft:andesite_slab[type=bottom]
execute if entity @s[scores={Dialog=100}] run clone 671 11 -50 679 17 -49 671 11 -49 replace move
execute if entity @s[scores={Dialog=120}] run clone 671 11 -49 679 17 -48 671 11 -48 replace move
execute if entity @s[scores={Dialog=140}] run clone 671 11 -48 679 17 -47 671 11 -47 replace move
execute if entity @s[scores={Dialog=160}] run clone 671 11 -47 679 17 -46 671 11 -46 replace move
execute if entity @s[scores={Dialog=160}] run summon minecraft:item_frame 679 13 -46 {Facing:4b,CustomName:'{"type":"translatable","translate":"luigis_mansion:entity.poster"}',Fixed:1b,Invisible:1b,Silent:1b,Item:{id:"minecraft:filled_map",Count:1b,tag:{map:314}},Tags:["poster"]}
execute if entity @s[scores={Dialog=180}] run clone 671 11 -46 679 17 -45 671 11 -45 replace move
execute if entity @s[scores={Dialog=200}] run clone 671 11 -45 679 17 -44 671 11 -44 replace move
execute if entity @s[scores={Dialog=210}] run clone 671 11 -44 679 17 -43 671 11 -43 replace move
execute if entity @s[scores={Dialog=220}] run clone 671 11 -43 679 17 -42 671 11 -42 replace move
execute if entity @s[scores={Dialog=230}] run clone 671 11 -42 679 17 -41 671 11 -41 replace move
execute if entity @s[scores={Dialog=240}] run clone 671 11 -41 679 17 -40 671 11 -40 replace move

scoreboard players set @s[scores={Dialog=280}] Dialog 0