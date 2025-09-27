data modify storage luigis_mansion:data entity set value {room:15,paths:"e3_demo:room/original/kitchen/blue_mouse_path"}
execute positioned 701 11 73 run function e3_demo:spawn_entities/vacuumable/mouse/white
data modify storage luigis_mansion:data entity set value {room:15,paths:"e3_demo:room/original/kitchen/blue_mouse_path"}
execute positioned 701 11 86 run function e3_demo:spawn_entities/vacuumable/mouse/white
scoreboard players set #kitchen Vacuumables 1