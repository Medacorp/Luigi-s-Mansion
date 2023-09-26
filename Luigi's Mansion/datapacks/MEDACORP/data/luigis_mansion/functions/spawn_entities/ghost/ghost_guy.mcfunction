execute store result score #temp Variant run roll value 1..10
execute if score #temp Variant matches 1 run function luigis_mansion:spawn_entities/ghost/ghost_guy/blue
execute if score #temp Variant matches 2 run function luigis_mansion:spawn_entities/ghost/ghost_guy/brown
execute if score #temp Variant matches 3 run function luigis_mansion:spawn_entities/ghost/ghost_guy/green
execute if score #temp Variant matches 4 run function luigis_mansion:spawn_entities/ghost/ghost_guy/light_blue
execute if score #temp Variant matches 5 run function luigis_mansion:spawn_entities/ghost/ghost_guy/orange
execute if score #temp Variant matches 6 run function luigis_mansion:spawn_entities/ghost/ghost_guy/pink
execute if score #temp Variant matches 7 run function luigis_mansion:spawn_entities/ghost/ghost_guy/purple
execute if score #temp Variant matches 8 run function luigis_mansion:spawn_entities/ghost/ghost_guy/red
execute if score #temp Variant matches 9 run function luigis_mansion:spawn_entities/ghost/ghost_guy/white
execute if score #temp Variant matches 10 run function luigis_mansion:spawn_entities/ghost/ghost_guy/yellow
scoreboard players reset #temp Variant