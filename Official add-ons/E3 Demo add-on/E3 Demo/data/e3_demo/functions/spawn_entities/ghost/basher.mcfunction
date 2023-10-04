execute store result score #temp Variant run random value 1..10
execute if score #temp Variant matches 1 run function e3_demo:spawn_entities/ghost/basher/blue
execute if score #temp Variant matches 2 run function e3_demo:spawn_entities/ghost/basher/brown
execute if score #temp Variant matches 3 run function e3_demo:spawn_entities/ghost/basher/green
execute if score #temp Variant matches 4 run function e3_demo:spawn_entities/ghost/basher/light_blue
execute if score #temp Variant matches 5 run function e3_demo:spawn_entities/ghost/basher/orange
execute if score #temp Variant matches 6 run function e3_demo:spawn_entities/ghost/basher/pink
execute if score #temp Variant matches 7 run function e3_demo:spawn_entities/ghost/basher/purple
execute if score #temp Variant matches 8 run function e3_demo:spawn_entities/ghost/basher/red
execute if score #temp Variant matches 9 run function e3_demo:spawn_entities/ghost/basher/white
execute if score #temp Variant matches 10 run function e3_demo:spawn_entities/ghost/basher/yellow
scoreboard players reset #temp Variant