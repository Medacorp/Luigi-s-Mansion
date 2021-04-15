scoreboard players add @s ActionTime 1
execute if entity @s[scores={ActionTime=20}] rotated ~ 0 run summon minecraft:area_effect_cloud ^ ^ ^5 {Tags:["burning_floor"],Duration:60}
execute if entity @s[scores={ActionTime=25}] rotated ~-7.5 0 run summon minecraft:area_effect_cloud ^ ^ ^5 {Tags:["burning_floor"],Duration:60}
execute if entity @s[scores={ActionTime=30}] rotated ~-15 0 run summon minecraft:area_effect_cloud ^ ^ ^5 {Tags:["burning_floor"],Duration:60}
execute if entity @s[scores={ActionTime=35}] rotated ~-22.5 0 run summon minecraft:area_effect_cloud ^ ^ ^5 {Tags:["burning_floor"],Duration:60}
execute if entity @s[scores={ActionTime=40}] rotated ~-30 0 run summon minecraft:area_effect_cloud ^ ^ ^5 {Tags:["burning_floor"],Duration:60}
execute if entity @s[scores={ActionTime=45}] rotated ~-22.5 0 run summon minecraft:area_effect_cloud ^ ^ ^5 {Tags:["burning_floor"],Duration:60}
execute if entity @s[scores={ActionTime=50}] rotated ~-15 0 run summon minecraft:area_effect_cloud ^ ^ ^5 {Tags:["burning_floor"],Duration:60}
execute if entity @s[scores={ActionTime=55}] rotated ~-7.5 0 run summon minecraft:area_effect_cloud ^ ^ ^5 {Tags:["burning_floor"],Duration:60}
execute if entity @s[scores={ActionTime=60}] rotated ~ 0 run summon minecraft:area_effect_cloud ^ ^ ^5 {Tags:["burning_floor"],Duration:60}
execute if entity @s[scores={ActionTime=65}] rotated ~7.5 0 run summon minecraft:area_effect_cloud ^ ^ ^5 {Tags:["burning_floor"],Duration:60}
execute if entity @s[scores={ActionTime=70}] rotated ~15 0 run summon minecraft:area_effect_cloud ^ ^ ^5 {Tags:["burning_floor"],Duration:60}
execute if entity @s[scores={ActionTime=75}] rotated ~22.5 0 run summon minecraft:area_effect_cloud ^ ^ ^5 {Tags:["burning_floor"],Duration:60}
execute if entity @s[scores={ActionTime=80}] rotated ~30 0 run summon minecraft:area_effect_cloud ^ ^ ^5 {Tags:["burning_floor"],Duration:60}
execute if entity @s[scores={ActionTime=85}] rotated ~22.5 0 run summon minecraft:area_effect_cloud ^ ^ ^5 {Tags:["burning_floor"],Duration:60}
execute if entity @s[scores={ActionTime=90}] rotated ~15 0 run summon minecraft:area_effect_cloud ^ ^ ^5 {Tags:["burning_floor"],Duration:60}
execute if entity @s[scores={ActionTime=95}] rotated ~7.5 0 run summon minecraft:area_effect_cloud ^ ^ ^5 {Tags:["burning_floor"],Duration:60}
execute if entity @s[scores={ActionTime=100}] rotated ~ 0 run summon minecraft:area_effect_cloud ^ ^ ^5 {Tags:["burning_floor"],Duration:60}
execute if entity @s[scores={ActionTime=105}] rotated ~-7.5 0 run summon minecraft:area_effect_cloud ^ ^ ^5 {Tags:["burning_floor"],Duration:60}
execute if entity @s[scores={ActionTime=110}] rotated ~-15 0 run summon minecraft:area_effect_cloud ^ ^ ^5 {Tags:["burning_floor"],Duration:60}
execute if entity @s[scores={ActionTime=115}] rotated ~-22.5 0 run summon minecraft:area_effect_cloud ^ ^ ^5 {Tags:["burning_floor"],Duration:60}
execute if entity @s[scores={ActionTime=120}] rotated ~-30 0 run summon minecraft:area_effect_cloud ^ ^ ^5 {Tags:["burning_floor"],Duration:60}
tag @s[scores={ActionTime=140}] remove breathe_fire
scoreboard players reset @s[scores={ActionTime=140}] ActionTime