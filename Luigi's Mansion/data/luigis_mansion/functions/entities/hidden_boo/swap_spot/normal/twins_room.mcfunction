summon minecraft:area_effect_cloud 738 20 48 {Tags:["choice"]}
summon minecraft:area_effect_cloud 745 20 47 {Tags:["choice"]}
summon minecraft:area_effect_cloud 741 21 48 {Tags:["choice"]}
summon minecraft:area_effect_cloud 739 22 48 {Tags:["choice"]}
summon minecraft:area_effect_cloud 747 20 46 {Tags:["choice"]}
summon minecraft:area_effect_cloud 746 20 45 {Tags:["choice"]}
summon minecraft:area_effect_cloud 738 22 42 {Tags:["choice"]}
summon minecraft:area_effect_cloud 745 21 31 {Tags:["choice"]}
summon minecraft:area_effect_cloud 746 23 31 {Tags:["choice"]}
summon minecraft:area_effect_cloud 747 21 31 {Tags:["choice"]}
summon minecraft:area_effect_cloud 739 22 34 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]