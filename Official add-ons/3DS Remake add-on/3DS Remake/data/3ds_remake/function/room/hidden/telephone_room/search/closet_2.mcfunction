execute unless score #telephone_room_closet_2 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:56,tags:["drop_loot"]}
execute unless score #telephone_room_closet_2 Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["telephone_room_wooden_cabinet_2"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"telephone_room_wooden_cabinet_2",contents:{luigis_mansion:{gold_coin:20}}}
execute unless data storage luigis_mansion:data furniture.loot positioned 742.0 29 2 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 742.0 29 3 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #telephone_room_closet_2 Searched 1
data remove storage luigis_mansion:data furniture
tag @e[x=742.5,y=29,z=2.5,distance=..0.7,tag=ghost,tag=hidden] add spawn