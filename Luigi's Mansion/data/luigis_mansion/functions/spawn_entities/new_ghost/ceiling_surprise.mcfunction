summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1000000,Tags:["this_entity","ghost_marker","ghost","ceiling_surprise","ceiling_ghost","no_height_change"],Rotation:[0.0f,90.0f]}
scoreboard players set @e[tag=this_entity,limit=1] Health 1
scoreboard players operation @e[tag=this_entity,limit=1] Health += #extra_health Selected
tag @e[tag=this_entity,limit=1] remove this_entity