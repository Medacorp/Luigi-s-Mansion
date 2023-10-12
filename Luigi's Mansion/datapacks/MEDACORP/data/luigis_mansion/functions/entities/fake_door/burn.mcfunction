setblock ^ ^ ^0.5 minecraft:light[level=4]

execute as @a[distance=..0.7,scores={Invulnerable=0},tag=!spectator,tag=!pull_open_door,tag=!push_open_door] run function luigis_mansion:entities/fake_door/burning

scoreboard players add @s ElementHurtTime 1
execute if entity @s[scores={ElementHurtTime=..50}] positioned ^ ^ ^0.3 run function luigis_mansion:entities/ghost/hurt_element_damage
execute if entity @s[scores={ElementHurtTime=60}] run data modify entity @s ArmorItems[3].tag merge value {attacked_by:[]}
tag @s[scores={ElementHurtTime=60}] remove burning
execute if entity @s[scores={ElementHurtTime=60}] run setblock ^ ^ ^0.5 minecraft:air
execute if entity @s[scores={Health=..0}] run setblock ^ ^ ^0.5 minecraft:air
scoreboard players reset @s[scores={ElementHurtTime=60}] ElementHurtTime