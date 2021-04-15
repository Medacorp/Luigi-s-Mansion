summon minecraft:area_effect_cloud 713 120 -38 {Tags:["choice"]}
summon minecraft:area_effect_cloud 706 123 -24 {Tags:["choice"]}
summon minecraft:area_effect_cloud 706 123 -26 {Tags:["choice"]}
summon minecraft:area_effect_cloud 706 123 -28 {Tags:["choice"]}
summon minecraft:area_effect_cloud 718 122 -27 {Tags:["choice"]}
summon minecraft:area_effect_cloud 707 120 -26 {Tags:["choice"]}
summon minecraft:area_effect_cloud 707 121 -27 {Tags:["choice"]}
summon minecraft:area_effect_cloud 708 120 -34 {Tags:["choice"]}
summon minecraft:area_effect_cloud 708 122 -35 {Tags:["choice"]}
summon minecraft:area_effect_cloud 710 120 -35 {Tags:["choice"]}
summon minecraft:area_effect_cloud 710 122 -35 {Tags:["choice"]}
summon minecraft:area_effect_cloud 708 120 -36 {Tags:["choice"]}
summon minecraft:area_effect_cloud 710 120 -37 {Tags:["choice"]}
summon minecraft:area_effect_cloud 716 120 -38 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]