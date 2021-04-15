summon minecraft:area_effect_cloud 689 103 26 {Tags:["choice"]}
summon minecraft:area_effect_cloud 684 103 37 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 103 37 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 103 51 {Tags:["choice"]}
summon minecraft:area_effect_cloud 684 102 29 {Tags:["choice"]}
summon minecraft:area_effect_cloud 684 102 31 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 102 29 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 102 31 {Tags:["choice"]}
summon minecraft:area_effect_cloud 684 102 43 {Tags:["choice"]}
summon minecraft:area_effect_cloud 684 102 45 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 102 43 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 102 45 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]