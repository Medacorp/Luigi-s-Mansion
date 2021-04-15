summon minecraft:area_effect_cloud 689 120 -33 {Tags:["random_select"]}
summon minecraft:area_effect_cloud 687 120 -30 {Tags:["random_select"]}
summon minecraft:area_effect_cloud 687 120 -27 {Tags:["random_select"]}
summon minecraft:area_effect_cloud 687 120 -24 {Tags:["random_select"]}
execute if entity @s[tag=other_4] run summon minecraft:area_effect_cloud 695 120 -33 {Tags:["random_select"]}
execute if entity @s[tag=other_4] run summon minecraft:area_effect_cloud 696 120 -30 {Tags:["random_select"]}
execute if entity @s[tag=other_4] run summon minecraft:area_effect_cloud 697 120 -27 {Tags:["random_select"]}
execute if entity @s[tag=other_4] run summon minecraft:area_effect_cloud 697 120 -24 {Tags:["random_select"]}
execute positioned as @e[type=minecraft:area_effect_cloud,tag=random_select,sort=random,limit=1] run teleport @s ~ ~ ~
kill @e[type=minecraft:area_effect_cloud,tag=random_select]