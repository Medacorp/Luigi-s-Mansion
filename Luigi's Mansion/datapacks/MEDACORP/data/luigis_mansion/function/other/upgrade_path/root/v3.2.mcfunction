execute unless data storage luigis_mansion:data {data_version:6} run function luigis_mansion:other/upgrade_path/root/v3.1
data modify storage luigis_mansion:data {} merge value {data_version:7,loaded_exterior:{namespace:"luigis_mansion",id:"mansion"}}
function #luigis_mansion:room/underground_lab/reset
forceload add 793 7 782 17
scoreboard objectives remove FurnitureLightModel
scoreboard players reset #loaded_exterior Selected