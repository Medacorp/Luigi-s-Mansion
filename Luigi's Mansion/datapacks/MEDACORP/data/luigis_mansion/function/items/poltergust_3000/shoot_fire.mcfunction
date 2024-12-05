playsound luigis_mansion:item.poltergust_3000.shoot.fire player @a[tag=same_room] ~ ~ ~ 1
data modify storage luigis_mansion:data entity set value {owner_player:0}
execute store result storage luigis_mansion:data entity.owner_player int 1 run scoreboard players get @s ID
execute positioned ^ ^ ^1 run function luigis_mansion:spawn_entities/projectile/shot_fire