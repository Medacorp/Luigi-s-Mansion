summon minecraft:marker 674 102 53 {Rotation:[-135.0f,0.0f],Tags:["furniture","dog_house","no_ai","this_entity"]}
scoreboard players set @e[tag=this_entity,limit=1] Room 28
tag @e[tag=this_entity,limit=1] remove this_entity