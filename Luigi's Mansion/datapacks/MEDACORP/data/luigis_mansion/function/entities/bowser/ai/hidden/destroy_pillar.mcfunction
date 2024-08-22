fill ~-2 ~ ~-2 ~2 ~3 ~2 minecraft:air replace minecraft:clay
fill ~-2 ~ ~-2 ~2 ~3 ~2 minecraft:air replace minecraft:glowstone
playsound luigis_mansion:entity.bowser.destroy_pillar hostile @a[tag=same_room] ~ ~ ~ 3
data modify storage luigis_mansion:data furniture set value {tags:["drop_loot"]}
function luigis_mansion:entities/furniture/loot_chance/health_dependent_3
execute if data storage luigis_mansion:data furniture.loot run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
data remove storage luigis_mansion:data furniture