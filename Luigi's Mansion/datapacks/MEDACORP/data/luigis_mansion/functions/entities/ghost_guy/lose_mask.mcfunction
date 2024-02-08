tag @s add maskless
tag @s add stunable
$function $(namespace):entities/$(id)/reset
tag @s add complain
data modify storage luigis_mansion:data entity set value {tags:["vacuumable"]}
$execute rotated ~ 0 positioned ^ ^1.3 ^0.4 run function $(namespace):spawn_entities/vacuumable_object/mask/$(id)