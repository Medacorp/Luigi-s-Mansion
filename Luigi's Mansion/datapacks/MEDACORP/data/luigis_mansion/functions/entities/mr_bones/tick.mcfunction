scoreboard players operation #temp GhostNr = @s GhostNr
execute as @e[tag=model_piece,scores={GhostNr=-2147483648..}] if score @s GhostNr = #temp GhostNr run tag @s add this_model
execute if entity @s[tag=hurt,tag=complain] run function luigis_mansion:entities/mr_bones/correct_height

execute if entity @s[tag=dying,scores={DeathTime=1}] if data entity @s ArmorItems[3].tag.luigis_mansion.loot{drop_at_0:1b} run function luigis_mansion:other/drop_loot
execute if entity @s[tag=dead] unless data entity @s ArmorItems[3].tag.luigis_mansion.loot{drop_at_0:1b} run function luigis_mansion:other/drop_loot

execute if entity @s[scores={HurtTime=1},tag=hurt,tag=!fleeing,tag=!dying] run playsound luigis_mansion:entity.mr_bones.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt,tag=!fleeing,tag=!dying] Sound 40
execute if entity @s[scores={ElementHurtTime=0},tag=element_hurt] run playsound luigis_mansion:entity.mr_bones.element_hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ElementHurtTime=0},tag=element_hurt] Sound 10
execute if entity @s[scores={Sound=0},tag=element_hurt] run playsound luigis_mansion:entity.mr_bones.element_hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=element_hurt] Sound 10
execute if entity @s[scores={Sound=0},tag=fleeing,tag=!dying] run playsound luigis_mansion:entity.mr_bones.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=fleeing,tag=!dying] Sound 40

execute unless entity @s[scores={ActionTime=-20}] run scoreboard players remove @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!laugh,tag=!complain,tag=!vanish,tag=!appear,scores={StunTime=0}] ActionTime 1
execute if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..0.7,limit=1] if entity @s[tag=!dying,tag=!dead,tag=!captured,tag=!removed_from_existence,tag=!hurt,tag=!fleeing,tag=!element_hurt] run function luigis_mansion:entities/mr_bones/collide
execute if entity @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!laugh,tag=!complain,tag=!vanish,tag=!appear,scores={StunTime=0,ActionTime=-20}] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run function luigis_mansion:entities/mr_bones/line_of_sight
scoreboard players reset #temp Steps
execute if entity @s[tag=!element_hurt,tag=!fleeing,tag=!collided,tag=attack,tag=!vanish,scores={StunTime=0}] run function luigis_mansion:entities/mr_bones/attack

execute if entity @s[scores={Time=400..}] run function luigis_mansion:entities/mr_bones/turn
execute at @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!vanish,tag=!appear,scores={StunTime=0,SpawnTime=20..}] unless entity @s[tag=!laugh,tag=!complain] facing entity @e[tag=same_room,tag=!spectator,tag=player,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!laugh,tag=!complain,tag=!vanish,tag=!appear,scores={StunTime=0,SpawnTime=20..}] positioned ~ ~0.1 ~ align y run function luigis_mansion:entities/mr_bones/move_forward
execute if entity @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=laugh,tag=!vanish,scores={StunTime=0}] run function luigis_mansion:entities/mr_bones/laugh
execute if entity @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=complain,tag=!vanish,scores={StunTime=0}] run function luigis_mansion:entities/mr_bones/complain
execute if entity @s[tag=!element_hurt,tag=!fleeing,tag=collided,tag=!vanish,tag=!appear,scores={StunTime=0}] if entity @s[tag=!dying,tag=!dead,tag=!captured,tag=!removed_from_existence] run function luigis_mansion:entities/ghost/collided

execute at @s[tag=vanish] run function luigis_mansion:entities/mr_bones/vanish
execute at @s[tag=appear] run function luigis_mansion:entities/mr_bones/appear
execute at @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!vanish,tag=!laugh,tag=!complain,tag=!appear,scores={StunTime=0}] run function luigis_mansion:old_animations/mr_bones/haunt
execute at @s[tag=fleeing,tag=!second_flee_state] run function luigis_mansion:old_animations/mr_bones/flee
execute at @s[tag=fleeing,tag=second_flee_state] run function luigis_mansion:entities/mr_bones/second_flee_state
execute at @s[tag=!fleeing,tag=hurt] run function luigis_mansion:old_animations/mr_bones/hurt
data merge entity @s[tag=!fleeing,tag=hurt] {HandItems:[{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:2,CustomModelData:96}},{id:"minecraft:diamond_pickaxe",Count:1b,tag:{Unbreakable:1b,Damage:3,CustomModelData:96}}]}
execute at @s[tag=!hurt,tag=element_hurt] run function luigis_mansion:old_animations/mr_bones/hurt

scoreboard players reset #temp GhostNr
tag @e[tag=this_model] add found_owner
tag @e[tag=this_model] remove this_model
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall