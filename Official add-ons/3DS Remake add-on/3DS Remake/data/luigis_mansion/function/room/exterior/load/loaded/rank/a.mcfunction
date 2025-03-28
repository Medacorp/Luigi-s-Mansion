place template 3ds_remake:exterior/a_rank/4 761 90 25
place template 3ds_remake:exterior/a_rank/3 761 89 -23
place template 3ds_remake:exterior/a_rank/2 713 89 19
place template 3ds_remake:exterior/a_rank/1 713 89 -29
execute as @e[tag=rank_reveal_painting,limit=1] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.a

data modify storage luigis_mansion:data furniture set value {room:0,particles:"spraying_water"}
execute positioned 749.0 93 8.0 rotated -90 -90 run function luigis_mansion:spawn_furniture/particle_spawner