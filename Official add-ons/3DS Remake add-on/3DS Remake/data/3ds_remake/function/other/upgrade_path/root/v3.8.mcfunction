execute unless data storage 3ds_remake:data {data_version:5} run function 3ds_remake:other/upgrade_path/root/v3.1
data modify storage 3ds_remake:data data_version set value 6
execute if data storage luigis_mansion:data rooms.training_room{cleared:1b} run data modify storage luigis_mansion:data rooms.gallery.cleared set value 1b