place template 3ds_remake:exterior/s_rank/7 686 137 -9
place template 3ds_remake:exterior/s_rank/6 725 89 45
place template 3ds_remake:exterior/s_rank/5 725 89 -3
place template 3ds_remake:exterior/s_rank/4 725 89 -51
place template 3ds_remake:exterior/s_rank/3 677 89 45
place template 3ds_remake:exterior/s_rank/2 677 89 -3
place template 3ds_remake:exterior/s_rank/1 677 89 -51
execute as @e[tag=rank_reveal_painting,limit=1] run data modify entity @s equipment.head merge from entity @s equipment.head.components."minecraft:custom_data".model_data.s_rank

data modify storage luigis_mansion:data furniture set value {room:0,particles:"shooting_water"}
execute positioned 725 101 21 rotated -90 -90 run function luigis_mansion:spawn_furniture/particle_spawner
data modify storage luigis_mansion:data furniture set value {room:0,particles:"spraying_water"}
execute positioned 725 108 21 rotated -90 -90 run function luigis_mansion:spawn_furniture/particle_spawner
data modify storage luigis_mansion:data furniture set value {room:0,particles:"shooting_water"}
execute positioned 725 101 -6 rotated -90 -90 run function luigis_mansion:spawn_furniture/particle_spawner
data modify storage luigis_mansion:data furniture set value {room:0,particles:"spraying_water"}
execute positioned 725 108 -6 rotated -90 -90 run function luigis_mansion:spawn_furniture/particle_spawner