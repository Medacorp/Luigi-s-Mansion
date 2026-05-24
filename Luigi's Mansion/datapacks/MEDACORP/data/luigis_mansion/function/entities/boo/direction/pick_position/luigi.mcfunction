summon minecraft:marker ~ ~ ~ {Tags:["boo_target_path","new_path"]}
execute store result score #temp Time run data get entity @s Pos[0]
execute if data storage luigis_mansion:data paths[-1].x.min store result score #temp2 Time run data get storage luigis_mansion:data paths[-1].x.min
execute if data storage luigis_mansion:data paths[-1].x.min store result score #temp3 Time run data get storage luigis_mansion:data paths[-1].x.max
execute if data storage luigis_mansion:data paths[-1].x.min if score #temp Time <= #temp2 Time run scoreboard players operation #temp Time = #temp2 Time
execute if data storage luigis_mansion:data paths[-1].x.min if score #temp Time >= #temp3 Time run scoreboard players operation #temp Time = #temp3 Time
execute store result entity @e[tag=new_path,limit=1] Pos[0] float 1 run scoreboard players get #temp Time
execute store result score #temp Time run data get entity @s Pos[1]
execute if data storage luigis_mansion:data paths[-1].y.min store result score #temp2 Time run data get storage luigis_mansion:data paths[-1].y.min
execute if data storage luigis_mansion:data paths[-1].y.min store result score #temp3 Time run data get storage luigis_mansion:data paths[-1].y.max
execute if data storage luigis_mansion:data paths[-1].y.min if score #temp Time <= #temp2 Time run scoreboard players operation #temp Time = #temp2 Time
execute if data storage luigis_mansion:data paths[-1].y.min if score #temp Time >= #temp3 Time run scoreboard players operation #temp Time = #temp3 Time
execute store result entity @e[tag=new_path,limit=1] Pos[1] float 1 run scoreboard players get #temp Time
execute store result score #temp Time run data get entity @s Pos[2]
execute if data storage luigis_mansion:data paths[-1].z.min store result score #temp2 Time run data get storage luigis_mansion:data paths[-1].z.min
execute if data storage luigis_mansion:data paths[-1].z.min store result score #temp3 Time run data get storage luigis_mansion:data paths[-1].z.max
execute if data storage luigis_mansion:data paths[-1].z.min if score #temp Time <= #temp2 Time run scoreboard players operation #temp Time = #temp2 Time
execute if data storage luigis_mansion:data paths[-1].z.min if score #temp Time >= #temp3 Time run scoreboard players operation #temp Time = #temp3 Time
execute store result entity @e[tag=new_path,limit=1] Pos[2] float 1 run scoreboard players get #temp Time
data modify storage luigis_mansion:data processed_paths append from storage luigis_mansion:data paths[-1]
data remove storage luigis_mansion:data paths[-1]
execute store result score @e[tag=new_path,limit=1] Time run data get storage luigis_mansion:data paths
tag @e[tag=new_path,limit=1] remove new_path
execute if data storage luigis_mansion:data paths[-1] run function luigis_mansion:entities/boo/direction/pick_position/luigi