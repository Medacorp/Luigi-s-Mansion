execute unless data storage 3ds_remake:data {data_version:3} run function 3ds_remake:other/upgrade_path/root/v3.0
data modify storage 3ds_remake:data data_version set value 4
execute in minecraft:overworld run forceload add 770 15
execute in minecraft:overworld run data modify entity @e[tag=portrificationizing_ghost,nbt={ArmorItems:[{components:{"minecraft:custom_data":{entity:{namespace:"luigis_mansion",id:"king_boo"}}}}]},limit=1] ArmorItems[3].components."minecraft:custom_data" merge value {entity:{namespace:"luigis_mansion",id:"portrificationizing_ghost"},ghost:{namespace:"luigis_mansion",id:"king_boo"}}
execute in minecraft:overworld run forceload remove 770 15