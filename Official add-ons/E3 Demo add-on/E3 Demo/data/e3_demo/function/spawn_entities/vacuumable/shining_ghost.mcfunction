execute store result score #entity Variant run random value 1..10
execute if score #entity Variant matches 1 run function e3_demo:spawn_entities/vacuumable/shining_ghost/blue
execute if score #entity Variant matches 2 run function e3_demo:spawn_entities/vacuumable/shining_ghost/brown
execute if score #entity Variant matches 3 run function e3_demo:spawn_entities/vacuumable/shining_ghost/green
execute if score #entity Variant matches 4 run function e3_demo:spawn_entities/vacuumable/shining_ghost/light_blue
execute if score #entity Variant matches 5 run function e3_demo:spawn_entities/vacuumable/shining_ghost/orange
execute if score #entity Variant matches 6 run function e3_demo:spawn_entities/vacuumable/shining_ghost/pink
execute if score #entity Variant matches 7 run function e3_demo:spawn_entities/vacuumable/shining_ghost/purple
execute if score #entity Variant matches 8 run function e3_demo:spawn_entities/vacuumable/shining_ghost/red
execute if score #entity Variant matches 9 run function e3_demo:spawn_entities/vacuumable/shining_ghost/white
execute if score #entity Variant matches 10 run function e3_demo:spawn_entities/vacuumable/shining_ghost/yellow
scoreboard players reset #entity Variant