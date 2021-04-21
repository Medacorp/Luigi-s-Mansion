summon minecraft:area_effect_cloud 725 2 -3 {Tags:["choice"]}
summon minecraft:area_effect_cloud 726 2 -4 {Tags:["choice"]}
summon minecraft:area_effect_cloud 736 2 9 {Tags:["choice"]}
summon minecraft:area_effect_cloud 738 2 8 {Tags:["choice"]}
summon minecraft:area_effect_cloud 735 4 10 {Tags:["choice"]}
summon minecraft:area_effect_cloud 723 4 3 {Tags:["choice"]}
summon minecraft:area_effect_cloud 726 2 7 {Tags:["choice"]}
summon minecraft:area_effect_cloud 738 2 -1 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]