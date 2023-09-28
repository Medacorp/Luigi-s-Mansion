execute positioned 739 22 -19 run tag @e[nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"speedy_spirit"}}]},distance=..0.7,limit=1] add remove_from_existence
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["the_twins_room_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/silver_diamond
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["the_twins_room_speedy_spirit"]} run data modify storage luigis_mansion:data entity.loot.name set value "the_twins_room_speedy_spirit"
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["the_twins_room_speedy_spirit"]} positioned 739 22 -19 unless entity @e[nbt={ArmorItems:[{tag:{namespace:"luigis_mansion",id:"speedy_spirit"}}]},distance=..0.7,limit=1] run function luigis_mansion:spawn_entities/ghost/speedy_spirit
data remove storage luigis_mansion:data entity
setblock 738 20 -25 minecraft:barrier
setblock 742 20 -31 minecraft:barrier
setblock 747 20 -28 minecraft:barrier
setblock 747 20 -22 minecraft:barrier
setblock 742 20 -19 minecraft:barrier
execute positioned 744 20 -26 run function luigis_mansion:spawn_entities/ghost/empty_marker
execute positioned 744 20 -26 run function luigis_mansion:spawn_entities/ghost/empty_marker
tag @e[type=minecraft:marker,x=744.5,y=20,z=-25.5,distance=..0.7,tag=ghost,tag=hidden] add portrait_ghost

summon minecraft:marker 738 20 -25 {Tags:["option"]}
summon minecraft:marker 742 20 -31 {Tags:["option"]}
summon minecraft:marker 747 20 -28 {Tags:["option"]}
summon minecraft:marker 747 20 -22 {Tags:["option"]}
summon minecraft:marker 742 20 -19 {Tags:["option"]}
tag @e[type=minecraft:marker,sort=random,tag=option,limit=1] add selected
execute at @e[type=minecraft:marker,tag=option,tag=selected,limit=1] run teleport @e[type=minecraft:marker,x=744.5,y=20,z=-25.5,distance=..0.7,tag=ghost,tag=hidden,limit=1] ~ ~ ~
kill @e[type=minecraft:marker,tag=option,tag=selected,limit=1]
tag @e[type=minecraft:marker,sort=random,tag=option,limit=1] add selected
execute at @e[type=minecraft:marker,tag=option,tag=selected,limit=1] run teleport @e[type=minecraft:marker,x=744.5,y=20,z=-25.5,distance=..0.7,tag=ghost,tag=hidden,limit=1] ~ ~ ~
kill @e[type=minecraft:marker,tag=option]

data modify storage luigis_mansion:data furniture set value {searchable:["interact"],shake_animation:["interact"],sound:1,no_dust:1b}
execute if entity @e[tag=ghost,tag=hidden,x=738.5,y=20,z=-24.5,distance=..0.7,limit=1] run data modify storage luigis_mansion:data furniture.search_animation set value ["vacuum","fire","water","ice"]
execute positioned 738 20 -25 rotated -90 0 run function luigis_mansion:spawn_furniture/hide_and_seek_box/variant_2
data modify storage luigis_mansion:data furniture set value {searchable:["interact"],shake_animation:["interact"],sound:1,no_dust:1b}
execute if entity @e[tag=ghost,tag=hidden,x=742.5,y=20,z=-30.5,distance=..0.7,limit=1] run data modify storage luigis_mansion:data furniture.search_animation set value ["vacuum","fire","water","ice"]
execute positioned 742 20 -31 rotated -90 0 run function luigis_mansion:spawn_furniture/hide_and_seek_box/variant_0
data modify storage luigis_mansion:data furniture set value {searchable:["interact"],shake_animation:["interact"],sound:1,no_dust:1b}
execute if entity @e[tag=ghost,tag=hidden,x=747.5,y=20,z=-27.5,distance=..0.7,limit=1] run data modify storage luigis_mansion:data furniture.search_animation set value ["vacuum","fire","water","ice"]
execute positioned 747 20 -28 rotated -90 0 run function luigis_mansion:spawn_furniture/hide_and_seek_box/variant_1
data modify storage luigis_mansion:data furniture set value {searchable:["interact"],shake_animation:["interact"],sound:1,no_dust:1b}
execute if entity @e[tag=ghost,tag=hidden,x=747.5,y=20,z=-21.5,distance=..0.7,limit=1] run data modify storage luigis_mansion:data furniture.search_animation set value ["vacuum","fire","water","ice"]
execute positioned 747 20 -22 rotated -90 0 run function luigis_mansion:spawn_furniture/hide_and_seek_box/variant_3
data modify storage luigis_mansion:data furniture set value {searchable:["interact"],shake_animation:["interact"],sound:1,no_dust:1b}
execute if entity @e[tag=ghost,tag=hidden,x=742.5,y=20,z=-18.5,distance=..0.7,limit=1] run data modify storage luigis_mansion:data furniture.search_animation set value ["vacuum","fire","water","ice"]
execute positioned 742 20 -19 rotated -90 0 run function luigis_mansion:spawn_furniture/hide_and_seek_box/variant_4
scoreboard players set #the_twins_room Wave 5