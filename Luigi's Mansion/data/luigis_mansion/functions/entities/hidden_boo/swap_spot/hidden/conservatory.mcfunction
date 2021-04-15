summon minecraft:area_effect_cloud 659 102 0 {Tags:["choice"]}
summon minecraft:area_effect_cloud 657 102 3 {Tags:["choice"]}
summon minecraft:area_effect_cloud 662 102 5 {Tags:["choice"]}
summon minecraft:area_effect_cloud 657 102 9 {Tags:["choice"]}
summon minecraft:area_effect_cloud 658 102 11 {Tags:["choice"]}
summon minecraft:area_effect_cloud 657 102 13 {Tags:["choice"]}
summon minecraft:area_effect_cloud 657 102 17 {Tags:["choice"]}
summon minecraft:area_effect_cloud 655 103 22 {Tags:["choice"]}
summon minecraft:area_effect_cloud 655 105 5 {Tags:["choice"]}
summon minecraft:area_effect_cloud 655 105 11 {Tags:["choice"]}
summon minecraft:area_effect_cloud 657 105 23 {Tags:["choice"]}
summon minecraft:area_effect_cloud 659 104 23 {Tags:["choice"]}
summon minecraft:area_effect_cloud 657 102 5 {Tags:["choice"]}
summon minecraft:area_effect_cloud 656 102 4 {Tags:["choice"]}
summon minecraft:area_effect_cloud 662 102 7 {Tags:["choice"]}
summon minecraft:area_effect_cloud 661 102 20 {Tags:["choice"]}
summon minecraft:area_effect_cloud 661 102 14 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]