execute store result score #entity Variant run random value 1..10
execute if score #entity Variant matches 1 run function e3_demo:spawn_entities/vacuumable/bat/blue
execute if score #entity Variant matches 2 run function e3_demo:spawn_entities/vacuumable/bat/brown
execute if score #entity Variant matches 3 run function e3_demo:spawn_entities/vacuumable/bat/green
execute if score #entity Variant matches 4 run function e3_demo:spawn_entities/vacuumable/bat/light_blue
execute if score #entity Variant matches 5 run function e3_demo:spawn_entities/vacuumable/bat/orange
execute if score #entity Variant matches 6 run function e3_demo:spawn_entities/vacuumable/bat/pink
execute if score #entity Variant matches 7 run function e3_demo:spawn_entities/vacuumable/bat/purple
execute if score #entity Variant matches 8 run function e3_demo:spawn_entities/vacuumable/bat/red
execute if score #entity Variant matches 9 run function e3_demo:spawn_entities/vacuumable/bat/white
execute if score #entity Variant matches 10 run function e3_demo:spawn_entities/vacuumable/bat/yellow
scoreboard players reset #entity Variant