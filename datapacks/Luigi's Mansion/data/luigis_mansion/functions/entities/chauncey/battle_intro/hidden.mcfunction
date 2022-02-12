scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=110}] run teleport @s ~ ~ ~ -90 0
execute if entity @s[scores={Dialog=120}] run playsound luigis_mansion:entity.chauncey.cutscene_scream hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={Dialog=120}] positioned ~-2.5 ~11 ~3.5 run function luigis_mansion:spawn_entities/rocking_horse/intro
execute if entity @s[scores={Dialog=120}] positioned ~-8.5 ~11 ~3.5 run function luigis_mansion:spawn_entities/rocking_horse/intro
execute if entity @s[scores={Dialog=120}] positioned ~-14.5 ~11 ~3.5 run function luigis_mansion:spawn_entities/rocking_horse/intro
execute if entity @s[scores={Dialog=120}] positioned ~-2.5 ~11 ~-3.5 run function luigis_mansion:spawn_entities/rocking_horse/intro
execute if entity @s[scores={Dialog=120}] positioned ~-8.5 ~11 ~-3.5 run function luigis_mansion:spawn_entities/rocking_horse/intro
execute if entity @s[scores={Dialog=120}] positioned ~-14.5 ~11 ~-3.5 run function luigis_mansion:spawn_entities/rocking_horse/intro
execute if entity @s[scores={Dialog=120}] positioned ~-21.5 ~9 ~3.5 run function luigis_mansion:spawn_entities/rocking_horse/intro
execute if entity @s[scores={Dialog=120}] positioned ~-21.5 ~14 ~ run function luigis_mansion:spawn_entities/rocking_horse/intro
execute if entity @s[scores={Dialog=120}] positioned ~-21.5 ~9 ~-3.5 run function luigis_mansion:spawn_entities/rocking_horse/intro
execute if entity @s[scores={Dialog=120}] positioned ~-23.5 ~14 ~5.5 run function luigis_mansion:spawn_entities/rocking_horse/intro
execute if entity @s[scores={Dialog=120}] positioned ~-23.5 ~14 ~-5.5 run function luigis_mansion:spawn_entities/rocking_horse/intro
execute if entity @s[scores={Dialog=120}] positioned ~-29.5 ~9 ~3.5 run function luigis_mansion:spawn_entities/rocking_horse/intro
execute if entity @s[scores={Dialog=120}] positioned ~-29.5 ~9 ~-1.5 run function luigis_mansion:spawn_entities/rocking_horse/intro
execute if entity @s[scores={Dialog=120}] positioned ~-34.5 ~12 ~3.5 run function luigis_mansion:spawn_entities/rocking_horse/intro
execute if entity @s[scores={Dialog=120}] positioned ~-34.5 ~12 ~-1.5 run function luigis_mansion:spawn_entities/rocking_horse/intro
execute if entity @s[scores={Dialog=120}] positioned ~-30.5 ~10 ~1.5 run function luigis_mansion:spawn_entities/rocking_horse/intro
execute if entity @s[scores={Dialog=120}] positioned ~-30.5 ~10 ~-3.5 run function luigis_mansion:spawn_entities/rocking_horse/intro
execute if entity @s[scores={Dialog=120}] run scoreboard players set @e[tag=rocking_horse,tag=intro] Room 73
execute if entity @s[scores={Dialog=140}] as @a[tag=same_room] run function luigis_mansion:entities/player/scare/bash_no_move
execute if entity @s[scores={Dialog=140..629}] run scoreboard players set @a[tag=same_room,scores={ScareTime=20}] ScareTime 21
execute if entity @s[scores={Dialog=330}] run function luigis_mansion:entities/chauncey/turn_visible_big
execute if entity @s[scores={Dialog=330..420}] run teleport @s ~ ~0.1 ~
scoreboard players set @s[scores={Dialog=400}] AnimationProg 0
tag @s[scores={Dialog=400}] add look_down
tag @s[scores={Dialog=440}] remove look_down
tag @s[scores={Dialog=440}] add scream
execute if entity @s[scores={Dialog=440}] run playsound luigis_mansion:entity.chauncey.scream hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={Dialog=460}] run playsound luigis_mansion:entity.chauncey.scream hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={Dialog=480}] run playsound luigis_mansion:entity.chauncey.scream hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={Dialog=500}] run playsound luigis_mansion:entity.chauncey.scream hostile @a[tag=same_room] ~ ~ ~ 3
tag @s[scores={Dialog=520}] remove scream
tag @s[scores={Dialog=520}] add grab_rambler
tag @s[scores={Dialog=540}] remove grab_rambler
tag @s[scores={Dialog=540}] add rambling
tag @s[scores={Dialog=580}] remove rambling
tag @s[scores={Dialog=580}] add wink
tag @s[scores={Dialog=590}] remove wink
tag @s[scores={Dialog=590}] add rambling
tag @s[scores={Dialog=630}] remove rambling
tag @s[scores={Dialog=630}] add attack
tag @s[scores={Dialog=670}] add intro_done
scoreboard players set @s[scores={Dialog=670}] Dialog 0