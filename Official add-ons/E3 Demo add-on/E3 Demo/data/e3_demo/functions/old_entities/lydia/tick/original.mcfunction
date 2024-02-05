execute store result entity @s[scores={Dialog=0},tag=!vanish] Pos[0] double 0.01 run scoreboard players get @s HomeX
execute store result entity @s[scores={Dialog=0},tag=!vanish] Pos[1] double 0.01 run scoreboard players get @s HomeY
execute store result entity @s[scores={Dialog=0}] Pos[2] double 0.01 run scoreboard players get @s HomeZ
scoreboard players set @s[scores={Dialog=0}] AnimationProgress 0
scoreboard players set @s[scores={Dialog=0},tag=!vanish] Dialog 1
scoreboard players add @s[tag=vanish] Dialog 0
scoreboard players add @s[tag=!vanish] Dialog 1
execute if entity @s[scores={Dialog=1..100}] at @e[tag=same_room,tag=!spectator,tag=player] positioned ^ ^ ^8 run scoreboard players set @s[distance=..8] Dialog 1
execute if entity @s[scores={Dialog=1},tag=visible] run function luigis_mansion:old_entities/ghost/turn_invisible
execute if entity @s[scores={Dialog=2},tag=!visible] run function luigis_mansion:old_entities/ghost/turn_visible
execute if score #bed_room_1 Wave matches 1 run scoreboard players set @s[scores={Dialog=101}] Dialog 1
scoreboard players set @s[scores={Dialog=101}] AnimationProgress 0
execute if entity @s[scores={Dialog=101}] run playsound luigis_mansion:entity.lydia.sigh hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=101}] VulnerableTime 40
scoreboard players set @s[scores={Dialog=141}] Dialog 0

execute at @s[scores={Dialog=101..140},tag=!vanish] run function luigis_mansion:old_animations/lydia/turn_around
execute at @s[tag=!vanish] unless entity @s[scores={Dialog=101..140}] run function luigis_mansion:old_animations/lydia/idle