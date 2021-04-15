summon minecraft:area_effect_cloud 739 21 61 {Tags:["choice"]}
summon minecraft:area_effect_cloud 743 23 55 {Tags:["choice"]}
summon minecraft:area_effect_cloud 745 23 55 {Tags:["choice"]}
summon minecraft:area_effect_cloud 741 20 67 {Tags:["choice"]}
summon minecraft:area_effect_cloud 747 20 61 {Tags:["choice"]}
summon minecraft:area_effect_cloud 747 20 59 {Tags:["choice"]}
summon minecraft:area_effect_cloud 747 20 58 {Tags:["choice"]}
summon minecraft:area_effect_cloud 739 20 55 {Tags:["choice"]}
summon minecraft:area_effect_cloud 743 21 55 {Tags:["choice"]}
summon minecraft:area_effect_cloud 745 21 55 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]