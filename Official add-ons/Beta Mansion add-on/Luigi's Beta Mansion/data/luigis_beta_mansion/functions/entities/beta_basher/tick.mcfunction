execute if entity @s[tag=dying,tag=normal_death,scores={DeathTime=1}] run playsound luigis_beta_mansion:entity.basher.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dying,tag=element_death,scores={DeathTime=1}] run playsound luigis_beta_mansion:entity.basher.element_death hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dying,scores={DeathTime=1}] if data storage luigis_mansion:data current_state.current_data.ghosts.beta_basher{loot_at_0:1b} run function luigis_beta_mansion:entities/beta_basher/drop_loot
execute if entity @s[tag=dead] unless data storage luigis_mansion:data current_state.current_data.ghosts.beta_basher{loot_at_0:1b} run function luigis_beta_mansion:entities/beta_basher/drop_loot
execute if entity @s[tag=dead] run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~ ~0.1 0.2 0.6 0.2 1 30
execute if entity @s[tag=dead] run teleport @s ~ -100 ~

execute if entity @s[tag=basher] unless entity @s[tag=!attack,tag=!visible] run tag @s remove element_hurt
data modify entity @s[tag=basher,tag=element_hurt] ArmorItems[3].id set value "minecraft:leather_chestplate"
data modify entity @s[tag=basher,tag=element_hurt] HandItems[0].id set value "minecraft:leather_chestplate"
data modify entity @s[tag=basher,tag=element_hurt] HandItems[1].id set value "minecraft:leather_chestplate"
data modify entity @s[tag=basher,tag=element_hurt] CustomNameVisible set value 1b

execute if entity @s[scores={HurtTime=1},tag=hurt,tag=!fleeing,tag=!dying] run playsound luigis_beta_mansion:entity.basher.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt,tag=!fleeing,tag=!dying] Sound 40
execute if entity @s[scores={ElementHurtTime=0},tag=element_hurt] run playsound luigis_beta_mansion:entity.basher.element_hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ElementHurtTime=0},tag=element_hurt] Sound 30
execute if entity @s[scores={Sound=0},tag=fleeing,tag=!dying] run playsound luigis_beta_mansion:entity.basher.flee hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Sound=0},tag=!vanish,tag=!fleeing,tag=!attack,tag=!laugh,tag=!complain,tag=!appear,tag=!basher] run playsound luigis_beta_mansion:entity.basher.ambient hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0}] Sound 40

execute if entity @e[tag=same_room,tag=!spectator,distance=..0.7,limit=1] if entity @s[tag=!dialog,tag=!vanish,tag=!appear,tag=!dying,tag=!dead,tag=!captured,tag=!removed_from_existence,tag=!basher,tag=!no_attack,tag=!hurt,tag=!fleeing,tag=!element_hurt] run function luigis_beta_mansion:entities/beta_basher/collide
execute if entity @s[tag=!basher,tag=!no_attack] run function luigis_beta_mansion:entities/beta_basher/select_attack/punch
execute if entity @s[tag=basher] run function luigis_beta_mansion:entities/beta_basher/select_attack/basher
execute if entity @s[tag=no_attack] run function luigis_beta_mansion:entities/beta_basher/select_attack/laugh

execute at @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!vanish,scores={StunTime=0},tag=!dialog] unless entity @s[tag=appear,tag=beta_appear] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!vanish,tag=!appear,tag=!laugh,tag=!complain,scores={StunTime=0},tag=!dialog] run function luigis_mansion:entities/ghost/move
execute if entity @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=laugh,scores={StunTime=0}] run function luigis_beta_mansion:entities/beta_basher/laugh
execute if entity @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=complain,scores={StunTime=0}] run function luigis_beta_mansion:entities/beta_basher/complain
execute if entity @s[tag=!element_hurt,tag=!fleeing,tag=collided,scores={StunTime=0}] if entity @s[tag=!dying,tag=!dead,tag=!captured,tag=!removed_from_existence] run function luigis_mansion:entities/ghost/collided
tag @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!laugh,tag=!complain,scores={StunTime=0,SpawnTime=120..},tag=!dialog] add vanish
execute if entity @s[tag=vanish] run function luigis_beta_mansion:entities/beta_basher/vanish
execute if entity @s[tag=appear,tag=!beta_appear] run function luigis_beta_mansion:entities/beta_basher/appear
execute if entity @s[tag=appear,tag=beta_appear] run function luigis_beta_mansion:entities/beta_basher/beta_appear
execute at @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!vanish,tag=!laugh,tag=!complain,tag=!appear,scores={StunTime=0}] run function luigis_mansion:animations/ghost/haunt
execute at @s[tag=fleeing] run function luigis_mansion:animations/ghost/flee
execute at @s[tag=!fleeing,tag=hurt] run function luigis_mansion:animations/ghost/hurt
execute at @s[tag=!hurt,tag=element_hurt] run function luigis_mansion:animations/ghost/hurt
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall