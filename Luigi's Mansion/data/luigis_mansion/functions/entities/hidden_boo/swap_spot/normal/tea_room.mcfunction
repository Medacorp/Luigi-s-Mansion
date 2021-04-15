summon minecraft:area_effect_cloud 657 111 -17 {Tags:["choice"]}
summon minecraft:area_effect_cloud 661 111 -17 {Tags:["choice"]}
summon minecraft:area_effect_cloud 657 111 -21 {Tags:["choice"]}
summon minecraft:area_effect_cloud 661 111 -21 {Tags:["choice"]}
summon minecraft:area_effect_cloud 657 111 -30 {Tags:["choice"]}
summon minecraft:area_effect_cloud 661 111 -30 {Tags:["choice"]}
summon minecraft:area_effect_cloud 657 111 -34 {Tags:["choice"]}
summon minecraft:area_effect_cloud 661 111 -34 {Tags:["choice"]}
summon minecraft:area_effect_cloud 659 112 -15 {Tags:["choice"]}
summon minecraft:area_effect_cloud 659 112 -36 {Tags:["choice"]}
summon minecraft:area_effect_cloud 659 112 -28 {Tags:["choice"]}
summon minecraft:area_effect_cloud 659 112 -32 {Tags:["choice"]}
summon minecraft:area_effect_cloud 659 111 -11 {Tags:["choice"]}
summon minecraft:area_effect_cloud 659 111 -40 {Tags:["choice"]}
summon minecraft:area_effect_cloud 659 112 -30 {Tags:["choice"]}
summon minecraft:area_effect_cloud 659 112 -34 {Tags:["choice"]}
summon minecraft:area_effect_cloud 659 111 -19 {Tags:["choice"]}
summon minecraft:area_effect_cloud 659 111 -31 {Tags:["choice"]}
summon minecraft:area_effect_cloud 659 113 -11 {Tags:["choice"]}
summon minecraft:area_effect_cloud 659 113 -40 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]