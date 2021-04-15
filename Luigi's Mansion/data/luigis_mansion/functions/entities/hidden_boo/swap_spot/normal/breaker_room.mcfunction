summon minecraft:area_effect_cloud 694 93 -24 {Tags:["choice"]}
summon minecraft:area_effect_cloud 698 94 -30 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 93 -39 {Tags:["choice"]}
summon minecraft:area_effect_cloud 696 94 -40 {Tags:["choice"]}
summon minecraft:area_effect_cloud 696 93 -39 {Tags:["choice"]}
summon minecraft:area_effect_cloud 695 93 -39 {Tags:["choice"]}
summon minecraft:area_effect_cloud 694 94 -40 {Tags:["choice"]}
summon minecraft:area_effect_cloud 694 93 -39 {Tags:["choice"]}
summon minecraft:area_effect_cloud 693 93 -39 {Tags:["choice"]}
summon minecraft:area_effect_cloud 692 94 -40 {Tags:["choice"]}
summon minecraft:area_effect_cloud 691 93 -39 {Tags:["choice"]}
summon minecraft:area_effect_cloud 691 93 -39 {Tags:["choice"]}
summon minecraft:area_effect_cloud 690 94 -40 {Tags:["choice"]}
summon minecraft:area_effect_cloud 690 93 -39 {Tags:["choice"]}
summon minecraft:area_effect_cloud 689 93 -39 {Tags:["choice"]}
summon minecraft:area_effect_cloud 688 94 -40 {Tags:["choice"]}
summon minecraft:area_effect_cloud 688 93 -39 {Tags:["choice"]}
summon minecraft:area_effect_cloud 687 93 -39 {Tags:["choice"]}
summon minecraft:area_effect_cloud 689 93 -24 {Tags:["choice"]}
summon minecraft:area_effect_cloud 690 93 -23 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]