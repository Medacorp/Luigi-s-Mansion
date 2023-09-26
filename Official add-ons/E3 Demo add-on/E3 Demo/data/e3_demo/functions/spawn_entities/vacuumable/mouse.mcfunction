execute store result score #temp Variant run roll value 1..10
execute if score #temp Variant matches 1 run function e3_demo:spawn_entities/vacuumable/mouse/blue
execute if score #temp Variant matches 2 run function e3_demo:spawn_entities/vacuumable/mouse/brown
execute if score #temp Variant matches 3 run function e3_demo:spawn_entities/vacuumable/mouse/green
execute if score #temp Variant matches 4 run function e3_demo:spawn_entities/vacuumable/mouse/light_blue
execute if score #temp Variant matches 5 run function e3_demo:spawn_entities/vacuumable/mouse/orange
execute if score #temp Variant matches 6 run function e3_demo:spawn_entities/vacuumable/mouse/pink
execute if score #temp Variant matches 7 run function e3_demo:spawn_entities/vacuumable/mouse/purple
execute if score #temp Variant matches 8 run function e3_demo:spawn_entities/vacuumable/mouse/red
execute if score #temp Variant matches 9 run function e3_demo:spawn_entities/vacuumable/mouse/white
execute if score #temp Variant matches 10 run function e3_demo:spawn_entities/vacuumable/mouse/yellow
scoreboard players reset #temp Variant