summon minecraft:area_effect_cloud 749 11 68 {Tags:["choice"]}
summon minecraft:area_effect_cloud 745 11 66 {Tags:["choice"]}
summon minecraft:area_effect_cloud 742 11 63 {Tags:["choice"]}
summon minecraft:area_effect_cloud 744 11 61 {Tags:["choice"]}
summon minecraft:area_effect_cloud 748 11 60 {Tags:["choice"]}
summon minecraft:area_effect_cloud 745 11 71 {Tags:["choice"]}
summon minecraft:area_effect_cloud 749 11 61 {Tags:["choice"]}
summon minecraft:area_effect_cloud 749 11 71 {Tags:["choice"]}
summon minecraft:area_effect_cloud 745 11 64 {Tags:["choice"]}
summon minecraft:area_effect_cloud 739 11 66 {Tags:["choice"]}
summon minecraft:area_effect_cloud 747 11 55 {Tags:["choice"]}
summon minecraft:area_effect_cloud 744 11 55 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]