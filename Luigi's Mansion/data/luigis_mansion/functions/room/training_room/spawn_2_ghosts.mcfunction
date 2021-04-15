summon minecraft:area_effect_cloud 795.0 77 -1.0 {Tags:["choice"],Duration:1}
summon minecraft:area_effect_cloud 787.0 77 -1.0 {Tags:["choice"],Duration:1}
summon minecraft:area_effect_cloud 787.0 77 -8.0 {Tags:["choice"],Duration:1}
summon minecraft:area_effect_cloud 787.0 77 -15.0 {Tags:["choice"],Duration:1}
summon minecraft:area_effect_cloud 795.0 77 -15.0 {Tags:["choice"],Duration:1}
execute at @e[type=minecraft:area_effect_cloud,tag=choice,sort=random,limit=2] run function luigis_mansion:spawn_entities/new_ghost/forced_spawn/gold_dummy_ghost
kill @e[type=minecraft:area_effect_cloud,tag=choice]