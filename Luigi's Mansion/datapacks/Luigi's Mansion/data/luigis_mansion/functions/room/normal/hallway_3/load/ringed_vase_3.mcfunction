data modify storage luigis_mansion:data furniture set value {searchable:["interact","vacuum"],shake_animation:["interact","vacuum"],sound:6,scan_message:'{"translate":"luigis_mansion:message.player.scan_furniture.73"}'}
summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
summon minecraft:marker ~ ~ ~ {Tags:["chance","poison_mushroom"],Duration:1}
summon minecraft:marker ~ ~ ~ {Tags:["chance","nothing"],Duration:1}
summon minecraft:marker ~ ~ ~ {Tags:["chance","small_heart"],Duration:1}
summon minecraft:marker ~ ~ ~ {Tags:["chance","money"],Duration:1}
tag @e[type=minecraft:marker,tag=chance,sort=random,limit=1] add selected
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=poison_mushroom] run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{poison_mushroom:1}}}
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=small_heart] run data modify storage luigis_mansion:data furniture.loot set value {contents:{luigis_mansion:{small_heart:1}}}
execute if entity @e[type=minecraft:marker,tag=chance,tag=selected,tag=money] unless data storage luigis_mansion:data current_state.current_data{money_spawned:["hallway_3_ringed_vase_3"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"hallway_3_ringed_vase_3",contents:{luigis_mansion:{gold_coin:10}}}
kill @e[type=minecraft:marker,tag=chance]
execute positioned 714 12.5 -28 rotated -90 0 run function luigis_mansion:spawn_furniture/ringed_vase