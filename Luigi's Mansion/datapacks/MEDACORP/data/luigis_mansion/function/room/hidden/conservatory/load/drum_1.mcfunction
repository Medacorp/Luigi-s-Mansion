summon minecraft:marker 656 11 28 {Tags:["furniture","play_music","drum_1","no_ai","this_entity"]}
scoreboard players set @e[tag=this_entity,limit=1] Room 25
tag @e[tag=this_entity,limit=1] remove this_entity