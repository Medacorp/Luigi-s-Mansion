scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.orville.grab_vehicle hostile @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={ActionTime=1}] add visible
execute if entity @s[scores={ActionTime=1}] run data modify storage luigis_mansion:data entity set value {tags:["this_vehicle"]}
execute if entity @s[scores={ActionTime=1}] store result storage luigis_mansion:data entity.owner int 1 run scoreboard players get @s GhostNr
execute if entity @s[scores={ActionTime=1}] run function luigis_mansion:spawn_entities/vacuumable_object/plane
execute unless score #mirrored Selected matches 1 run teleport @s[scores={ActionTime=..40}] ~ ~ ~ ~20 ~
execute if score #mirrored Selected matches 1 run teleport @s[scores={ActionTime=..40}] ~ ~ ~ ~-20 ~
tag @s[scores={ActionTime=60}] add laugh
tag @s[scores={ActionTime=60}] remove grab_vehicle
scoreboard players set @s[scores={ActionTime=60}] ActionTime 0