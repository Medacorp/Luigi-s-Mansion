execute if entity @s[tag=dying,tag=normal_death,scores={HurtTime=1}] run playsound luigis_mansion:entity.blue_twirler.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dying,tag=element_death,scores={HurtTime=1}] run playsound luigis_mansion:entity.blue_twirler.element_death hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead] run loot spawn ~ ~ ~ loot luigis_mansion:entities/ghost/blue_twirler
execute if entity @s[tag=dead] run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~ ~0.1 0.2 0.6 0.2 1 30
execute if entity @s[tag=dead] run teleport @s ~ -100 ~

execute if entity @s[scores={HurtTime=1},tag=hurt] run playsound luigis_mansion:entity.blue_twirler.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt] Sound 40
execute if entity @s[scores={Sound=0},tag=fleeing] run playsound luigis_mansion:entity.blue_twirler.flee hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Sound=0},tag=!vanish,tag=!fleeing,tag=!attack,tag=!laugh,tag=!complain,tag=!appear] run playsound luigis_mansion:entity.blue_twirler.ambient hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0}] Sound 40

execute if entity @a[gamemode=!spectator,distance=..0.7,limit=1] if entity @s[tag=!vanish,tag=!appear] if entity @s[tag=!dying,tag=!dead,tag=!removed_from_existence] run function luigis_mansion:entities/blue_twirler/collide
execute if entity @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!laugh,tag=!complain,tag=!vanish,tag=!appear,scores={StunTime=0}] if entity @a[gamemode=!spectator,distance=..1.5,limit=1] run tag @s add attack
execute if entity @s[tag=!element_hurt,tag=!fleeing,tag=!collided,tag=attack,scores={StunTime=0}] run function luigis_mansion:entities/blue_twirler/attack

execute at @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!vanish,scores={StunTime=0}] facing entity @p[gamemode=!spectator] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!vanish,tag=!laugh,tag=!complain,scores={StunTime=0,SpawnTime=20..}] run function luigis_mansion:entities/ghost/move
execute if entity @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=laugh,scores={StunTime=0}] run function luigis_mansion:entities/blue_twirler/laugh
execute if entity @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=complain,scores={StunTime=0}] run function luigis_mansion:entities/blue_twirler/complain
execute if entity @s[tag=!element_hurt,tag=!fleeing,tag=collided,scores={StunTime=0}] if entity @s[tag=!dying,tag=!dead,tag=!removed_from_existence] run function luigis_mansion:entities/ghost/collided
tag @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!laugh,tag=!complain,scores={StunTime=0,SpawnTime=180..}] add vanish
execute if entity @s[tag=vanish] run function luigis_mansion:entities/blue_twirler/vanish
execute if entity @s[tag=appear] run function luigis_mansion:entities/blue_twirler/appear
execute at @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!vanish,tag=!laugh,tag=!complain,tag=!appear,scores={StunTime=0}] run function luigis_mansion:animations/twirler/idle
execute at @s[tag=fleeing] run function luigis_mansion:animations/twirler/flee
execute at @s[tag=!fleeing,tag=hurt] run function luigis_mansion:animations/twirler/hurt
execute at @s[tag=!hurt,tag=element_hurt] run function luigis_mansion:animations/twirler/hurt