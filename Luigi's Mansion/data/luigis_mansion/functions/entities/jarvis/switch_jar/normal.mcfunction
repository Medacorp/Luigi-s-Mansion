summon minecraft:area_effect_cloud 689 120 48 {Tags:["random_select"]}
summon minecraft:area_effect_cloud 687 120 45 {Tags:["random_select"]}
summon minecraft:area_effect_cloud 687 120 42 {Tags:["random_select"]}
summon minecraft:area_effect_cloud 687 120 39 {Tags:["random_select"]}
execute if entity @s[tag=other_4] run summon minecraft:area_effect_cloud 695 120 48 {Tags:["random_select"]}
execute if entity @s[tag=other_4] run summon minecraft:area_effect_cloud 696 120 45 {Tags:["random_select"]}
execute if entity @s[tag=other_4] run summon minecraft:area_effect_cloud 697 120 42 {Tags:["random_select"]}
execute if entity @s[tag=other_4] run summon minecraft:area_effect_cloud 697 120 39 {Tags:["random_select"]}
execute positioned as @e[type=minecraft:area_effect_cloud,tag=random_select,sort=random,limit=1] run teleport @s ~ ~ ~
kill @e[type=minecraft:area_effect_cloud,tag=random_select]