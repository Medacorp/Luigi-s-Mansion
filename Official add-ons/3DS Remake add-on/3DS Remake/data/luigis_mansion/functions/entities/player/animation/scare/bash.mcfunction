scoreboard players add @s AnimationProgress 1
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence"]}
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[0] double 0.01 run scoreboard players get @s PositionX
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[2] double 0.01 run scoreboard players get @s PositionZ

tag @s[scores={AnimationProgress=1}] add reset_rotation
execute if entity @s[scores={AnimationProgress=1,Health=41..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.scare_bashed.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=1,Health=41..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.scare_bashed.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={AnimationProgress=1,Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.scare_bashed.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=1,Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.scare_bashed.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={AnimationProgress=1},tag=!gooigi] Sound 30
tag @s[scores={AnimationProgress=29..30},tag=!force_moved] remove moved
tag @s[scores={AnimationProgress=29..30}] remove force_moved
tag @s[scores={AnimationProgress=30},tag=!bash_no_move] add moved
execute if entity @s[scores={AnimationProgress=30,Sound=0,Shrunk=0},tag=moved] run playsound luigis_mansion:entity.player.scare_bashed.move player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=30,Sound=0,Shrunk=1..},tag=moved] run playsound luigis_mansion:entity.player.scare_bashed.move player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={AnimationProgress=30,Sound=0},tag=moved] Sound 4
tag @s[scores={AnimationProgress=30},tag=!bash_no_move] add animation_may_move
execute at @s[scores={AnimationProgress=30},tag=!bash_no_move] unless entity @e[type=minecraft:marker,tag=temp,distance=..0.1,limit=1] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 positioned as @e[type=minecraft:marker,tag=temp,limit=1] run teleport @s ^ ^ ^0.1
execute at @s[scores={AnimationProgress=30},tag=!bash_no_move] if entity @e[type=minecraft:marker,tag=temp,distance=..0.1,limit=1] rotated ~ 0 run teleport @s ^ ^ ^-0.1
execute at @s[scores={AnimationProgress=30},tag=!bash_no_move] rotated ~ 0 unless block ^ ^ ^-0.5 #luigis_mansion:players_ignore run function luigis_mansion:entities/player/animation/scare/bash_turn
tag @s[scores={AnimationProgress=31..}] remove animation_may_move
execute if entity @s[scores={AnimationProgress=31,Health=41..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.recover.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=31,Health=41..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.recover.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={AnimationProgress=31,Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.recover.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=31,Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.recover.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={AnimationProgress=31},tag=!gooigi] Sound 20
scoreboard players remove @s[scores={MaxHealthTime=1..,AnimationProgress=30}] AnimationProgress 1

execute at @s if block ~ ~2 ~ #luigis_mansion:players_ignore unless block ~ ~1.9 ~ #luigis_mansion:players_ignore run teleport @s ~ ~-0.16 ~
execute at @s unless block ~ ~ ~ #luigis_mansion:players_ignore if block ~ ~0.1 ~ #luigis_mansion:players_ignore run teleport @s ~ ~0.16 ~
execute at @s unless block ~0.3 ~ ~ #luigis_mansion:players_ignore if block ~ ~ ~ #luigis_mansion:players_ignore run teleport @s ~-0.16 ~ ~
execute at @s unless block ~-0.3 ~ ~ #luigis_mansion:players_ignore if block ~ ~ ~ #luigis_mansion:players_ignore run teleport @s ~0.16 ~ ~
execute at @s unless block ~ ~ ~0.3 #luigis_mansion:players_ignore if block ~ ~ ~ #luigis_mansion:players_ignore run teleport @s ~ ~ ~-0.16
execute at @s unless block ~ ~ ~-0.3 #luigis_mansion:players_ignore if block ~ ~ ~ #luigis_mansion:players_ignore run teleport @s ~ ~ ~0.16
execute at @s unless block ~0.3 ~1 ~ #luigis_mansion:players_ignore if block ~ ~1 ~ #luigis_mansion:players_ignore run teleport @s ~-0.16 ~ ~
execute at @s unless block ~-0.3 ~1 ~ #luigis_mansion:players_ignore if block ~ ~1 ~ #luigis_mansion:players_ignore run teleport @s ~0.16 ~ ~
execute at @s unless block ~ ~1 ~0.3 #luigis_mansion:players_ignore if block ~ ~1 ~ #luigis_mansion:players_ignore run teleport @s ~ ~ ~-0.16
execute at @s unless block ~ ~1 ~-0.3 #luigis_mansion:players_ignore if block ~ ~1 ~ #luigis_mansion:players_ignore run teleport @s ~ ~ ~0.16
tag @s remove new_poltergust_grabbed
tag @s remove poltergust_grabbed
tag @s remove vacuuming_ghost
tag @s add disable_flashlight
tag @s add disable_game_boy_horror
tag @s add disable_interact
tag @s add disable_poltergust
tag @s[scores={AnimationProgress=29}] add disable_second_small_run
tag @s[scores={AnimationProgress=51}] remove reset_rotation
tag @s[scores={AnimationProgress=51}] remove bash_no_move
execute if entity @s[scores={AnimationProgress=51}] run function luigis_mansion:entities/player/animation/set/none