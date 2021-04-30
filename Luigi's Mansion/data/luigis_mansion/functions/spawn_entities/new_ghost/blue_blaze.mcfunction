summon minecraft:marker ~ ~ ~ {Tags:["this_entity","ghost_marker","ghost","blue_blaze","watery_heart","no_height_change"],Rotation:[0.0f,90.0f]}
execute store result score @e[tag=this_entity,limit=1] Health run data get storage luigis_mansion:data current_state.current_data.ghost_health.blue_blaze
tag @e[tag=this_entity,limit=1] remove this_entity