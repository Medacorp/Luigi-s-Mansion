execute if entity @s[scores={Room=0}] run tag @a[tag=looking_at_map] add same_room
$function luigis_mansion:entities/item/particle/chance {chance:"$(chance)"}
execute unless score #temp Time matches 1.. run scoreboard players set #temp Time 1
$execute if score #temp Time matches 1 run particle $(name) ~ ~ ~ 0.3 0.3 0.3 0 1 force @a[tag=same_room]
$execute if score #temp Time matches 1 if score #temp MirrorX matches -2147483648.. run function luigis_mansion:entities/item/particle/mirror_x {name:"$(name)"}
$execute if score #temp Time matches 1 if score #temp MirrorZ matches -2147483648.. run function luigis_mansion:entities/item/particle/mirror_z {name:"$(name)"}
scoreboard players reset #temp Time
execute if entity @s[scores={Room=0}] run tag @a[tag=looking_at_map] remove same_room