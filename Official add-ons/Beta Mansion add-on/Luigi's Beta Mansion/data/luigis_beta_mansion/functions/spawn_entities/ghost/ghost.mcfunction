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
execute if entity @e[tag=selection,tag=selected,tag=blue] run function luigis_beta_mansion:spawn_entities/ghost/ghost/blue
execute if entity @e[tag=selection,tag=selected,tag=brown] run function luigis_beta_mansion:spawn_entities/ghost/ghost/brown
execute if entity @e[tag=selection,tag=selected,tag=green] run function luigis_beta_mansion:spawn_entities/ghost/ghost/green
execute if entity @e[tag=selection,tag=selected,tag=light_blue] run function luigis_beta_mansion:spawn_entities/ghost/ghost/light_blue
execute if entity @e[tag=selection,tag=selected,tag=orange] run function luigis_beta_mansion:spawn_entities/ghost/ghost/orange
execute if entity @e[tag=selection,tag=selected,tag=pink] run function luigis_beta_mansion:spawn_entities/ghost/ghost/pink
execute if entity @e[tag=selection,tag=selected,tag=purple] run function luigis_beta_mansion:spawn_entities/ghost/ghost/purple
execute if entity @e[tag=selection,tag=selected,tag=red] run function luigis_beta_mansion:spawn_entities/ghost/ghost/red
execute if entity @e[tag=selection,tag=selected,tag=white] run function luigis_beta_mansion:spawn_entities/ghost/ghost/white
execute if entity @e[tag=selection,tag=selected,tag=yellow] run function luigis_beta_mansion:spawn_entities/ghost/ghost/yellow
kill @e[tag=selection]