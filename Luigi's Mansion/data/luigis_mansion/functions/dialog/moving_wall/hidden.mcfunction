scoreboard players add @s Time 1
execute if entity @s[scores={Time=1..89}] run stopsound @a[scores={Room=14}] music
execute if entity @s[scores={Time=1}] run scoreboard players set @a[scores={Room=14}] Music 310
execute if entity @s[scores={Time=40}] run fill 674 102 39 674 103 39 minecraft:air
execute if entity @s[scores={Time=40}] run clone 673 102 39 681 108 38 673 102 37 replace move
execute if entity @s[scores={Time=40}] run setblock 674 102 39 minecraft:andesite_stairs[facing=north,shape=straight,half=bottom]
execute if entity @s[scores={Time=40}] run setblock 674 103 38 minecraft:oak_fence[north=true]
execute if entity @s[scores={Time=80}] run setblock 674 103 38 minecraft:air
execute if entity @s[scores={Time=80}] run clone 673 102 38 681 108 37 673 102 36 replace move
execute if entity @s[scores={Time=80}] run setblock 674 102 38 minecraft:oak_slab[type=bottom]
execute if entity @s[scores={Time=80}] run setblock 674 102 39 minecraft:andesite_slab[type=bottom]
execute if entity @s[scores={Time=90}] run playsound luigis_mansion:music.moving_wall music @a[scores={Room=14}] ~ ~ ~ 10000
execute if entity @s[scores={Time=100}] run clone 673 102 37 681 108 36 673 102 35 replace move
execute if entity @s[scores={Time=120}] run clone 673 102 36 681 108 35 673 102 34 replace move
execute if entity @s[scores={Time=140}] run clone 673 102 35 681 108 34 673 102 33 replace move
execute if entity @s[scores={Time=160}] run clone 673 102 34 681 108 33 673 102 32 replace move
execute if entity @s[scores={Time=160}] run summon minecraft:item_frame 673 104 33 {Facing:5b,CustomName:'{"translate":"luigis_mansion:entity.poster"}',Fixed:1b,Invisible:1b,Silent:1b,Item:{id:"minecraft:filled_map",Count:1b,tag:{map:314}},Tags:["poster"]}
execute if entity @s[scores={Time=180}] run clone 673 102 33 681 108 32 673 102 31 replace move
execute if entity @s[scores={Time=200}] run clone 673 102 32 681 108 31 673 102 30 replace move
execute if entity @s[scores={Time=210}] run clone 673 102 31 681 108 30 673 102 29 replace move
execute if entity @s[scores={Time=220}] run clone 673 102 30 681 108 29 673 102 28 replace move
execute if entity @s[scores={Time=230}] run clone 673 102 29 681 108 28 673 102 27 replace move
execute if entity @s[scores={Time=240}] run clone 673 102 28 681 108 27 673 102 26 replace move
execute if entity @s[scores={Time=240}] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {moved_wall:1b}
execute if entity @s[scores={Time=280}] run playsound luigis_mansion:music.solve_puzzle music @a[scores={Room=14}] ~ ~ ~ 10000
teleport @s[x=681.5,y=102,z=51.5,distance=..1.5] ~-1.5 ~ ~
tag @s[scores={Time=280}] remove move_wall
scoreboard players reset @s[scores={Time=280}] Time