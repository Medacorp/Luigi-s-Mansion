summon minecraft:marker 658 11 -4 {Tags:["furniture","play_music","saxophone","no_ai","this_entity"]}
scoreboard players set @e[tag=this_entity,limit=1] Room 25
tag @e[tag=this_entity,limit=1] remove this_entity