execute unless data storage luigis_mansion:data current_state.current_data.money_spawned{twins_room_speedy_spirit:1b} positioned 739 22 -19 run function luigis_mansion:spawn_entities/ghost/speedy_spirit
setblock 738 20 -25 minecraft:chest[facing=east,type=single]{LootTable:"luigis_mansion:search"}
setblock 742 20 -31 minecraft:chest[facing=east,type=single]{LootTable:"luigis_mansion:search"}
setblock 747 20 -28 minecraft:chest[facing=east,type=single]{LootTable:"luigis_mansion:search"}
setblock 747 20 -22 minecraft:chest[facing=east,type=single]{LootTable:"luigis_mansion:search"}
setblock 742 20 -19 minecraft:chest[facing=east,type=single]{LootTable:"luigis_mansion:search"}
execute positioned 744 20 -26 run function luigis_mansion:spawn_entities/ghost/empty_marker
execute positioned 744 20 -26 run function luigis_mansion:spawn_entities/ghost/empty_marker

summon minecraft:marker 738 20 -25 {Tags:["option"]}
summon minecraft:marker 744 20 -31 {Tags:["option"]}
summon minecraft:marker 747 20 -28 {Tags:["option"]}
summon minecraft:marker 747 20 -22 {Tags:["option"]}
summon minecraft:marker 744 20 -19 {Tags:["option"]}
tag @e[type=minecraft:marker,sort=random,tag=option,limit=1] add selected
execute at @e[type=minecraft:marker,tag=option,tag=selected,limit=1] run teleport @e[type=minecraft:marker,x=744.5,y=20,z=-25.5,distance=..0.7,tag=ghost,tag=hidden,limit=1] ~ ~ ~
kill @e[type=minecraft:marker,tag=option,tag=selected,limit=1]
tag @e[type=minecraft:marker,sort=random,tag=option,limit=1] add selected
execute at @e[type=minecraft:marker,tag=option,tag=selected,limit=1] run teleport @e[type=minecraft:marker,x=744.5,y=20,z=-25.5,distance=..0.7,tag=ghost,tag=hidden,limit=1] ~ ~ ~
kill @e[type=minecraft:marker,tag=option]
scoreboard players set #twins_room Wave 5