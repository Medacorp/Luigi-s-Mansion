scoreboard players set @s[tag=!visible] Dialog 0
scoreboard players add @s[tag=!vanish] Dialog 1
execute if entity @s[tag=!visible,tag=!vanish] run function luigis_mansion:entities/ghost/turn_visible
execute if entity @s[scores={VulnerableTime=0},tag=!vanish] at @e[tag=same_room,tag=!spectator,tag=player] positioned ^ ^ ^8 if entity @s[distance=..8] run function luigis_mansion:entities/ghost/turn_invisible
execute if predicate luigis_mansion:uncle_grimmly_scare run tag @s[scores={Dialog=20},tag=visible] add scare
scoreboard players set @s[scores={Dialog=20,VulnerableTime=0},tag=scare] AnimationProgress 0
execute if entity @s[scores={Dialog=20,VulnerableTime=0},tag=scare] run playsound luigis_mansion:entity.uncle_grimmly.scare hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=20},tag=scare] VulnerableTime 22
tag @s remove scare
scoreboard players set @s[scores={Dialog=20}] Dialog 0
scoreboard players set @s[scores={Dialog=..19,VulnerableTime=1}] AnimationProgress 0
scoreboard players set @s[scores={Dialog=..19,VulnerableTime=1}] VulnerableTime 0

execute if entity @s[scores={VulnerableTime=0},tag=!vanish] run function luigis_mansion:old_animations/uncle_grimmly/idle
execute if entity @s[scores={VulnerableTime=1..},tag=!vanish] run function luigis_mansion:old_animations/uncle_grimmly/scare