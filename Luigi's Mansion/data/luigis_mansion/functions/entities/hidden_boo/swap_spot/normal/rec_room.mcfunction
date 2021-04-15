summon minecraft:area_effect_cloud 641 14 -31 {Tags:["choice"]}
summon minecraft:area_effect_cloud 645 14 -31 {Tags:["choice"]}
summon minecraft:area_effect_cloud 641 14 -60 {Tags:["choice"]}
summon minecraft:area_effect_cloud 645 14 -60 {Tags:["choice"]}
summon minecraft:area_effect_cloud 639 12 -35 {Tags:["choice"]}
summon minecraft:area_effect_cloud 643 11 -59 {Tags:["choice"]}
summon minecraft:area_effect_cloud 645 11 -58 {Tags:["choice"]}
summon minecraft:area_effect_cloud 639 11 -42 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]