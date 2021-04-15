summon minecraft:area_effect_cloud 707 111 -21 {Tags:["choice"]}
summon minecraft:area_effect_cloud 714 111 -20 {Tags:["choice"]}
summon minecraft:area_effect_cloud 710 112 -21 {Tags:["choice"]}
summon minecraft:area_effect_cloud 708 113 -21 {Tags:["choice"]}
summon minecraft:area_effect_cloud 716 111 -19 {Tags:["choice"]}
summon minecraft:area_effect_cloud 715 111 -18 {Tags:["choice"]}
summon minecraft:area_effect_cloud 707 113 -15 {Tags:["choice"]}
summon minecraft:area_effect_cloud 714 112 -4 {Tags:["choice"]}
summon minecraft:area_effect_cloud 715 114 -4 {Tags:["choice"]}
summon minecraft:area_effect_cloud 716 112 -4 {Tags:["choice"]}
summon minecraft:area_effect_cloud 708 113 -7 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]