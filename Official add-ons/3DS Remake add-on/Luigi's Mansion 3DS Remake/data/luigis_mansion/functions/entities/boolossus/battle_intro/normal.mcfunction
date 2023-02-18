scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
scoreboard players set @s[tag=fleeing] Dialog 440
execute if entity @s[scores={Dialog=1..99}] as @a[tag=same_room,gamemode=!spectator,scores={IdleTime=0..},tag=!looking_at_map,tag=!portrait_battle] unless entity @s[scores={ScareTime=1..}] run function luigis_mansion:entities/player/animation/set/high_health_idle_no_sound
execute if entity @s[scores={Dialog=100}] as @a[tag=same_room,gamemode=!spectator,tag=!looking_at_map] run function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={Dialog=100}] run playsound luigis_mansion:entity.boolossus.laugh_2 hostile @a[tag=same_room] ~ ~ ~ 30
execute if entity @s[scores={Dialog=100}] as @a[tag=same_room] run function luigis_mansion:entities/player/scare/freeze
execute if entity @s[scores={Dialog=200}] as @a[tag=same_room] run function luigis_mansion:entities/player/knockback/flee_look_up
teleport @s[scores={Dialog=120..180}] ~ ~ ~ ~ ~1.5
teleport @s[scores={Dialog=198..260}] ~ ~-1 ~
execute if entity @s[scores={Dialog=260}] as @a[tag=same_room] run function luigis_mansion:entities/player/scare/bash_no_move
execute if entity @s[scores={Dialog=260..349}] run scoreboard players set @a[tag=same_room,scores={ScareType=4}] ScareTime 21
execute if entity @s[scores={Dialog=260}] run playsound luigis_mansion:entity.boolossus.bounce hostile @a[tag=same_room] ~ ~ ~ 3
teleport @s[scores={Dialog=290..300}] ~ ~0.2 ~ ~ ~-4.5
execute if entity @s[scores={Dialog=..300}] store result score @s HomeRotation run data get entity @s Rotation[1] 100
execute at @s facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=..300}] store result entity @s Rotation[1] float 0.01 run scoreboard players get @s HomeRotation
tag @s[scores={Dialog=320}] add laugh
scoreboard players set @s[scores={Dialog=320}] AnimationProgress 0
execute at @s[scores={Dialog=320..440}] run function luigis_mansion:animations/boo/laugh
execute if entity @s[scores={Dialog=320}] run playsound luigis_mansion:entity.boolossus.laugh hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={Dialog=340}] run playsound luigis_mansion:entity.boolossus.laugh hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={Dialog=360}] run playsound luigis_mansion:entity.boolossus.laugh hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={Dialog=380}] run playsound luigis_mansion:entity.boolossus.laugh hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={Dialog=400}] run playsound luigis_mansion:entity.boolossus.laugh hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={Dialog=420}] run playsound luigis_mansion:entity.boolossus.laugh hostile @a[tag=same_room] ~ ~ ~ 3
tag @s[scores={Dialog=440}] remove laugh
tag @s[scores={Dialog=440}] add intro_done
scoreboard players set @s[scores={Dialog=440}] AnimationProgress 0
scoreboard players reset @s[scores={Dialog=440}] Dialog