summon minecraft:area_effect_cloud 658 11 -4 {Tags:["choice"]}
summon minecraft:area_effect_cloud 656 11 -7 {Tags:["choice"]}
summon minecraft:area_effect_cloud 661 11 -9 {Tags:["choice"]}
summon minecraft:area_effect_cloud 656 11 -13 {Tags:["choice"]}
summon minecraft:area_effect_cloud 657 11 -15 {Tags:["choice"]}
summon minecraft:area_effect_cloud 656 11 -17 {Tags:["choice"]}
summon minecraft:area_effect_cloud 656 11 -21 {Tags:["choice"]}
summon minecraft:area_effect_cloud 654 12 -26 {Tags:["choice"]}
summon minecraft:area_effect_cloud 654 14 -9 {Tags:["choice"]}
summon minecraft:area_effect_cloud 654 14 -15 {Tags:["choice"]}
summon minecraft:area_effect_cloud 656 14 -27 {Tags:["choice"]}
summon minecraft:area_effect_cloud 658 13 -27 {Tags:["choice"]}
summon minecraft:area_effect_cloud 656 11 -9 {Tags:["choice"]}
summon minecraft:area_effect_cloud 655 11 -8 {Tags:["choice"]}
summon minecraft:area_effect_cloud 661 11 -11 {Tags:["choice"]}
summon minecraft:area_effect_cloud 660 11 -24 {Tags:["choice"]}
summon minecraft:area_effect_cloud 660 11 -18 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]