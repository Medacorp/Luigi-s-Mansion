summon minecraft:area_effect_cloud 741 32 33 {Tags:["choice"]}
summon minecraft:area_effect_cloud 738 32 23 {Tags:["choice"]}
summon minecraft:area_effect_cloud 738 32 12 {Tags:["choice"]}
summon minecraft:area_effect_cloud 745 29 30 {Tags:["choice"]}
summon minecraft:area_effect_cloud 742 29 27 {Tags:["choice"]}
summon minecraft:area_effect_cloud 738 29 29 {Tags:["choice"]}
summon minecraft:area_effect_cloud 742 29 2 {Tags:["choice"]}
summon minecraft:area_effect_cloud 738 29 17 {Tags:["choice"]}
summon minecraft:area_effect_cloud 750 29 3 {Tags:["choice"]}
summon minecraft:area_effect_cloud 753 29 4 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]