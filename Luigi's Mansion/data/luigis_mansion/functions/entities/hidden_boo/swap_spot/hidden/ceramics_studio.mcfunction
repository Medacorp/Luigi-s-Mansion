summon minecraft:area_effect_cloud 693 121 -21 {Tags:["choice"]}
summon minecraft:area_effect_cloud 684 120 -27 {Tags:["choice"]}
summon minecraft:area_effect_cloud 684 121 -25 {Tags:["choice"]}
summon minecraft:area_effect_cloud 696 120 -38 {Tags:["choice"]}
summon minecraft:area_effect_cloud 696 120 -36 {Tags:["choice"]}
summon minecraft:area_effect_cloud 696 120 -34 {Tags:["choice"]}
summon minecraft:area_effect_cloud 695 120 -35 {Tags:["choice"]}
summon minecraft:area_effect_cloud 684 120 -37 {Tags:["choice"]}
summon minecraft:area_effect_cloud 686 120 -37 {Tags:["choice"]}
summon minecraft:area_effect_cloud 690 120 -37 {Tags:["choice"]}
summon minecraft:area_effect_cloud 692 120 -37 {Tags:["choice"]}
summon minecraft:area_effect_cloud 688 120 -35 {Tags:["choice"]}
summon minecraft:area_effect_cloud 688 122 -35 {Tags:["choice"]}
summon minecraft:area_effect_cloud 690 120 -35 {Tags:["choice"]}
summon minecraft:area_effect_cloud 692 120 -35 {Tags:["choice"]}
summon minecraft:area_effect_cloud 684 120 -34 {Tags:["choice"]}
summon minecraft:area_effect_cloud 686 120 -34 {Tags:["choice"]}
summon minecraft:area_effect_cloud 685 122 -33 {Tags:["choice"]}
summon minecraft:area_effect_cloud 684 120 -32 {Tags:["choice"]}
summon minecraft:area_effect_cloud 686 120 -32 {Tags:["choice"]}
summon minecraft:area_effect_cloud 689 120 -33 {Tags:["choice"]}
summon minecraft:area_effect_cloud 695 120 -33 {Tags:["choice"]}
summon minecraft:area_effect_cloud 687 120 -30 {Tags:["choice"]}
summon minecraft:area_effect_cloud 696 120 -30 {Tags:["choice"]}
summon minecraft:area_effect_cloud 687 120 -27 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 120 -27 {Tags:["choice"]}
summon minecraft:area_effect_cloud 687 120 -24 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 120 -24 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]