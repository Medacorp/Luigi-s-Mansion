execute unless data storage luigis_mansion:data {data_version:3} run function luigis_mansion:other/upgrade_path/root/v2.0
data modify storage luigis_mansion:data {} merge value {data_version:4}
execute in minecraft:overworld run forceload add 0 0