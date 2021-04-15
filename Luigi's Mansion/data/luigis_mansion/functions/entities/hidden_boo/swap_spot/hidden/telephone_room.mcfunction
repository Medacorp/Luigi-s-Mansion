summon minecraft:area_effect_cloud 703 123 -8 {Tags:["choice"]}
summon minecraft:area_effect_cloud 700 123 2 {Tags:["choice"]}
summon minecraft:area_effect_cloud 700 123 13 {Tags:["choice"]}
summon minecraft:area_effect_cloud 707 120 -5 {Tags:["choice"]}
summon minecraft:area_effect_cloud 704 120 -2 {Tags:["choice"]}
summon minecraft:area_effect_cloud 700 120 -4 {Tags:["choice"]}
summon minecraft:area_effect_cloud 704 120 23 {Tags:["choice"]}
summon minecraft:area_effect_cloud 700 120 8 {Tags:["choice"]}
summon minecraft:area_effect_cloud 712 120 22 {Tags:["choice"]}
summon minecraft:area_effect_cloud 715 120 21 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]