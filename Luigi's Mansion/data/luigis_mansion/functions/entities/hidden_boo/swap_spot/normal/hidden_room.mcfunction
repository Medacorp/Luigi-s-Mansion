summon minecraft:area_effect_cloud 744 11 46 {Tags:["choice"]}
summon minecraft:area_effect_cloud 738 13 45 {Tags:["choice"]}
summon minecraft:area_effect_cloud 746 11 43 {Tags:["choice"]}
summon minecraft:area_effect_cloud 739 11 40 {Tags:["choice"]}
summon minecraft:area_effect_cloud 746 11 37 {Tags:["choice"]}
summon minecraft:area_effect_cloud 737 13 35 {Tags:["choice"]}
summon minecraft:area_effect_cloud 744 11 33 {Tags:["choice"]}
summon minecraft:area_effect_cloud 746 13 47 {Tags:["choice"]}
summon minecraft:area_effect_cloud 746 13 32 {Tags:["choice"]}
summon minecraft:area_effect_cloud 739 13 47 {Tags:["choice"]}
summon minecraft:area_effect_cloud 739 13 32 {Tags:["choice"]}
summon minecraft:area_effect_cloud 743 14 48 {Tags:["choice"]}
summon minecraft:area_effect_cloud 738 14 42 {Tags:["choice"]}
summon minecraft:area_effect_cloud 738 14 40 {Tags:["choice"]}
summon minecraft:area_effect_cloud 738 14 37 {Tags:["choice"]}
summon minecraft:area_effect_cloud 743 14 31 {Tags:["choice"]}
summon minecraft:area_effect_cloud 749 12 40 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]