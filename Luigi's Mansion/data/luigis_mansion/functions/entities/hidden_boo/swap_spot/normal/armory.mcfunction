summon minecraft:area_effect_cloud 750 29 74 {Tags:["choice"]}
summon minecraft:area_effect_cloud 761 29 74 {Tags:["choice"]}
summon minecraft:area_effect_cloud 747 29 71 {Tags:["choice"]}
summon minecraft:area_effect_cloud 746 29 67 {Tags:["choice"]}
summon minecraft:area_effect_cloud 746 29 63 {Tags:["choice"]}
summon minecraft:area_effect_cloud 745 31 64 {Tags:["choice"]}
summon minecraft:area_effect_cloud 746 30 70 {Tags:["choice"]}
summon minecraft:area_effect_cloud 757 29 72 {Tags:["choice"]}
summon minecraft:area_effect_cloud 753 29 70 {Tags:["choice"]}
summon minecraft:area_effect_cloud 759 29 67 {Tags:["choice"]}
summon minecraft:area_effect_cloud 756 29 64 {Tags:["choice"]}
summon minecraft:area_effect_cloud 753 29 61 {Tags:["choice"]}
summon minecraft:area_effect_cloud 749 29 60 {Tags:["choice"]}
summon minecraft:area_effect_cloud 762 29 57 {Tags:["choice"]}
summon minecraft:area_effect_cloud 752 29 56 {Tags:["choice"]}
summon minecraft:area_effect_cloud 748 29 56 {Tags:["choice"]}
summon minecraft:area_effect_cloud 748 29 75 {Tags:["choice"]}
summon minecraft:area_effect_cloud 750 29 75 {Tags:["choice"]}
summon minecraft:area_effect_cloud 752 29 75 {Tags:["choice"]}
summon minecraft:area_effect_cloud 754 29 75 {Tags:["choice"]}
summon minecraft:area_effect_cloud 758 29 75 {Tags:["choice"]}
summon minecraft:area_effect_cloud 761 29 75 {Tags:["choice"]}
summon minecraft:area_effect_cloud 746 29 74 {Tags:["choice"]}
summon minecraft:area_effect_cloud 756 29 74 {Tags:["choice"]}
summon minecraft:area_effect_cloud 753 29 73 {Tags:["choice"]}
summon minecraft:area_effect_cloud 746 29 60 {Tags:["choice"]}
summon minecraft:area_effect_cloud 748 29 60 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]