scoreboard players add @s AnimationProgress 1
tag @s add animation_may_move
execute at @s[scores={AnimationProgress=1,Sound=0,Shrunk=0}] run playsound luigis_mansion:entity.player.hurt_burn player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={AnimationProgress=1,Sound=0,Shrunk=1..}] run playsound luigis_mansion:entity.player.hurt_burn player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={AnimationProgress=1,Sound=0}] Sound 55
execute at @s[scores={AnimationProgress=..40}] if score #mirrored Selected matches 0 run teleport @s ^ ^ ^ ~-9 ~
execute at @s[scores={AnimationProgress=..40}] if score #mirrored Selected matches 1 run teleport @s ^ ^ ^ ~9 ~
execute at @s[scores={AnimationProgress=55,Sound=0,Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.recover.high_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={AnimationProgress=55,Sound=0,Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.recover.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute at @s[scores={AnimationProgress=55,Sound=0,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.recover.low_health player @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={AnimationProgress=55,Sound=0,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.recover.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={AnimationProgress=55,Sound=0}] Sound 10
tag @s remove new_poltergust_grabbed
tag @s remove poltergust_grabbed
tag @s remove vacuuming_ghost
tag @s add disable_flashlight
tag @s add disable_game_boy_horror
tag @s add disable_interact
tag @s add disable_poltergust
execute if entity @s[scores={AnimationProgress=60}] run function luigis_mansion:entities/player/animation/set/none