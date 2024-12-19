summon minecraft:marker 656.0 11 22.0 {Tags:["furniture","play_music","harp","no_ai","this_entity"]}
scoreboard players set @e[tag=this_entity,limit=1] Room 25
tag @e[tag=this_entity,limit=1] remove this_entity