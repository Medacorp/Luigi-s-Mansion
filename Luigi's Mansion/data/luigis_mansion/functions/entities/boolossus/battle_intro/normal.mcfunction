scoreboard players add @s Dialog 1
scoreboard players set @s[tag=fleeing] Dialog 580
teleport @s[scores={Dialog=..280}] ~ ~-0.225 ~
teleport @s[scores={Dialog=290..300}] ~ ~0.225 ~
execute if entity @s[scores={Dialog=321}] run playsound luigis_mansion:entity.boo.laugh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=341}] run playsound luigis_mansion:entity.boo.laugh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=361}] run playsound luigis_mansion:entity.boo.laugh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=381}] run playsound luigis_mansion:entity.boo.laugh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=401}] run playsound luigis_mansion:entity.boo.laugh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=421}] run playsound luigis_mansion:entity.boo.laugh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=441}] run playsound luigis_mansion:entity.boo.laugh hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Dialog=461}] run playsound luigis_mansion:entity.boo.laugh hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Dialog=321}] AnimationProg 0
tag @s[scores={Dialog=321}] add laugh 
execute at @s[scores={Dialog=321..580}] run function luigis_mansion:animations/boo/laugh
tag @s[scores={Dialog=580}] remove laugh
tag @s[scores={Dialog=580}] add intro_done
scoreboard players reset @s[scores={Dialog=580}] Dialog