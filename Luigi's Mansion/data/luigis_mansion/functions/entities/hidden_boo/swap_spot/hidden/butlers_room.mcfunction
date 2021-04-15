summon minecraft:area_effect_cloud 717 102 -37 {Tags:["choice"]}
summon minecraft:area_effect_cloud 713 102 -35 {Tags:["choice"]}
summon minecraft:area_effect_cloud 710 102 -32 {Tags:["choice"]}
summon minecraft:area_effect_cloud 712 102 -30 {Tags:["choice"]}
summon minecraft:area_effect_cloud 716 102 -29 {Tags:["choice"]}
summon minecraft:area_effect_cloud 713 102 -40 {Tags:["choice"]}
summon minecraft:area_effect_cloud 717 102 -30 {Tags:["choice"]}
summon minecraft:area_effect_cloud 717 102 -40 {Tags:["choice"]}
summon minecraft:area_effect_cloud 713 102 -33 {Tags:["choice"]}
summon minecraft:area_effect_cloud 707 102 -35 {Tags:["choice"]}
summon minecraft:area_effect_cloud 715 102 -24 {Tags:["choice"]}
summon minecraft:area_effect_cloud 712 102 -24 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]