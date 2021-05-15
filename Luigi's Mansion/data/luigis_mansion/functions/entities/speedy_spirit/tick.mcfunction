execute if entity @s[tag=dying,scores={HurtTime=1}] run function luigis_mansion:entities/speedy_spirit/spawn_money
execute if entity @s[tag=dead] run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~ ~0.1 0.2 0.6 0.2 1 30
execute if entity @s[tag=dead] run teleport @s ~ -100 ~

execute if entity @s[scores={HurtTime=1},tag=hurt] run playsound luigis_mansion:entity.speedy_spirit.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt] Sound 40
execute if entity @s[scores={Sound=0},tag=fleeing] run playsound luigis_mansion:entity.speedy_spirit.flee hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Sound=0},tag=!vanish,tag=!fleeing,tag=!attack,tag=!laugh,tag=!complain,tag=!appear] run playsound luigis_mansion:entity.speedy_spirit.ambient hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0}] Sound 40

execute at @s[tag=!element_hurt,tag=!fleeing,tag=!vanish,scores={StunTime=0}] facing entity @p[gamemode=!spectator] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=!element_hurt,tag=!fleeing,tag=!vanish,scores={StunTime=0,SpawnTime=20..}] run function luigis_mansion:entities/speedy_spirit/flee
execute if entity @s[tag=vanish] run function luigis_mansion:entities/speedy_spirit/vanish
execute if entity @s[tag=appear] run function luigis_mansion:entities/speedy_spirit/appear
execute at @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!vanish,tag=!laugh,tag=!complain,tag=!appear,scores={StunTime=0}] run function luigis_mansion:animations/ghost/flee
execute at @s[tag=fleeing] run function luigis_mansion:animations/ghost/flee
execute at @s[tag=!fleeing,tag=hurt] run function luigis_mansion:animations/ghost/hurt
execute at @s[tag=!hurt,tag=element_hurt] run function luigis_mansion:animations/ghost/hurt
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall