scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.orville.grab_vehicle hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProgress 0
execute if entity @s[scores={ActionTime=1}] run function luigis_mansion:entities/ghost/turn_visible
execute if entity @s[scores={ActionTime=1}] run function luigis_mansion:spawn_entities/vacuumable_object/plane
execute if entity @s[scores={ActionTime=1}] run scoreboard players operation @e[distance=..0.7,tag=plane] GhostNr = @s GhostNr
execute if score #mirrored Selected matches 0 run teleport @s[scores={ActionTime=..40}] ~ ~ ~ ~20 ~
execute if score #mirrored Selected matches 1 run teleport @s[scores={ActionTime=..40}] ~ ~ ~ ~-20 ~
tag @s[scores={ActionTime=60}] add laugh
tag @s[scores={ActionTime=60}] remove grab_vehicle
tag @s[scores={ActionTime=60}] remove at_height
scoreboard players set @s[scores={ActionTime=60}] ActionTime 0