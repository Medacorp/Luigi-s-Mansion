summon minecraft:marker 24.0 2 4.0 {Tags:["choice"]}
summon minecraft:marker 24.0 2 10.0 {Tags:["choice"]}
summon minecraft:marker 18.0 2 10.0 {Tags:["choice"]}
summon minecraft:marker 12.0 2 10.0 {Tags:["choice"]}
summon minecraft:marker 12.0 2 4.0 {Tags:["choice"]}
execute at @e[type=minecraft:marker,tag=choice,sort=random,limit=1] run function luigis_mansion:room/training_room/spawn_dummy_ghost
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[distance=..1,tag=ghost,tag=hidden,limit=1] run kill @s
execute if predicate luigis_mansion:training_2_ghosts_chance at @e[type=minecraft:marker,tag=choice,sort=random,limit=1] run function luigis_mansion:room/training_room/spawn_dummy_ghost
kill @e[type=minecraft:marker,tag=choice]