summon minecraft:marker ~ ~ ~ {Tags:["selection","blue"]}
summon minecraft:marker ~ ~ ~ {Tags:["selection","brown"]}
summon minecraft:marker ~ ~ ~ {Tags:["selection","green"]}
summon minecraft:marker ~ ~ ~ {Tags:["selection","light_blue"]}
summon minecraft:marker ~ ~ ~ {Tags:["selection","orange"]}
summon minecraft:marker ~ ~ ~ {Tags:["selection","pink"]}
summon minecraft:marker ~ ~ ~ {Tags:["selection","purple"]}
summon minecraft:marker ~ ~ ~ {Tags:["selection","red"]}
summon minecraft:marker ~ ~ ~ {Tags:["selection","white"]}
summon minecraft:marker ~ ~ ~ {Tags:["selection","yellow"]}
tag @e[tag=selection,sort=random,limit=1] add selected
execute if entity @e[tag=selection,tag=selected,tag=blue] run function e3_demo:spawn_entities/vacuumable/shining_ghost/blue
execute if entity @e[tag=selection,tag=selected,tag=brown] run function e3_demo:spawn_entities/vacuumable/shining_ghost/brown
execute if entity @e[tag=selection,tag=selected,tag=green] run function e3_demo:spawn_entities/vacuumable/shining_ghost/green
execute if entity @e[tag=selection,tag=selected,tag=light_blue] run function e3_demo:spawn_entities/vacuumable/shining_ghost/light_blue
execute if entity @e[tag=selection,tag=selected,tag=orange] run function e3_demo:spawn_entities/vacuumable/shining_ghost/orange
execute if entity @e[tag=selection,tag=selected,tag=pink] run function e3_demo:spawn_entities/vacuumable/shining_ghost/pink
execute if entity @e[tag=selection,tag=selected,tag=purple] run function e3_demo:spawn_entities/vacuumable/shining_ghost/purple
execute if entity @e[tag=selection,tag=selected,tag=red] run function e3_demo:spawn_entities/vacuumable/shining_ghost/red
execute if entity @e[tag=selection,tag=selected,tag=white] run function e3_demo:spawn_entities/vacuumable/shining_ghost/white
execute if entity @e[tag=selection,tag=selected,tag=yellow] run function e3_demo:spawn_entities/vacuumable/shining_ghost/yellow
kill @e[tag=selection]