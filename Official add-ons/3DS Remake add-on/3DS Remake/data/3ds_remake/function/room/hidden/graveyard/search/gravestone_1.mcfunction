execute unless score #graveyard_gravestone_1 Searched matches 1 run data modify storage luigis_mansion:data furniture set value {room:29,tags:["drop_loot"],loot:{contents:{luigis_mansion:{poison_mushroom:1}}}}
execute unless data storage luigis_mansion:data furniture.loot positioned 655.0 103 53.0 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 655.0 104.5 53.0 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
scoreboard players set #graveyard_gravestone_1 Searched 1
data remove storage luigis_mansion:data furniture