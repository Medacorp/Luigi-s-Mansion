summon minecraft:marker ~ ~ ~ {Tags:["this_entity","ghost_marker","ghost","gold_dummy_ghost","no_height_change"],Rotation:[0.0f,90.0f]}
scoreboard players set @e[tag=this_entity,limit=1] Health 1000
tag @e[tag=this_entity,limit=1] remove this_entity