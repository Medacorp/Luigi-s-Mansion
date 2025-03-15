tag @s add stunable
tag @s add no_vehicle
tag @e[tag=this_vehicle,limit=1] add vacuumable
data remove entity @e[tag=this_vehicle,limit=1] data.owner
execute at @s run teleport @s ~ ~0.5 ~
playsound luigis_mansion:entity.orville.complain hostile @a[tag=same_room] ~ ~ ~ 1
tag @e[tag=this_vehicle,limit=1] remove this_vehicle