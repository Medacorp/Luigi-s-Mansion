execute store result score #temp Variant run roll value 1..10
execute if score #temp Variant matches 1 run function e3_demo:spawn_entities/ghost/body_slammer/blue
execute if score #temp Variant matches 2 run function e3_demo:spawn_entities/ghost/body_slammer/brown
execute if score #temp Variant matches 3 run function e3_demo:spawn_entities/ghost/body_slammer/green
execute if score #temp Variant matches 4 run function e3_demo:spawn_entities/ghost/body_slammer/light_blue
execute if score #temp Variant matches 5 run function e3_demo:spawn_entities/ghost/body_slammer/orange
execute if score #temp Variant matches 6 run function e3_demo:spawn_entities/ghost/body_slammer/pink
execute if score #temp Variant matches 7 run function e3_demo:spawn_entities/ghost/body_slammer/purple
execute if score #temp Variant matches 8 run function e3_demo:spawn_entities/ghost/body_slammer/red
execute if score #temp Variant matches 9 run function e3_demo:spawn_entities/ghost/body_slammer/white
execute if score #temp Variant matches 10 run function e3_demo:spawn_entities/ghost/body_slammer/yellow
scoreboard players reset #temp Variant