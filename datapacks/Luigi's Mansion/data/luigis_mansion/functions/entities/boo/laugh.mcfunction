scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.boo.laugh hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute at @s run function luigis_mansion:animations/boo/laugh
execute if entity @a[gamemode=!spectator,distance=..7] run tag @s[scores={ActionTime=20}] remove laugh
execute if entity @s[scores={ActionTime=20}] unless entity @a[gamemode=!spectator,distance=..7] if predicate luigis_mansion:boo_laugh_turn_to_taunt run tag @s add taunt
execute if entity @s[scores={ActionTime=20},tag=taunt] run playsound luigis_mansion:entity.boo.flinch hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=20},tag=taunt] AnimationProg 0
execute at @s[scores={ActionTime=20},tag=taunt] run function luigis_mansion:animations/boo/taunt
scoreboard players set @s[scores={ActionTime=20},tag=taunt] AnimationProg 1
scoreboard players set @s[scores={ActionTime=20},tag=taunt] ActionTime 1
tag @s[tag=taunt] remove laugh
scoreboard players set @s[scores={ActionTime=20}] AnimationProg 0
scoreboard players set @s[scores={ActionTime=20}] ActionTime 0