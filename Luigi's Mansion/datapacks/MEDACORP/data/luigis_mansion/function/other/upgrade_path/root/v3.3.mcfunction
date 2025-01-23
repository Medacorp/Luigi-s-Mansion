execute unless data storage luigis_mansion:data {data_version:7} run function luigis_mansion:other/upgrade_path/root/v3.2
data modify storage luigis_mansion:data {} merge value {data_version:8,dialogs:[]}
data modify storage luigis_mansion:data memory[] merge value {revived_by:'""',camera:{},music:{jukebox:"",jukebox_flags:{}}}
data remove storage luigis_mansion:data found_e_gadd
data remove storage luigis_mansion:data entered_mansion
execute in minecraft:overworld run forceload add 727 -42 796 23
scoreboard objectives remove ReturnTimer