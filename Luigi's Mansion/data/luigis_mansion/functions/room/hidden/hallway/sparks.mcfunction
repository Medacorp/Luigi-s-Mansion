summon minecraft:area_effect_cloud 666 111 15 {Tags:["choice","option_1"]}
summon minecraft:area_effect_cloud 666 111 8 {Tags:["choice","option_2"]}
summon minecraft:area_effect_cloud 666 111 -1 {Tags:["choice","option_3"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s store result score @s Move if entity @e[distance=..1,tag=spark]
kill @e[type=minecraft:area_effect_cloud,tag=choice,scores={Move=2}]
tag @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,tag=option_1,limit=1] positioned 666 111 15 run function luigis_mansion:spawn_entities/vacuumable/spark
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,tag=option_2,limit=1] positioned 666 111 8 run function luigis_mansion:spawn_entities/vacuumable/spark
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,tag=option_3,limit=1] positioned 666 111 -1 run function luigis_mansion:spawn_entities/vacuumable/spark
kill @e[type=minecraft:area_effect_cloud,tag=choice]