summon minecraft:area_effect_cloud 717 21 36 {Tags:["choice"]}
summon minecraft:area_effect_cloud 714 21 36 {Tags:["choice"]}
summon minecraft:area_effect_cloud 727 22 33 {Tags:["choice"]}
summon minecraft:area_effect_cloud 716 21 28 {Tags:["choice"]}
summon minecraft:area_effect_cloud 717 21 19 {Tags:["choice"]}
summon minecraft:area_effect_cloud 724 21 10 {Tags:["choice"]}
summon minecraft:area_effect_cloud 727 22 22 {Tags:["choice"]}
summon minecraft:area_effect_cloud 716 21 34 {Tags:["choice"]}
summon minecraft:area_effect_cloud 719 20 32 {Tags:["choice"]}
summon minecraft:area_effect_cloud 721 20 32 {Tags:["choice"]}
summon minecraft:area_effect_cloud 714 20 27 {Tags:["choice"]}
summon minecraft:area_effect_cloud 714 22 29 {Tags:["choice"]}
summon minecraft:area_effect_cloud 714 22 26 {Tags:["choice"]}
summon minecraft:area_effect_cloud 714 20 34 {Tags:["choice"]}
summon minecraft:area_effect_cloud 721 20 19 {Tags:["choice"]}
summon minecraft:area_effect_cloud 727 21 19 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]