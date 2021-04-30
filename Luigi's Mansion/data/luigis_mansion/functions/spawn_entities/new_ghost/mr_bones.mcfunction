summon minecraft:marker ~ ~ ~ {Tags:["this_entity","ghost_marker","ghost","mr_bones","no_height_change"],Rotation:[0.0f,90.0f]}
execute store result score @e[tag=this_entity,limit=1] Health run data get storage luigis_mansion:data current_state.current_data.ghost_health.mr_bones
tag @e[tag=this_entity,limit=1] remove this_entity