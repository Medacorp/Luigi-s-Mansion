scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=mr_bones_body] if score @s GhostNr = #temp GhostNr run tag @s add this_mr_bones_body

execute if entity @s[tag=dying,tag=normal_death,scores={HurtTime=1}] run playsound luigis_mansion:entity.mr_bones.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dying,tag=element_death,scores={HurtTime=1}] run playsound luigis_mansion:entity.mr_bones.element_death hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead] run loot spawn ~ ~ ~ loot luigis_mansion:entities/ghost/mr_bones
execute if entity @s[tag=dead] run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~ ~0.1 0.2 0.6 0.2 1 30
execute if entity @s[tag=dead] run teleport @s ~ -100 ~
execute if entity @s[tag=dead] run teleport @e[tag=this_mr_bones_body] ~ -100 ~
execute if entity @s[tag=dead] run tag @e[tag=this_mr_bones_body] add dead

execute if entity @s[scores={HurtTime=1},tag=hurt] run playsound luigis_mansion:entity.mr_bones.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt] Sound 40
execute if entity @s[scores={Sound=0},tag=fleeing] run playsound luigis_mansion:entity.mr_bones.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=fleeing] Sound 40

execute unless entity @s[scores={ActionTime=-20}] run scoreboard players remove @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!laugh,tag=!complain,tag=!vanish,tag=!appear,scores={StunTime=0}] ActionTime 1
execute if entity @a[gamemode=!spectator,distance=..0.7,limit=1] if entity @s[tag=!dying,tag=!dead,tag=!removed_from_existence] run function luigis_mansion:entities/mr_bones/collide
execute if entity @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!laugh,tag=!complain,tag=!vanish,tag=!appear,scores={StunTime=0,ActionTime=-20}] facing entity @p[gamemode=!spectator] feet rotated ~ 0 run function luigis_mansion:entities/mr_bones/line_of_sight
scoreboard players reset #temp Steps
execute if entity @s[tag=!element_hurt,tag=!fleeing,tag=!collided,tag=attack,scores={StunTime=0}] run function luigis_mansion:entities/mr_bones/attack

execute if entity @s[scores={Time=80..}] run function luigis_mansion:entities/mr_bones/turn
execute at @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!vanish,tag=!appear,scores={StunTime=0,SpawnTime=20..}] unless entity @s[tag=!laugh,tag=!complain] facing entity @p[gamemode=!spectator] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!laugh,tag=!complain,tag=!vanish,tag=!appear,scores={StunTime=0,SpawnTime=20..}] run function luigis_mansion:entities/mr_bones/move_forward
execute if entity @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=laugh,tag=!vanish,scores={StunTime=0}] run function luigis_mansion:entities/mr_bones/laugh
execute if entity @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=complain,tag=!vanish,scores={StunTime=0}] run function luigis_mansion:entities/mr_bones/complain
execute if entity @s[tag=!element_hurt,tag=!fleeing,tag=collided,tag=!vanish,tag=!appear,scores={StunTime=0}] if entity @s[tag=!dying,tag=!dead,tag=!removed_from_existence] run function luigis_mansion:entities/ghost/collided

execute at @s[tag=vanish] run function luigis_mansion:entities/mr_bones/vanish
execute at @s[tag=appear] run function luigis_mansion:entities/mr_bones/appear
execute at @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!vanish,tag=!laugh,tag=!complain,tag=!appear,scores={StunTime=0}] run function luigis_mansion:animations/mr_bones/idle
execute at @s[tag=fleeing] run function luigis_mansion:animations/mr_bones/flee
execute at @s[tag=!fleeing,tag=hurt] run function luigis_mansion:animations/mr_bones/hurt
execute at @s[tag=!hurt,tag=element_hurt] run function luigis_mansion:animations/mr_bones/hurt

scoreboard players reset #temp GhostNr
tag @e[tag=this_mr_bones_body] remove this_mr_bones_body