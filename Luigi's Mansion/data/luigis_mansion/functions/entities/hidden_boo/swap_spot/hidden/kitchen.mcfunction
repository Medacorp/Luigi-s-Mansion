summon minecraft:area_effect_cloud 687 102 -15 {Tags:["choice"]}
summon minecraft:area_effect_cloud 688 102 -20 {Tags:["choice"]}
summon minecraft:area_effect_cloud 693 102 -39 {Tags:["choice"]}
summon minecraft:area_effect_cloud 688 102 -35 {Tags:["choice"]}
summon minecraft:area_effect_cloud 687 106 -38 {Tags:["choice"]}
summon minecraft:area_effect_cloud 687 105 -35 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 105 -33 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 105 -25 {Tags:["choice"]}
summon minecraft:area_effect_cloud 687 105 -25 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 105 -37 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 105 -39 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 105 -17 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]