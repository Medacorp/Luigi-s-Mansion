execute store result entity @s[scores={Dialog=0}] Pos[0] double 0.01 run scoreboard players get @s HomeX
execute store result entity @s[scores={Dialog=0}] Pos[1] double 0.01 run scoreboard players get @s HomeY
execute store result entity @s[scores={Dialog=0}] Pos[2] double 0.01 run scoreboard players get @s HomeZ
scoreboard players set @s[scores={Dialog=0}] AnimationProg 0
scoreboard players set @s[scores={Dialog=0}] Dialog 1
scoreboard players add @s Dialog 1
execute if entity @s[scores={Dialog=1..100}] at @e[tag=same_room,tag=!spectator] positioned ^ ^ ^8 run scoreboard players set @s[distance=..8] Dialog 1
execute if entity @s[scores={Dialog=1},tag=visible] run function luigis_mansion:entities/lydia/turn_invisible
execute if entity @s[scores={Dialog=2},tag=!visible] run function luigis_mansion:entities/lydia/turn_visible
execute if score #bed_room_1 Wave matches 1 run scoreboard players set @s[scores={Dialog=101}] Dialog 1
scoreboard players set @s[scores={Dialog=101}] AnimationProg 0
execute if entity @s[scores={Dialog=101}] run playsound luigis_mansion:entity.lydia.sigh hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=101}] VulnerableTime 40
scoreboard players set @s[scores={Dialog=141}] Dialog 0

execute at @s[scores={Dialog=101..140},tag=!vanish] run function luigis_mansion:animations/lydia/turn_around
execute at @s[tag=!vanish] unless entity @s[scores={Dialog=101..140}] run function luigis_mansion:animations/lydia/idle