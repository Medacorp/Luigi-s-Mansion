execute unless data storage luigis_mansion:data {data_version:5} run function luigis_mansion:other/upgrade_path/root/v3.0.1
data modify storage luigis_mansion:data data_version set value 6
data modify storage luigis_mansion:data memory[].poltergust_latch_on_order set value []
scoreboard objectives remove PullStrength