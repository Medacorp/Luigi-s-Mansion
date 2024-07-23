execute unless score #courtyard_statue_2 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:30,tags:["drop_loot"]}
execute unless score #courtyard_statue_2 Searched matches 1 unless data storage luigis_mansion:data current_state.current_data{money_spawned:["courtyard_vase_carrying_woman_statue"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"courtyard_vase_carrying_woman_statue",contents:{luigis_mansion:{gold_coin:20,bill:20}}}
execute unless data storage luigis_mansion:data furniture.loot positioned 648 104 36 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 649 105 36 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #courtyard_statue_2 Searched 1
data remove storage luigis_mansion:data furniture