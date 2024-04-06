scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.orville.grab_vehicle hostile @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={ActionTime=1}] add visible
execute if entity @s[scores={ActionTime=1}] run data modify storage luigis_mansion:data entity set value {tags:["this_vehicle"]}
execute if entity @s[scores={ActionTime=1}] run data modify storage luigis_mansion:data entity.owner set from entity @s UUID
execute if entity @s[scores={ActionTime=1}] run function luigis_mansion:spawn_entities/vacuumable_object/plane
data modify entity @s[scores={ActionTime=1}] data.animation set value {namespace:"luigis_mansion",id:"grab_vehicle"}
tag @s[scores={ActionTime=60}] add laugh
tag @s[scores={ActionTime=60}] remove grab_vehicle
scoreboard players set @s[scores={ActionTime=60}] ActionTime 0