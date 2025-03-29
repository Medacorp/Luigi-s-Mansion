execute store result score #entity Variant run random value 1..10
execute if score #entity Variant matches 1 run function e3_demo:spawn_entities/vacuumable/flying_fish/blue
execute if score #entity Variant matches 2 run function e3_demo:spawn_entities/vacuumable/flying_fish/brown
execute if score #entity Variant matches 3 run function e3_demo:spawn_entities/vacuumable/flying_fish/green
execute if score #entity Variant matches 4 run function e3_demo:spawn_entities/vacuumable/flying_fish/light_blue
execute if score #entity Variant matches 5 run function e3_demo:spawn_entities/vacuumable/flying_fish/orange
execute if score #entity Variant matches 6 run function e3_demo:spawn_entities/vacuumable/flying_fish/pink
execute if score #entity Variant matches 7 run function e3_demo:spawn_entities/vacuumable/flying_fish/purple
execute if score #entity Variant matches 8 run function e3_demo:spawn_entities/vacuumable/flying_fish/red
execute if score #entity Variant matches 9 run function e3_demo:spawn_entities/vacuumable/flying_fish/white
execute if score #entity Variant matches 10 run function e3_demo:spawn_entities/vacuumable/flying_fish/yellow
scoreboard players reset #entity Variant