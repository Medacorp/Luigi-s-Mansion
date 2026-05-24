$execute if entity @s[tag=!dark_room] store result score #temp Time run random value 1..$(value)
data modify storage luigis_mansion:data paths set from entity @s data.warp_options
data modify storage luigis_mansion:data processed_paths set value []
execute if entity @s[tag=dark_room] as @e[tag=luigi,sort=nearest,limit=1] if data storage luigis_mansion:data paths[-1] run function luigis_mansion:entities/boo/direction/pick_position/luigi
execute if entity @s[tag=dark_room] at @e[tag=luigi,sort=nearest,limit=1] run scoreboard players operation #temp Time = @e[tag=boo_target_path,sort=furthest,limit=1] Time
scoreboard players reset #temp2 Time
scoreboard players reset #temp3 Time
data remove storage luigis_mansion:data processed_paths
data remove storage luigis_mansion:data paths
kill @e[tag=boo_target_path]