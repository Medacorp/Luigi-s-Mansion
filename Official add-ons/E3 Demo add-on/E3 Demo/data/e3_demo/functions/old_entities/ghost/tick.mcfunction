execute if entity @s[tag=dying,tag=normal_death,scores={DeathTime=1}] run playsound e3_demo:entity.ghost.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dying,tag=element_death,scores={DeathTime=1}] run playsound e3_demo:entity.ghost.element_death hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dying,scores={DeathTime=1}] if data entity @s ArmorItems[3].tag.luigis_mansion.loot{drop_at_0:1b} run function luigis_mansion:other/drop_loot
execute if entity @s[tag=dead] unless data entity @s ArmorItems[3].tag.luigis_mansion.loot{drop_at_0:1b} run function luigis_mansion:other/drop_loot
execute if entity @s[tag=dead] run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~ ~0.1 0.2 0.6 0.2 1 30
execute if entity @s[tag=dead] run teleport @s ~ -100 ~

execute if entity @s[tag=basher] unless entity @s[tag=!attack,tag=!visible] run tag @s remove element_hurt
data modify entity @s[tag=basher,tag=element_hurt] ArmorItems[3].id set value "minecraft:leather_chestplate"
data modify entity @s[tag=basher,tag=element_hurt] HandItems[0].id set value "minecraft:leather_chestplate"
data modify entity @s[tag=basher,tag=element_hurt] HandItems[1].id set value "minecraft:leather_chestplate"
data modify entity @s[tag=basher,tag=element_hurt] CustomNameVisible set value 1b

execute if entity @s[scores={HurtTime=1},tag=hurt,tag=!flee,tag=!dying] run playsound e3_demo:entity.ghost.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt,tag=!flee,tag=!dying] Sound 40
execute if entity @s[scores={ElementHurtTime=0},tag=element_hurt] run playsound e3_demo:entity.ghost.element_hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ElementHurtTime=0},tag=element_hurt] Sound 30
execute if entity @s[scores={Sound=0},tag=flee,tag=!dying] run playsound e3_demo:entity.ghost.flee hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Sound=0},tag=!vanish,tag=!flee,tag=!attack,tag=!laugh,tag=!complain,tag=!appear,tag=!basher] run playsound e3_demo:entity.ghost.ambient hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0}] Sound 40

execute if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..0.7,limit=1] if entity @s[tag=!no_ai,tag=!vanish,tag=!appear,tag=!dying,tag=!dead,tag=!captured,tag=!removed_from_existence,scores={AttackType=0},tag=!hurt,tag=!flee,tag=!element_hurt] run function e3_demo:old_entities/ghost/collide
execute if entity @s[scores={AttackType=0}] run function e3_demo:old_entities/ghost/select_attack/punch
execute if entity @s[scores={AttackType=1}] run function e3_demo:old_entities/ghost/select_attack/basher
execute if entity @s[scores={AttackType=2}] run function e3_demo:old_entities/ghost/select_attack/laugh

execute at @s[tag=!hurt,tag=!element_hurt,tag=!flee,tag=!attack,tag=!collided,tag=!vanish,scores={StunTime=0},tag=!no_ai] unless entity @s[tag=appear,tag=beta_appear] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=!hurt,tag=!element_hurt,tag=!flee,tag=!attack,tag=!collided,tag=!vanish,tag=!appear,tag=!laugh,tag=!complain,scores={StunTime=0},tag=!no_ai] run function luigis_mansion:old_entities/ghost/move
execute if entity @s[tag=!hurt,tag=!element_hurt,tag=!flee,tag=!attack,tag=!collided,tag=laugh,scores={StunTime=0}] run function e3_demo:old_entities/ghost/laugh
execute if entity @s[tag=!hurt,tag=!element_hurt,tag=!flee,tag=!attack,tag=!collided,tag=complain,scores={StunTime=0}] run function e3_demo:old_entities/ghost/complain
execute if entity @s[tag=!element_hurt,tag=!flee,tag=collided,scores={StunTime=0}] if entity @s[tag=!dying,tag=!dead,tag=!captured,tag=!removed_from_existence] run function luigis_mansion:old_entities/ghost/collided
execute if entity @s[tag=vanish] run function e3_demo:old_entities/ghost/vanish
execute if entity @s[tag=appear,tag=!beta_appear] run function e3_demo:old_entities/ghost/appear
execute if entity @s[tag=appear,tag=beta_appear] run function e3_demo:old_entities/ghost/beta_appear
execute at @s[tag=!hurt,tag=!element_hurt,tag=!flee,tag=!attack,tag=!collided,tag=!vanish,tag=!laugh,tag=!complain,tag=!appear,scores={StunTime=0}] run function luigis_mansion:old_animations/ghost/haunt
execute at @s[tag=flee,tag=!second_flee_state] run function luigis_mansion:old_animations/ghost/flee
execute at @s[tag=flee,tag=second_flee_state] run function luigis_mansion:old_entities/ghost/second_flee_state
execute at @s[tag=!flee,tag=hurt] run function luigis_mansion:old_animations/ghost/hurt
execute at @s[tag=!hurt,tag=element_hurt] run function luigis_mansion:old_animations/ghost/hurt
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall