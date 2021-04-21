summon minecraft:area_effect_cloud 661 22 42 {Tags:["choice"]}
summon minecraft:area_effect_cloud 666 23 42 {Tags:["choice"]}
summon minecraft:area_effect_cloud 666 22 40 {Tags:["choice"]}
summon minecraft:area_effect_cloud 662 23 45 {Tags:["choice"]}
summon minecraft:area_effect_cloud 662 23 43 {Tags:["choice"]}
summon minecraft:area_effect_cloud 664 20 44 {Tags:["choice"]}
summon minecraft:area_effect_cloud 662 20 40 {Tags:["choice"]}
summon minecraft:area_effect_cloud 662 20 37 {Tags:["choice"]}
summon minecraft:area_effect_cloud 662 23 37 {Tags:["choice"]}
summon minecraft:area_effect_cloud 661 21 40 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]