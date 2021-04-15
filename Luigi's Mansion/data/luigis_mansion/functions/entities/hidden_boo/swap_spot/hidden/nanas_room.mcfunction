summon minecraft:area_effect_cloud 662 111 23 {Tags:["choice"]}
summon minecraft:area_effect_cloud 660 111 8 {Tags:["choice"]}
summon minecraft:area_effect_cloud 660 111 14 {Tags:["choice"]}
summon minecraft:area_effect_cloud 659 111 19 {Tags:["choice"]}
summon minecraft:area_effect_cloud 663 111 0 {Tags:["choice"]}
summon minecraft:area_effect_cloud 657 111 14 {Tags:["choice"]}
summon minecraft:area_effect_cloud 656 111 22 {Tags:["choice"]}
summon minecraft:area_effect_cloud 662 113 -1 {Tags:["choice"]}
summon minecraft:area_effect_cloud 655 113 11 {Tags:["choice"]}
summon minecraft:area_effect_cloud 655 115 11 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]