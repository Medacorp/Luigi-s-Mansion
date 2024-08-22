data modify storage luigis_mansion:data paths set value []
execute store result score #temp Time if entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"blue_mouse"}}},tag=visible,tag=!ignore_me,scores={Room=23}]
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[741.5d,11.0d,72.0d]},{wait:10,position:[742.5d,11.0d,55.0d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[745.5d,11.0d,69.5d]},{wait:10,position:[742.5d,11.0d,55.0d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[749.5d,11.0d,70.5d]},{wait:10,position:[742.5d,11.0d,55.0d]}]}
#Other direction
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[742.5d,11.0d,55.0d]},{wait:10,position:[741.5d,11.0d,72.0d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[742.5d,11.0d,55.0d]},{wait:10,position:[745.5d,11.0d,69.5d]}]}
execute if score #temp Time matches 0 run data modify storage luigis_mansion:data paths append value {force_move:1b,steps:[{instant:1b,wait:10,position:[742.5d,11.0d,55.0d]},{wait:10,position:[749.5d,11.0d,70.5d]}]}
scoreboard players reset #temp Time