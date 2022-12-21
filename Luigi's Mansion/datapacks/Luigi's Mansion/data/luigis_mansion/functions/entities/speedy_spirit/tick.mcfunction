execute if entity @s[tag=dying,scores={DeathTime=1}] if data entity @s ArmorItems[3].tag.loot{drop_at_0:1b} run function luigis_mansion:other/drop_loot
execute if entity @s[tag=dead] unless data entity @s ArmorItems[3].tag.loot{drop_at_0:1b} run function luigis_mansion:other/drop_loot

execute if entity @s[tag=basher] unless entity @s[tag=!attack,tag=!visible] run tag @s remove element_hurt
data modify entity @s[tag=basher,tag=element_hurt] ArmorItems[3].id set value "minecraft:leather_chestplate"
data modify entity @s[tag=basher,tag=element_hurt] HandItems[0].id set value "minecraft:leather_chestplate"
data modify entity @s[tag=basher,tag=element_hurt] HandItems[1].id set value "minecraft:leather_chestplate"
data modify entity @s[tag=basher,tag=element_hurt] CustomNameVisible set value 1b

execute if entity @s[scores={HurtTime=1},tag=hurt,tag=!fleeing,tag=!dying] run playsound luigis_mansion:entity.speedy_spirit.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt,tag=!fleeing,tag=!dying] Sound 40
execute if entity @s[scores={ElementHurtTime=0},tag=element_hurt] run playsound luigis_mansion:entity.speedy_spirit.element_hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ElementHurtTime=0},tag=element_hurt] Sound 30
execute if entity @s[scores={Sound=0},tag=fleeing,tag=!dying] run playsound luigis_mansion:entity.speedy_spirit.flee hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Sound=0},tag=!vanish,tag=!fleeing,tag=!attack,tag=!laugh,tag=!appear,tag=!basher] run playsound luigis_mansion:entity.speedy_spirit.ambient hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0}] Sound 40

execute if entity @s[tag=!element_hurt,tag=!hurt,tag=!fleeing,tag=!attack,tag=!laugh,tag=!vanish,tag=!appear,tag=basher,scores={StunTime=0}] positioned ^ ^ ^0.7 if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..0.7,limit=1] run tag @s add attack
execute if entity @s[tag=!element_hurt,tag=!hurt,tag=!fleeing,tag=attack,tag=basher,scores={StunTime=0}] run function luigis_mansion:entities/speedy_spirit/basher

execute at @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!vanish,tag=!laugh,scores={StunTime=0}] unless entity @s[tag=appear,tag=beta_appear] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!vanish,tag=!laugh,tag=!appear,tag=basher,scores={StunTime=0}] run function luigis_mansion:entities/ghost/move
execute if entity @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=laugh,scores={StunTime=0}] run function luigis_mansion:entities/speedy_spirit/laugh
execute at @s[tag=!element_hurt,tag=!fleeing,tag=!vanish,tag=!attack,tag=!laugh,tag=!appear,tag=!basher,scores={StunTime=0,SpawnTime=20..}] run function luigis_mansion:entities/speedy_spirit/flee
execute if entity @s[tag=vanish] run function luigis_mansion:entities/speedy_spirit/vanish
execute if entity @s[tag=appear,tag=!beta_appear] run function luigis_mansion:entities/speedy_spirit/appear
execute if entity @s[tag=appear,tag=beta_appear] run function luigis_mansion:entities/speedy_spirit/beta_appear
execute at @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!vanish,tag=!laugh,tag=!appear,scores={StunTime=0}] run function luigis_mansion:animations/ghost/flee
execute at @s[tag=fleeing,tag=!second_flee_state] run function luigis_mansion:animations/ghost/flee
execute at @s[tag=fleeing,tag=second_flee_state] run function luigis_mansion:entities/speedy_spirit/second_flee_state
execute at @s[tag=!fleeing,tag=hurt] run function luigis_mansion:animations/ghost/hurt
execute at @s[tag=!hurt,tag=element_hurt] run function luigis_mansion:animations/ghost/hurt
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall