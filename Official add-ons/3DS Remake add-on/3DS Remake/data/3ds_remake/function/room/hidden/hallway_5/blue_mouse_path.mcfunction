data modify storage luigis_mansion:data paths set value []
execute store result score #temp Time if entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"blue_mouse"}}},tag=visible,tag=!ignore_me,scores={Room=13}]
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[685.0d,11.0d,-13.5d]},{wait:10,position:[680.0d,11.0d,-13.5d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[685.0d,11.0d,-13.5d]},{wait:10,position:[680.0d,11.0d,-4.5d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[685.0d,11.0d,-13.5d]},{wait:10,position:[680.0d,11.0d,-9.0d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[685.0d,11.0d,-4.5d]},{wait:10,position:[680.0d,11.0d,-13.5d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[685.0d,11.0d,-4.5d]},{wait:10,position:[680.0d,11.0d,-4.5d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[685.0d,11.0d,-4.5d]},{wait:10,position:[680.0d,11.0d,-9.0d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[685.0d,11.0d,-9.0d]},{wait:10,position:[680.0d,11.0d,-13.5d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[685.0d,11.0d,-9.0d]},{wait:10,position:[680.0d,11.0d,-4.5d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[685.0d,11.0d,-9.0d]},{wait:10,position:[680.0d,11.0d,-9.0d]}]}
#Other direction
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[680.0d,11.0d,-13.5d]},{wait:10,position:[685.0d,11.0d,-13.5d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[680.0d,11.0d,-4.5d]},{wait:10,position:[685.0d,11.0d,-13.5d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[680.0d,11.0d,-9.0d]},{wait:10,position:[685.0d,11.0d,-13.5d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[680.0d,11.0d,-13.5d]},{wait:10,position:[685.0d,11.0d,-4.5d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[680.0d,11.0d,-4.5d]},{wait:10,position:[685.0d,11.0d,-4.5d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[680.0d,11.0d,-9.0d]},{wait:10,position:[685.0d,11.0d,-4.5d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[680.0d,11.0d,-13.5d]},{wait:10,position:[685.0d,11.0d,-9.0d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[680.0d,11.0d,-4.5d]},{wait:10,position:[685.0d,11.0d,-9.0d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[680.0d,11.0d,-9.0d]},{wait:10,position:[685.0d,11.0d,-9.0d]}]}
scoreboard players reset #temp Time