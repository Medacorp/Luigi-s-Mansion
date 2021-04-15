summon minecraft:area_effect_cloud 657 111 32 {Tags:["choice"]}
summon minecraft:area_effect_cloud 661 111 32 {Tags:["choice"]}
summon minecraft:area_effect_cloud 657 111 36 {Tags:["choice"]}
summon minecraft:area_effect_cloud 661 111 36 {Tags:["choice"]}
summon minecraft:area_effect_cloud 657 111 45 {Tags:["choice"]}
summon minecraft:area_effect_cloud 661 111 45 {Tags:["choice"]}
summon minecraft:area_effect_cloud 657 111 49 {Tags:["choice"]}
summon minecraft:area_effect_cloud 661 111 49 {Tags:["choice"]}
summon minecraft:area_effect_cloud 659 112 30 {Tags:["choice"]}
summon minecraft:area_effect_cloud 659 112 51 {Tags:["choice"]}
summon minecraft:area_effect_cloud 659 112 43 {Tags:["choice"]}
summon minecraft:area_effect_cloud 659 112 47 {Tags:["choice"]}
summon minecraft:area_effect_cloud 659 111 26 {Tags:["choice"]}
summon minecraft:area_effect_cloud 659 111 55 {Tags:["choice"]}
summon minecraft:area_effect_cloud 659 112 45 {Tags:["choice"]}
summon minecraft:area_effect_cloud 659 112 49 {Tags:["choice"]}
summon minecraft:area_effect_cloud 659 111 34 {Tags:["choice"]}
summon minecraft:area_effect_cloud 659 111 46 {Tags:["choice"]}
summon minecraft:area_effect_cloud 659 113 26 {Tags:["choice"]}
summon minecraft:area_effect_cloud 659 113 55 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]