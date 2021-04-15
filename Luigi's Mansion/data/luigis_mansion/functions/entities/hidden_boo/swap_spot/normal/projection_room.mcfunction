summon minecraft:area_effect_cloud 683 103 5 {Tags:["choice"]}
summon minecraft:area_effect_cloud 674 102 10 {Tags:["choice"]}
summon minecraft:area_effect_cloud 674 102 0 {Tags:["choice"]}
summon minecraft:area_effect_cloud 682 102 -1 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]