execute if entity @s[tag=dying,tag=normal_death,scores={HurtTime=1}] run playsound luigis_mansion:entity.waiter.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dying,tag=element_death,scores={HurtTime=1}] run playsound luigis_mansion:entity.waiter.element_death hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead] run function luigis_mansion:entities/waiter/drop_loot
execute if entity @s[tag=dead] run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~ ~0.1 0.2 0.6 0.2 1 30
execute if entity @s[tag=dead] run teleport @s ~ -100 ~

execute if entity @s[scores={HurtTime=1},tag=hurt,tag=!fleeing,tag=!dying] run playsound luigis_mansion:entity.waiter.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt,tag=!fleeing,tag=!dying] Sound 40
execute if entity @s[scores={ElementHurtTime=0},tag=element_hurt] run playsound luigis_mansion:entity.waiter.element_hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ElementHurtTime=0},tag=element_hurt] Sound 30
execute if entity @s[scores={Sound=0},tag=fleeing,tag=!dying] run playsound luigis_mansion:entity.waiter.flee hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Sound=0},tag=!vanish,tag=!fleeing,tag=!place_food] run playsound luigis_mansion:entity.waiter.ambient hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0}] Sound 10

execute if entity @s[tag=!vanish,tag=!fleeing,tag=!hurt,tag=!complain,scores={StunTime=0}] run function #luigis_mansion:entities/waiter/path
execute if entity @s[tag=vanish] run function luigis_mansion:entities/waiter/vanish
execute if entity @s[tag=complain] run function luigis_mansion:entities/waiter/complain
execute at @s[tag=placing_food,scores={StunTime=0}] run function luigis_mansion:animations/waiter/place_food
execute at @s[tag=!element_hurt,tag=!fleeing,tag=!collided,tag=!vanish,tag=!placing_food,scores={StunTime=0}] run function luigis_mansion:animations/waiter/haunt
execute at @s[tag=fleeing] run function luigis_mansion:animations/waiter/flee
execute at @s[tag=!fleeing,tag=hurt] run function luigis_mansion:animations/waiter/hurt
execute at @s[tag=!hurt,tag=element_hurt] run function luigis_mansion:animations/waiter/hurt
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall