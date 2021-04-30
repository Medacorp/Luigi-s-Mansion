summon minecraft:marker 795.0 77 -1.0 {Tags:["choice"],Duration:1}
summon minecraft:marker 787.0 77 -1.0 {Tags:["choice"],Duration:1}
summon minecraft:marker 787.0 77 -8.0 {Tags:["choice"],Duration:1}
summon minecraft:marker 787.0 77 -15.0 {Tags:["choice"],Duration:1}
summon minecraft:marker 795.0 77 -15.0 {Tags:["choice"],Duration:1}
execute at @e[type=minecraft:marker,tag=choice,sort=random,limit=2] run function luigis_mansion:spawn_entities/new_ghost/forced_spawn/gold_dummy_ghost
kill @e[type=minecraft:marker,tag=choice]