execute if entity @s[tag=dying,tag=normal_death,scores={HurtTime=1}] run playsound luigis_mansion:entity.red_grabbing_ghost.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dying,tag=element_death,scores={HurtTime=1}] run playsound luigis_mansion:entity.red_grabbing_ghost.element_death hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead] run function luigis_mansion:entities/red_grabbing_ghost/drop_loot
execute if entity @s[tag=dead] run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~ ~0.1 0.2 0.6 0.2 1 30
execute if entity @s[tag=dead] run teleport @s ~ -100 ~

execute if entity @s[scores={HurtTime=1},tag=hurt,tag=!fleeing] run playsound luigis_mansion:entity.red_grabbing_ghost.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt,tag=!fleeing] Sound 40
execute if entity @s[tag=element_hurt] run playsound luigis_mansion:entity.red_grabbing_ghost.element_hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=element_hurt] Sound 30
execute if entity @s[scores={Sound=0},tag=fleeing] run playsound luigis_mansion:entity.red_grabbing_ghost.flee hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Sound=0},tag=!vanish,tag=!fleeing,tag=!attack,tag=!laugh,tag=!complain,tag=!appear] run playsound luigis_mansion:entity.red_grabbing_ghost.ambient hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0}] Sound 40

execute if entity @e[tag=same_room,tag=!spectator,distance=..0.7,limit=1] unless entity @s[tag=!element_hurt,tag=!complain,tag=!laugh] if entity @s[tag=!vanish,tag=!appear,tag=!attack] if entity @s[tag=!dying,tag=!dead,tag=!removed_from_existence] run function luigis_mansion:entities/red_grabbing_ghost/collide
execute if entity @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!laugh,tag=!complain,tag=!vanish,tag=!appear,scores={StunTime=0,SpawnTime=20..}] positioned ^ ^ ^0.6 if entity @e[tag=same_room,tag=!spectator,distance=..0.7,limit=1] run tag @s add attack
execute if entity @s[tag=!element_hurt,tag=!fleeing,tag=!collided,tag=attack,scores={StunTime=0}] run function luigis_mansion:entities/red_grabbing_ghost/attack

execute at @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!vanish,scores={StunTime=0}] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!vanish,tag=!laugh,tag=!complain,tag=!appear,scores={StunTime=0}] run function luigis_mansion:entities/ghost/move
execute if entity @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=laugh,scores={StunTime=0}] run function luigis_mansion:entities/red_grabbing_ghost/laugh
execute if entity @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=complain,scores={StunTime=0}] run function luigis_mansion:entities/red_grabbing_ghost/complain
execute if entity @s[tag=!element_hurt,tag=!fleeing,tag=collided,scores={StunTime=0}] if entity @s[tag=!dying,tag=!dead,tag=!removed_from_existence] run function luigis_mansion:entities/ghost/collided
execute if entity @s[tag=vanish] run function luigis_mansion:entities/red_grabbing_ghost/vanish
execute if entity @s[tag=appear] run function luigis_mansion:entities/red_grabbing_ghost/appear
execute at @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!vanish,tag=!laugh,tag=!complain,tag=!appear,scores={StunTime=0}] run function luigis_mansion:animations/grabbing_ghost/haunt
execute at @s[tag=fleeing] run function luigis_mansion:animations/grabbing_ghost/flee
execute at @s[tag=!fleeing,tag=hurt] run function luigis_mansion:animations/grabbing_ghost/hurt
execute at @s[tag=!hurt,tag=element_hurt] run function luigis_mansion:animations/grabbing_ghost/hurt
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall