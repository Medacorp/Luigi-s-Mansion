summon minecraft:area_effect_cloud 661 20 -27 {Tags:["choice"]}
summon minecraft:area_effect_cloud 659 20 -12 {Tags:["choice"]}
summon minecraft:area_effect_cloud 659 20 -18 {Tags:["choice"]}
summon minecraft:area_effect_cloud 658 20 -23 {Tags:["choice"]}
summon minecraft:area_effect_cloud 662 20 -4 {Tags:["choice"]}
summon minecraft:area_effect_cloud 656 20 -18 {Tags:["choice"]}
summon minecraft:area_effect_cloud 655 20 -26 {Tags:["choice"]}
summon minecraft:area_effect_cloud 661 22 -3 {Tags:["choice"]}
summon minecraft:area_effect_cloud 654 22 -15 {Tags:["choice"]}
summon minecraft:area_effect_cloud 654 24 -15 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]