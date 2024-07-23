place template luigis_mansion:boneyard/plant_5 676 102 -26 none left_right
data modify storage luigis_mansion:data furniture set value {room:28,tags:["drop_loot"]}
execute unless data storage luigis_mansion:data current_state.current_data{money_spawned:["boneyard_giant_flower"]} run data modify storage luigis_mansion:data furniture.loot set value {name:"boneyard_giant_flower",contents:{luigis_mansion:{gold_coin:30,bill:20,gold_bar:2,gold_diamond:1}}}
execute unless data storage luigis_mansion:data furniture.loot positioned 678 105 -28 run function luigis_mansion:blocks/dust
execute if data storage luigis_mansion:data furniture.loot positioned 678 105 -28 run function luigis_mansion:spawn_furniture/room_clear_loot_dropper
data remove storage luigis_mansion:data furniture
playsound luigis_mansion:music.solve_puzzle music @a[scores={Room=28}] ~ ~ ~ 1000
scoreboard players set @a[scores={Room=28,Music=..29}] Music 30
data modify storage luigis_mansion:data current_state.current_data.technical_data merge value {watered_boneyard_plant_3:1b}
function 3ds_remake:selection_menu/gallery_trophy/complete/normal/task_6