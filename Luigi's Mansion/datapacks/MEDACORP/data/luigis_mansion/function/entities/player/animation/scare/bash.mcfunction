scoreboard players add @s AnimationProgress 1
execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["temp","remove_from_existence"]}
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[0] double 0.01 run scoreboard players get @s PositionX
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[1] double 0.01 run scoreboard players get @s PositionY
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[2] double 0.01 run scoreboard players get @s PositionZ

tag @s[scores={AnimationProgress=1}] add reset_rotation
execute if entity @s[scores={AnimationProgress=1,Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.scare_bashed.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=1,Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.scare_bashed.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={AnimationProgress=1,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.scare_bashed.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=1,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.scare_bashed.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={AnimationProgress=1}] Sound 30
tag @s[scores={AnimationProgress=29..30},tag=!force_moved] remove moved
tag @s[scores={AnimationProgress=29..30}] remove force_moved
tag @s[scores={AnimationProgress=30},tag=!bash_no_move] add moved
execute if entity @s[scores={AnimationProgress=30,Sound=0,Shrunk=0},tag=moved] run playsound luigis_mansion:entity.player.scare_bashed.move player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=30,Sound=0,Shrunk=1..},tag=moved] run playsound luigis_mansion:entity.player.scare_bashed.move player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={AnimationProgress=30,Sound=0},tag=moved] Sound 4
tag @s[scores={AnimationProgress=30},tag=!bash_no_move] add animation_may_move
execute at @s[scores={AnimationProgress=30,TeleportDelayTimer=0},tag=!bash_no_move] positioned as @e[type=minecraft:marker,tag=temp,distance=..0.1,limit=1] run teleport @s ^ ^ ^ ~ ~
scoreboard players operation @s TeleportDelay = @s TeleportDelaySetting
execute at @s[scores={AnimationProgress=30,TeleportDelayTimer=0},tag=!bash_no_move] rotated ~ 0 run function luigis_mansion:entities/player/animation/scare/bash_move
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
tag @s[scores={AnimationProgress=31}] remove reset_rotation
tag @s[scores={AnimationProgress=31}] remove bash_no_move
execute if entity @s[scores={AnimationProgress=31}] run function luigis_mansion:entities/player/animation/set/get_up
execute if data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"get_up"} run function luigis_mansion:entities/player/animation/get_up