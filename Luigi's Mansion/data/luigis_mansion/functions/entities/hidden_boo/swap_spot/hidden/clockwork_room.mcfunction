summon minecraft:area_effect_cloud 693 120 -4 {Tags:["choice"]}
summon minecraft:area_effect_cloud 696 120 -3 {Tags:["choice"]}
summon minecraft:area_effect_cloud 694 120 -1 {Tags:["choice"]}
summon minecraft:area_effect_cloud 694 120 16 {Tags:["choice"]}
summon minecraft:area_effect_cloud 692 120 18 {Tags:["choice"]}
summon minecraft:area_effect_cloud 688 122 -7 {Tags:["choice"]}
summon minecraft:area_effect_cloud 688 122 22 {Tags:["choice"]}
summon minecraft:area_effect_cloud 684 120 -7 {Tags:["choice"]}
summon minecraft:area_effect_cloud 694 120 -3 {Tags:["choice"]}
summon minecraft:area_effect_cloud 694 120 18 {Tags:["choice"]}
summon minecraft:area_effect_cloud 684 120 22 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]