tellraw @a {"text":"[Server] Reloaded"}
execute unless data storage luigis_mansion:data {data_version:1} run function #luigis_mansion:upgrade_path
data merge storage luigis_mansion:data {data_version:1}