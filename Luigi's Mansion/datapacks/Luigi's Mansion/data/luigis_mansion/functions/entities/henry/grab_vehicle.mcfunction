scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.henry.grab_vehicle hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute if entity @s[scores={ActionTime=1}] run function luigis_mansion:entities/henry/turn_visible
execute if entity @s[scores={ActionTime=1}] run function luigis_mansion:spawn_entities/vacuumable_object/car
execute if entity @s[scores={ActionTime=1}] run scoreboard players operation @e[distance=..0.7,tag=car] GhostNr = @s GhostNr
execute if score #mirrored Selected matches 0 run teleport @s[scores={ActionTime=..40}] ~ ~ ~ ~20 ~
execute if score #mirrored Selected matches 1 run teleport @s[scores={ActionTime=..40}] ~ ~ ~ ~-20 ~
tag @s[scores={ActionTime=60}] add laugh
tag @s[scores={ActionTime=60}] remove grab_vehicle
scoreboard players set @s[scores={ActionTime=60}] ActionTime 0