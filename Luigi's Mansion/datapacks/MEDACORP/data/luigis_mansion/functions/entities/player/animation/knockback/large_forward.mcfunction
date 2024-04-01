scoreboard players add @s AnimationProgress 1
summon minecraft:marker ^ ^-1 ^ {Tags:["temp","remove_from_existence"]}
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[0] double 0.01 run scoreboard players get @s KnockbackX
execute store result entity @e[type=minecraft:marker,tag=temp,limit=1] Pos[2] double 0.01 run scoreboard players get @s KnockbackZ

execute if entity @s[scores={AnimationProgress=1,Sound=0,Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.hurt_scare.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=1,Sound=0,Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.hurt_scare.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={AnimationProgress=1,Sound=0,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.hurt_scare.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=1,Sound=0,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.hurt_scare.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={AnimationProgress=1,Sound=0}] Sound 20
execute if entity @s[scores={AnimationProgress=21,Sound=0,Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.hurt_bounce.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=21,Sound=0,Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.hurt_bounce.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={AnimationProgress=21,Sound=0,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.hurt_bounce.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=21,Sound=0,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.hurt_bounce.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={AnimationProgress=21,Sound=0}] Sound 20
execute if entity @s[scores={AnimationProgress=51,Sound=0,Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.recover.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=51,Sound=0,Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.recover.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={AnimationProgress=51,Sound=0,Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.recover.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=51,Sound=0,Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.recover.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={AnimationProgress=51,Sound=0}] Sound 10
execute at @s[scores={AnimationProgress=..30}] facing entity @e[type=minecraft:marker,tag=temp,limit=1] feet rotated ~ 0 run teleport @s ^ ^ ^-0.16 ~ ~

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
kill @e[type=minecraft:marker,tag=temp,limit=1]
tag @s remove new_poltergust_grabbed
tag @s remove poltergust_grabbed
tag @s remove vacuuming_ghost
tag @s add disable_flashlight
tag @s add disable_game_boy_horror
tag @s add disable_interact
tag @s add disable_poltergust
tag @s add animation_may_move
execute if entity @s[scores={AnimationProgress=60}] run function luigis_mansion:entities/player/animation/set/none