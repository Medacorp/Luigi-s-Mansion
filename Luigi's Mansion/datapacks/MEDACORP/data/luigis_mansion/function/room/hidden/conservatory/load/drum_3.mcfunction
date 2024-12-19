summon minecraft:marker 656 11 32 {Tags:["furniture","play_music","drum_3","no_ai","this_entity"]}
scoreboard players set @e[tag=this_entity,limit=1] Room 25
tag @e[tag=this_entity,limit=1] remove this_entity