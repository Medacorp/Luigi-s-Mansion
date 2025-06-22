execute positioned 739 22 -19 run tag @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"speedy_spirit"}}},distance=..0.7,limit=1] add remove_from_existence
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["the_twins_room_speedy_spirit"]} run data modify storage luigis_mansion:data entity set value {room:49,no_hidden_move:1b,disappear_on_vanish:"the_twins_room_speedy_spirit",loot:{drop_at_0:{name:"the_twins_room_speedy_spirit"}},spawn:3b}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["the_twins_room_speedy_spirit"]} run function luigis_mansion:entities/speedy_spirit/give_money/silver_diamond
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["the_twins_room_speedy_spirit"]} positioned 739 22 -19 unless entity @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"speedy_spirit"}}},distance=0.7..,scores={Room=49},limit=1] run function luigis_mansion:spawn_entities/ghost/speedy_spirit
data remove storage luigis_mansion:data entity
setblock 738 20 -25 minecraft:barrier
setblock 742 20 -31 minecraft:barrier
setblock 747 20 -28 minecraft:barrier
setblock 747 20 -22 minecraft:barrier
setblock 742 20 -19 minecraft:barrier
data modify storage luigis_mansion:data entity set value {room:49,spawn:3b,tags:["portrait_ghost"]}
execute positioned 744 20 -26 run function luigis_mansion:spawn_entities/ghost/empty_marker
data modify storage luigis_mansion:data entity set value {room:49,spawn:3b,tags:["portrait_ghost"]}
execute positioned 744 20 -26 run function luigis_mansion:spawn_entities/ghost/empty_marker

summon minecraft:marker 738 20 -25 {Tags:["option"]}
summon minecraft:marker 742 20 -31 {Tags:["option"]}
summon minecraft:marker 747 20 -28 {Tags:["option"]}
summon minecraft:marker 747 20 -22 {Tags:["option"]}
summon minecraft:marker 742 20 -19 {Tags:["option"]}
tag @e[type=minecraft:marker,sort=random,tag=option,limit=2] add selected
execute as @e[type=minecraft:marker,tag=option,tag=selected,limit=2] at @s run teleport @e[type=minecraft:marker,x=744.5,y=20,z=-25.5,distance=..0.7,tag=ghost,tag=hidden,limit=1] ~ ~ ~
kill @e[type=minecraft:marker,tag=option]

data modify storage luigis_mansion:data furniture set value {room:49,searchable:["interact"],sound:{namespace:"luigis_mansion",id:"heavy_generic"},no_dust:1b,tags:["hide_and_seek_box"]}
execute if entity @e[tag=ghost,tag=hidden,x=738.5,y=20,z=-24.5,distance=..0.7,limit=1] run data modify storage luigis_mansion:data furniture.shake_animation set value ["vacuum","fire","water","ice"]
execute positioned 738 20 -25 rotated -90 0 run function luigis_mansion:spawn_furniture/hide_and_seek_box/present
data modify storage luigis_mansion:data furniture set value {room:49,searchable:["interact"],sound:{namespace:"luigis_mansion",id:"heavy_generic"},no_dust:1b,tags:["hide_and_seek_box"]}
execute if entity @e[tag=ghost,tag=hidden,x=742.5,y=20,z=-30.5,distance=..0.7,limit=1] run data modify storage luigis_mansion:data furniture.shake_animation set value ["vacuum","fire","water","ice"]
execute positioned 742 20 -31 rotated -90 0 run function luigis_mansion:spawn_furniture/hide_and_seek_box/dice
data modify storage luigis_mansion:data furniture set value {room:49,searchable:["interact"],sound:{namespace:"luigis_mansion",id:"heavy_generic"},no_dust:1b,tags:["hide_and_seek_box"]}
execute if entity @e[tag=ghost,tag=hidden,x=747.5,y=20,z=-27.5,distance=..0.7,limit=1] run data modify storage luigis_mansion:data furniture.shake_animation set value ["vacuum","fire","water","ice"]
execute positioned 747 20 -28 rotated -90 0 run function luigis_mansion:spawn_furniture/hide_and_seek_box/dot
data modify storage luigis_mansion:data furniture set value {room:49,searchable:["interact"],sound:{namespace:"luigis_mansion",id:"heavy_generic"},no_dust:1b,tags:["hide_and_seek_box"]}
execute if entity @e[tag=ghost,tag=hidden,x=747.5,y=20,z=-21.5,distance=..0.7,limit=1] run data modify storage luigis_mansion:data furniture.shake_animation set value ["vacuum","fire","water","ice"]
execute positioned 747 20 -22 rotated -90 0 run function luigis_mansion:spawn_furniture/hide_and_seek_box/star
data modify storage luigis_mansion:data furniture set value {room:49,searchable:["interact"],sound:{namespace:"luigis_mansion",id:"heavy_generic"},no_dust:1b,tags:["hide_and_seek_box"]}
execute if entity @e[tag=ghost,tag=hidden,x=742.5,y=20,z=-18.5,distance=..0.7,limit=1] run data modify storage luigis_mansion:data furniture.shake_animation set value ["vacuum","fire","water","ice"]
execute positioned 742 20 -19 rotated -90 0 run function luigis_mansion:spawn_furniture/hide_and_seek_box/lines
scoreboard players set #the_twins_room Wave 5