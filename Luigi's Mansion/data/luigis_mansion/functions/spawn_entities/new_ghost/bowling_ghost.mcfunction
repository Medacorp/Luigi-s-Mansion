summon minecraft:marker ~ ~ ~ {Tags:["this_entity","ghost_marker","ghost","bowling_ghost","no_height_change"],Rotation:[0.0f,90.0f]}
execute store result score @e[tag=this_entity,limit=1] Health run data get storage luigis_mansion:data current_state.current_data.ghost_health.bowling_ghost
tag @e[tag=this_entity,limit=1] remove this_entity