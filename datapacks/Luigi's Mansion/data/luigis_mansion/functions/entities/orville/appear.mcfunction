scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.orville.spawn hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute if entity @s[scores={ActionTime=1}] run function luigis_mansion:entities/orville/turn_visible
execute at @s run function luigis_mansion:animations/orville/vanish
execute if score #mirrored Selected matches 0 run teleport @s[scores={ActionTime=..40}] ~ ~ ~ ~20 ~
execute if score #mirrored Selected matches 1 run teleport @s[scores={ActionTime=..40}] ~ ~ ~ ~-20 ~
tag @s[scores={ActionTime=60}] remove appear
scoreboard players set @s[scores={ActionTime=60}] ActionTime 0