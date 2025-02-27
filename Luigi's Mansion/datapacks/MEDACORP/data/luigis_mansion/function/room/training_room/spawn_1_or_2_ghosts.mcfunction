summon minecraft:marker 795.0 77 -1.0 {Tags:["choice"],Duration:1}
summon minecraft:marker 787.0 77 -1.0 {Tags:["choice"],Duration:1}
summon minecraft:marker 787.0 77 -8.0 {Tags:["choice"],Duration:1}
summon minecraft:marker 787.0 77 -15.0 {Tags:["choice"],Duration:1}
summon minecraft:marker 795.0 77 -15.0 {Tags:["choice"],Duration:1}
execute at @e[type=minecraft:marker,tag=choice,sort=random,limit=1] run function luigis_mansion:room/training_room/spawn_dummy_ghost
execute as @e[type=minecraft:marker,tag=choice] at @s if entity @e[distance=..1,tag=ghost,tag=hidden,limit=1] run kill @s
execute if predicate luigis_mansion:training_2_ghosts_chance at @e[type=minecraft:marker,tag=choice,sort=random,limit=1] run function luigis_mansion:room/training_room/spawn_dummy_ghost
kill @e[type=minecraft:marker,tag=choice]