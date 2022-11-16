execute if entity @s[tag=!fake,scores={Sound=0}] run playsound luigis_mansion:furniture.door.burn block @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=!fake,scores={Sound=0}] Sound 80

execute as @a[distance=..0.7,scores={Invulnerable=0},tag=!spectator,tag=!pull_open_door,tag=!push_open_door] run function luigis_mansion:entities/door/burning

scoreboard players add @s[tag=fake] ElementHurtTime 1
execute if entity @s[tag=fake,scores={ElementHurtTime=..50}] positioned ^ ^ ^0.3 run function luigis_mansion:entities/ghost/hurt_element_damage
execute if entity @s[tag=fake,scores={ElementHurtTime=60}] run data modify entity @s ArmorItems[3].tag merge value {attacked_by:[]}
tag @s[tag=fake,scores={ElementHurtTime=60}] remove burning
scoreboard players reset @s[tag=fake,scores={ElementHurtTime=60}] ElementHurtTime