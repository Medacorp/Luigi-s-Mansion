summon minecraft:area_effect_cloud 657 105 36 {Tags:["choice"]}
summon minecraft:area_effect_cloud 661 105 36 {Tags:["choice"]}
summon minecraft:area_effect_cloud 657 105 55 {Tags:["choice"]}
summon minecraft:area_effect_cloud 661 105 55 {Tags:["choice"]}
summon minecraft:area_effect_cloud 655 103 30 {Tags:["choice"]}
summon minecraft:area_effect_cloud 659 102 54 {Tags:["choice"]}
summon minecraft:area_effect_cloud 661 102 53 {Tags:["choice"]}
summon minecraft:area_effect_cloud 655 102 37 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]