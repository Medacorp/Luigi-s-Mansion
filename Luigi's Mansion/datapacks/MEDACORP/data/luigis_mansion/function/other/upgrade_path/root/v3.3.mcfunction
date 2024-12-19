execute unless data storage luigis_mansion:data {data_version:7} run function luigis_mansion:other/upgrade_path/root/v3.2
data modify storage luigis_mansion:data data_version set value 8
data modify storage luigis_mansion:data memory[] merge value {revived_by:'""',camera:{pos:[0.0d,0.0d,0.0d],rotation:[0.0f,0.0f]},music:{jukebox:"",jukebox_flags:{}}}
data remove storage luigis_mansion:data found_e_gadd
data remove storage luigis_mansion:data entered_mansion
forceload add 727 -42 796 23