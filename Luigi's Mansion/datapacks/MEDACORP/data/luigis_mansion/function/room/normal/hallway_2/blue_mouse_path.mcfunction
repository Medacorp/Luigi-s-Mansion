data modify storage luigis_mansion:data paths set value []
execute store result score #temp Time if entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"blue_mouse"}}},tag=visible,tag=!ignore_me,scores={Room=7}]
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[729.0d,20.0d,52.5d]},{wait:10,position:[724.0d,20.0d,52.5d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[729.0d,20.0d,52.5d]},{wait:10,position:[724.0d,20.0d,61.5d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[729.0d,20.0d,52.5d]},{wait:10,position:[724.0d,20.0d,70.5d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[729.0d,20.0d,61.5d]},{wait:10,position:[724.0d,20.0d,52.5d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[729.0d,20.0d,61.5d]},{wait:10,position:[724.0d,20.0d,61.5d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[729.0d,20.0d,61.5d]},{wait:10,position:[724.0d,20.0d,70.5d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[729.0d,20.0d,70.5d]},{wait:10,position:[724.0d,20.0d,52.5d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[729.0d,20.0d,70.5d]},{wait:10,position:[724.0d,20.0d,61.5d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[729.0d,20.0d,70.5d]},{wait:10,position:[724.0d,20.0d,70.5d]}]}
#Other direction
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[724.0d,20.0d,52.5d]},{wait:10,position:[729.0d,20.0d,52.5d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[724.0d,20.0d,52.5d]},{wait:10,position:[729.0d,20.0d,61.5d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[724.0d,20.0d,52.5d]},{wait:10,position:[729.0d,20.0d,70.5d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[724.0d,20.0d,61.5d]},{wait:10,position:[729.0d,20.0d,52.5d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[724.0d,20.0d,61.5d]},{wait:10,position:[729.0d,20.0d,61.5d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[724.0d,20.0d,61.5d]},{wait:10,position:[729.0d,20.0d,70.5d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[724.0d,20.0d,70.5d]},{wait:10,position:[729.0d,20.0d,52.5d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[724.0d,20.0d,70.5d]},{wait:10,position:[729.0d,20.0d,61.5d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[724.0d,20.0d,70.5d]},{wait:10,position:[729.0d,20.0d,70.5d]}]}
scoreboard players reset #temp Time