execute store result score #entity Variant run random value 1..10
execute if score #entity Variant matches 1 run function luigis_mansion:spawn_entities/ghost/ghost_guy/blue
execute if score #entity Variant matches 2 run function luigis_mansion:spawn_entities/ghost/ghost_guy/brown
execute if score #entity Variant matches 3 run function luigis_mansion:spawn_entities/ghost/ghost_guy/green
execute if score #entity Variant matches 4 run function luigis_mansion:spawn_entities/ghost/ghost_guy/light_blue
execute if score #entity Variant matches 5 run function luigis_mansion:spawn_entities/ghost/ghost_guy/orange
execute if score #entity Variant matches 6 run function luigis_mansion:spawn_entities/ghost/ghost_guy/pink
execute if score #entity Variant matches 7 run function luigis_mansion:spawn_entities/ghost/ghost_guy/purple
execute if score #entity Variant matches 8 run function luigis_mansion:spawn_entities/ghost/ghost_guy/red
execute if score #entity Variant matches 9 run function luigis_mansion:spawn_entities/ghost/ghost_guy/white
execute if score #entity Variant matches 10 run function luigis_mansion:spawn_entities/ghost/ghost_guy/yellow
scoreboard players reset #entity Variant