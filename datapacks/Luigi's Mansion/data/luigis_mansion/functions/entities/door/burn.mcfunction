execute if entity @s[tag=!fake,scores={Sound=0}] run playsound luigis_mansion:block.door.burn block @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=!fake,scores={Sound=0}] Sound 20

execute as @a[distance=..0.7,scores={Invulnerable=0},tag=!pull_open_door,tag=!push_open_door] run function luigis_mansion:entities/door/burning

scoreboard players add @s[tag=fake] ElementHurtTime 1
execute if entity @s[tag=fake,scores={ElementHurtTime=..50}] run function luigis_mansion:entities/ghost/hurt_element_damage
tag @s[tag=fake,scores={ElementHurtTime=60}] remove burning
scoreboard players reset @s[tag=fake,scores={ElementHurtTime=60}] ElementHurtTime