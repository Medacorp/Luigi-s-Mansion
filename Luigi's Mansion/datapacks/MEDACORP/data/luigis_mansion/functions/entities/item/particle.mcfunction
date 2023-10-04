$execute store result score #temp Time run random value 1..$(chance)
$execute if score #temp Time matches 1 run particle $(name) ~ ~1.75 ~ 0.3 0.3 0.3 0 1 normal @a[tag=same_room]
$execute if score #temp Time matches 1 if score #temp MirrorX matches -2147483648.. run function luigis_mansion:entities/item/particle/mirror_x {name:$(name)}
$execute if score #temp Time matches 1 if score #temp MirrorZ matches -2147483648.. run function luigis_mansion:entities/item/particle/mirror_z {name:$(name)}
scoreboard players reset #temp Time