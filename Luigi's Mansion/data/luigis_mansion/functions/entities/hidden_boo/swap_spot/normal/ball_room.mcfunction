summon minecraft:area_effect_cloud 702 12 -39 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 12 -50 {Tags:["choice"]}
summon minecraft:area_effect_cloud 710 12 -50 {Tags:["choice"]}
summon minecraft:area_effect_cloud 710 12 -64 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 11 -42 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 11 -44 {Tags:["choice"]}
summon minecraft:area_effect_cloud 710 11 -42 {Tags:["choice"]}
summon minecraft:area_effect_cloud 710 11 -44 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 11 -56 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 11 -58 {Tags:["choice"]}
summon minecraft:area_effect_cloud 710 11 -56 {Tags:["choice"]}
summon minecraft:area_effect_cloud 710 11 -58 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]