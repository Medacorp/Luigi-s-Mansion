execute unless entity @e[tag=shivers,limit=1] positioned 745 11 67 facing 742 11 69 rotated ~-180 ~ run function luigis_mansion:spawn_entities/portrait_ghost/shivers
scoreboard players set @e[x=745.5,y=11,z=67.5,tag=shivers,distance=..0.7,limit=1] PathStep 53
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["butlers_room_speedy_spirit"]} positioned 747 11 55 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
execute positioned 747 11 55 as @e[tag=speedy_spirit,distance=..0.7] run function luigis_mansion:entities/speedy_spirit/give_money/green_emerald
execute positioned 747 11 55 as @e[tag=speedy_spirit,distance=..0.7] run data modify entity @s ArmorItems[3].tag.loot merge value {name:"butlers_room_speedy_spirit"}
scoreboard players set #butlers_room Wave 1