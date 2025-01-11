summon minecraft:marker 649 104 47 {Rotation:[-90.0f,0.0f],Tags:["bogmires_gravestone","no_ai","this_entity"]}
scoreboard players set @e[tag=this_entity,limit=1] Room 29
tag @e[tag=this_entity,limit=1] remove this_entity