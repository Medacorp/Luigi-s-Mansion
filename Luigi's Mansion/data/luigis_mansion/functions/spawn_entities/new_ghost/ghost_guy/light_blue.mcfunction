summon minecraft:area_effect_cloud ~ ~ ~ {Duration:1000000,Tags:["this_entity","ghost_marker","ghost","ghost_guy","light_blue","no_height_change"],Rotation:[0.0f,90.0f]}
scoreboard players set @e[tag=this_entity,limit=1] Health 2000
scoreboard players operation @e[tag=this_entity,limit=1] Health *= #multiply_health Selected
scoreboard players operation @e[tag=this_entity,limit=1] Health /= #100 Constants
scoreboard players operation @e[tag=this_entity,limit=1] Health += #extra_health Selected
tag @e[tag=this_entity,limit=1] remove this_entity