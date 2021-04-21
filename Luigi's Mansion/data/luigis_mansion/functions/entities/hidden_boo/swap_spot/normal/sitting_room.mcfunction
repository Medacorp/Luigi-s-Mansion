summon minecraft:area_effect_cloud 741 20 -24 {Tags:["choice"]}
summon minecraft:area_effect_cloud 738 20 -29 {Tags:["choice"]}
summon minecraft:area_effect_cloud 742 20 -29 {Tags:["choice"]}
summon minecraft:area_effect_cloud 746 20 -21 {Tags:["choice"]}
summon minecraft:area_effect_cloud 736 20 -37 {Tags:["choice"]}
summon minecraft:area_effect_cloud 746 22 -23 {Tags:["choice"]}
summon minecraft:area_effect_cloud 736 22 -26 {Tags:["choice"]}
summon minecraft:area_effect_cloud 746 23 -26 {Tags:["choice"]}
summon minecraft:area_effect_cloud 746 22 -30 {Tags:["choice"]}
summon minecraft:area_effect_cloud 746 22 -34 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]