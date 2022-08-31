execute positioned 739 22 34 run tag @e[tag=speedy_spirit,distance=..0.7,limit=1] add remove_from_existence
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["the_twins_room_speedy_spirit"]} positioned 739 22 34 unless entity @e[tag=speedy_spirit,distance=..0.7,limit=1] run function luigis_mansion:spawn_entities/ghost/speedy_spirit
execute positioned 739 22 34 as @e[tag=speedy_spirit,distance=..0.7] run function luigis_mansion:entities/speedy_spirit/give_money/bills
execute positioned 739 22 34 as @e[tag=speedy_spirit,distance=..0.7] run data modify entity @s ArmorItems[3].tag.loot merge value {name:"the_twins_room_speedy_spirit"}
setblock 738 20 40 minecraft:chest[facing=east,type=single]{LootTable:"luigis_mansion:search"}
setblock 742 20 46 minecraft:chest[facing=east,type=single]{LootTable:"luigis_mansion:search"}
setblock 747 20 43 minecraft:chest[facing=east,type=single]{LootTable:"luigis_mansion:search"}
setblock 747 20 37 minecraft:chest[facing=east,type=single]{LootTable:"luigis_mansion:search"}
setblock 742 20 34 minecraft:chest[facing=east,type=single]{LootTable:"luigis_mansion:search"}
execute positioned 744 20 41 run function luigis_mansion:spawn_entities/ghost/empty_marker
execute positioned 744 20 41 run function luigis_mansion:spawn_entities/ghost/empty_marker
tag @e[type=minecraft:marker,x=744.5,y=20,z=41.5,distance=..0.7,tag=ghost,tag=hidden] add portrait_ghost

summon minecraft:marker 738 20 40 {Tags:["option"]}
summon minecraft:marker 742 20 46 {Tags:["option"]}
summon minecraft:marker 747 20 43 {Tags:["option"]}
summon minecraft:marker 747 20 37 {Tags:["option"]}
summon minecraft:marker 742 20 34 {Tags:["option"]}
tag @e[type=minecraft:marker,sort=random,tag=option,limit=1] add selected
execute at @e[type=minecraft:marker,tag=option,tag=selected,limit=1] run teleport @e[type=minecraft:marker,x=744.5,y=20,z=41.5,distance=..0.7,tag=ghost,tag=hidden,limit=1] ~ ~ ~
kill @e[type=minecraft:marker,tag=option,tag=selected,limit=1]
tag @e[type=minecraft:marker,sort=random,tag=option,limit=1] add selected
execute at @e[type=minecraft:marker,tag=option,tag=selected,limit=1] run teleport @e[type=minecraft:marker,x=744.5,y=20,z=41.5,distance=..0.7,tag=ghost,tag=hidden,limit=1] ~ ~ ~
kill @e[type=minecraft:marker,tag=option]
scoreboard players set #the_twins_room Wave 5