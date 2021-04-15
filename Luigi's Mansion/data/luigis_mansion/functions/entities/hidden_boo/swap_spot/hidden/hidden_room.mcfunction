summon minecraft:area_effect_cloud 713 102 -19 {Tags:["choice"]}
summon minecraft:area_effect_cloud 707 104 -18 {Tags:["choice"]}
summon minecraft:area_effect_cloud 715 102 -17 {Tags:["choice"]}
summon minecraft:area_effect_cloud 708 102 -13 {Tags:["choice"]}
summon minecraft:area_effect_cloud 715 102 -10 {Tags:["choice"]}
summon minecraft:area_effect_cloud 707 104 -8 {Tags:["choice"]}
summon minecraft:area_effect_cloud 713 102 -6 {Tags:["choice"]}
summon minecraft:area_effect_cloud 715 104 -20 {Tags:["choice"]}
summon minecraft:area_effect_cloud 715 104 -5 {Tags:["choice"]}
summon minecraft:area_effect_cloud 708 104 -20 {Tags:["choice"]}
summon minecraft:area_effect_cloud 708 104 -5 {Tags:["choice"]}
summon minecraft:area_effect_cloud 712 105 -21 {Tags:["choice"]}
summon minecraft:area_effect_cloud 707 105 -15 {Tags:["choice"]}
summon minecraft:area_effect_cloud 707 105 -13 {Tags:["choice"]}
summon minecraft:area_effect_cloud 707 105 -10 {Tags:["choice"]}
summon minecraft:area_effect_cloud 712 105 -4 {Tags:["choice"]}
summon minecraft:area_effect_cloud 718 103 -13 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]