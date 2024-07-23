execute unless score #roof_pillar_11 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:63,tags:["drop_loot"]}
execute unless score #roof_pillar_11 Searched matches 1 run function 3ds_remake:entities/furniture/loot_chance/p15
execute unless data storage luigis_mansion:data furniture.loot positioned 692 132 -26 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 694 132 -26 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #roof_pillar_11 Searched 1
data remove storage luigis_mansion:data furniture