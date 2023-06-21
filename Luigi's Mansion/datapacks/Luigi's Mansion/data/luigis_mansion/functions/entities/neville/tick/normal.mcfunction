execute store result entity @s[scores={Dialog=0},tag=!vanish] Pos[0] double 0.01 run scoreboard players get @s HomeX
execute store result entity @s[scores={Dialog=0},tag=!vanish] Pos[1] double 0.01 run scoreboard players get @s HomeY
execute store result entity @s[scores={Dialog=0},tag=!vanish] Pos[2] double 0.01 run scoreboard players get @s HomeZ
execute positioned ~ ~-1.85 ~ run scoreboard players operation @s[tag=!vanish] ActionTime = @e[tag=rocking_chair,distance=..1,limit=1] Dialog
scoreboard players set @s[scores={Dialog=0}] AnimationProgress 0
execute if entity @s[scores={Dialog=0},tag=!vanish] positioned ~ ~-1.85 ~ if entity @e[tag=rocking_chair,distance=..1,limit=1] at @s unless score @s ActionTime = @s AnimationProgress run function luigis_mansion:animations/neville/get_idle_position
scoreboard players set @s[scores={Dialog=0},tag=!vanish] Dialog 1
scoreboard players add @s[tag=!vanish] Dialog 1
scoreboard players set @s[tag=vanish] Dialog 0
execute if entity @s[scores={Dialog=1..100}] at @e[tag=same_room,tag=!spectator,tag=player] positioned ^ ^ ^8 run scoreboard players set @s[distance=..8] Dialog 1
execute if entity @s[scores={Dialog=1},tag=visible] run function luigis_mansion:entities/ghost/turn_invisible
execute if entity @s[scores={Dialog=2},tag=!visible] run function luigis_mansion:entities/ghost/turn_visible
scoreboard players set @s[scores={Dialog=101}] AnimationProgress 0
execute if entity @s[scores={Dialog=101}] run playsound luigis_mansion:entity.neville.yawn hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=101}] VulnerableTime 60
scoreboard players set @s[scores={Dialog=161}] Dialog 0

execute if entity @s[tag=!vanish] positioned ~ ~-1.85 ~ if entity @e[tag=rocking_chair,distance=..1,scores={Dialog=1..20},limit=1] at @s run teleport @s ^ ^ ^0.01
execute if entity @s[tag=!vanish] positioned ~ ~-1.85 ~ if entity @e[tag=rocking_chair,distance=..1,scores={Dialog=21..60},limit=1] at @s run teleport @s ^ ^ ^-0.01
execute if entity @s[tag=!vanish] positioned ~ ~-1.85 ~ if entity @e[tag=rocking_chair,distance=..1,scores={Dialog=61..80},limit=1] at @s run teleport @s ^ ^ ^0.01

execute if entity @s[tag=vanish,scores={ActionTime=1}] run playsound luigis_mansion:entity.neville.laugh hostile @a[tag=same_room] ~ ~ ~ 1
execute at @s[scores={Dialog=101..160},tag=!vanish] run function luigis_mansion:animations/neville/yawn
execute at @s[tag=!vanish] unless entity @s[scores={Dialog=101..160}] run function luigis_mansion:animations/neville/idle