scoreboard players add @s[scores={Dialog=2..60}] Dialog 1
execute positioned ~3 ~ ~ if block ^ ^ ^2 minecraft:air run scoreboard players add @s[scores={Dialog=1}] Dialog 1
execute unless block ~3 ~ ~ minecraft:air unless entity @s[tag=vanish] as @e[tag=this_model,tag=miss_petunia_shadow,tag=!body,tag=!right_arm,tag=!left_arm,tag=!visible,limit=1] run function luigis_mansion:entities/miss_petunia/turn_shadow_visible
execute if block ~3 ~ ~ minecraft:air as @e[tag=this_model,tag=miss_petunia_shadow,tag=!body,tag=!right_arm,tag=!left_arm,tag=visible,limit=1] run function luigis_mansion:entities/miss_petunia/turn_shadow_invisible
execute unless entity @s[scores={Dialog=1..}] run scoreboard players add @s Dialog 1
execute unless entity @s[scores={Dialog=3..59},tag=!visible] run function luigis_mansion:entities/ghost/turn_visible
execute if entity @s[scores={Dialog=1},tag=visible] at @e[tag=same_room,tag=!spectator,tag=player] positioned ^ ^ ^8 if entity @s[distance=..8] run function luigis_mansion:entities/ghost/turn_invisible
execute if entity @s[scores={Dialog=61,VulnerableTime=0},tag=visible] at @e[tag=same_room,tag=!spectator,tag=player] positioned ^ ^ ^8 if entity @s[distance=..8] run function luigis_mansion:entities/ghost/turn_invisible
scoreboard players set @s[scores={Dialog=20}] AnimationProgress 0
execute if entity @s[scores={Dialog=20}] run playsound luigis_mansion:entity.miss_petunia.scream hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=20..59}] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~
scoreboard players set @s[scores={Dialog=50}] AnimationProgress 0
execute if entity @s[scores={Dialog=50}] run playsound luigis_mansion:entity.miss_petunia.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=59}] run function luigis_mansion:entities/miss_petunia/attack
execute if entity @s[scores={Dialog=60,VulnerableTime=0}] run teleport @s ~ ~ ~ ~ 0
execute if entity @s[scores={Dialog=60,VulnerableTime=0}] store result entity @s Rotation[0] float 1 run scoreboard players get @s HomeRotation
scoreboard players set @s[scores={Dialog=2..,VulnerableTime=1}] AnimationProgress 1
scoreboard players set @s[scores={Dialog=2..,VulnerableTime=0},tag=frozen] AnimationProgress 0
execute if entity @s[scores={Dialog=2..,VulnerableTime=0},tag=frozen,tag=!vanish] run playsound luigis_mansion:entity.miss_petunia.complain hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=2..},tag=frozen,tag=!vanish] VulnerableTime 60
scoreboard players set @s[scores={Dialog=2..60},tag=frozen,tag=!vanish] Dialog 61
execute if entity @s[scores={Dialog=61,VulnerableTime=1..}] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=61},tag=frozen] unless data storage luigis_mansion:data current_state.current_data.technical_data{miss_petunia_spoke:1b} run tellraw @a[tag=same_room] {"translate":"chat.type.text","with":[{"translate":"luigis_mansion:entity.miss_petunia","color":"green"},{"translate":"luigis_mansion:message.miss_petunia.freeze"}]}
execute if entity @s[scores={Dialog=61},tag=frozen] run data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {miss_petunia_spoke:1b}
tag @s remove frozen

execute at @s[scores={Dialog=20..49}] run function luigis_mansion:animations/miss_petunia/panic
execute at @s[scores={Dialog=50..59}] run function luigis_mansion:animations/miss_petunia/spit
execute at @s[scores={VulnerableTime=1..}] run function luigis_mansion:animations/miss_petunia/shiver
execute at @s[scores={VulnerableTime=0},tag=!vanish] unless entity @s[scores={Dialog=20..59}] run function luigis_mansion:animations/miss_petunia/idle
execute as @e[tag=this_model,tag=miss_petunia_shadow,tag=!body,tag=!right_arm,tag=!left_arm,limit=1] positioned ~3.5 ~ ~ run function luigis_mansion:animations/miss_petunia/shadow

execute if entity @s[scores={VulnerableTime=0,Sound=0},tag=!vanish] unless entity @s[scores={Dialog=20..59}] run playsound luigis_mansion:entity.miss_petunia.ambient hostile @a[tag=same_room] ~ ~ ~ 1
execute unless entity @s[scores={Dialog=20..59}] run scoreboard players set @s[scores={VulnerableTime=0,Sound=0},tag=!vanish] Sound 40