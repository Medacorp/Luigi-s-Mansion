fill ~-2 ~ ~-2 ~2 ~3 ~2 minecraft:air replace minecraft:clay
fill ~-2 ~ ~-2 ~2 ~3 ~2 minecraft:air replace minecraft:glowstone
playsound luigis_mansion:entity.bowser.destroy_pillar hostile @a[tag=same_room] ~ ~ ~ 3
execute store result score #temp Time run random value 1..5
execute if score #temp Time matches 3 run function luigis_mansion:spawn_entities/item/poison_mushroom
execute if score #temp Time matches 4 run function luigis_mansion:spawn_entities/item/small_heart
tag @e[tag=this_entity,limit=1] remove this_entity
scoreboard players reset #temp Time