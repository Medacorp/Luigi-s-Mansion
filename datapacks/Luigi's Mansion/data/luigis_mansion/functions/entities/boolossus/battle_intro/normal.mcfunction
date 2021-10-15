scoreboard players set #freeze_timer Selected 1
scoreboard players add @s Dialog 1
scoreboard players set @s[tag=fleeing] Dialog 580
execute if entity @s[scores={Dialog=100}] run playsound luigis_mansion:entity.boolossus.laugh hostile @a[tag=same_room] ~ ~ ~ 1
teleport @s[scores={Dialog=120..180}] ~ ~-0.225 ~ ~ ~1.5
teleport @s[scores={Dialog=..280}] ~ ~-0.225 ~
teleport @s[scores={Dialog=290..300}] ~ ~0.225 ~ ~ ~-4.5
execute if entity @s[scores={Dialog=..300}] store result score @s HomeRot run data get entity @s Rotation[1] 100
execute at @s facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet run teleport @s ~ ~ ~ ~ ~
execute if entity @s[scores={Dialog=..300}] store result entity @s Rotation[1] float 0.01 run scoreboard players get @s HomeRot
execute if entity @s[scores={Dialog=321}] run playsound luigis_mansion:entity.boo.laugh hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={Dialog=341}] run playsound luigis_mansion:entity.boo.laugh hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={Dialog=361}] run playsound luigis_mansion:entity.boo.laugh hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={Dialog=381}] run playsound luigis_mansion:entity.boo.laugh hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={Dialog=401}] run playsound luigis_mansion:entity.boo.laugh hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={Dialog=421}] run playsound luigis_mansion:entity.boo.laugh hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={Dialog=441}] run playsound luigis_mansion:entity.boo.laugh hostile @a[tag=same_room] ~ ~ ~ 3
execute if entity @s[scores={Dialog=461}] run playsound luigis_mansion:entity.boo.laugh hostile @a[tag=same_room] ~ ~ ~ 3
scoreboard players set @s[scores={Dialog=321}] AnimationProg 0
tag @s[scores={Dialog=321}] add laugh 
execute at @s[scores={Dialog=321..580}] run function luigis_mansion:animations/boo/laugh
tag @s[scores={Dialog=580}] remove laugh
tag @s[scores={Dialog=580}] add intro_done
scoreboard players reset @s[scores={Dialog=580}] Dialog