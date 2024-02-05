execute if entity @s[tag=dying,scores={DeathTime=1}] if data entity @s ArmorItems[3].tag.luigis_mansion.loot{drop_at_0:1b} run function luigis_mansion:other/drop_loot
execute if entity @s[tag=dead] unless data entity @s ArmorItems[3].tag.luigis_mansion.loot{drop_at_0:1b} run function luigis_mansion:other/drop_loot

execute if entity @s[scores={HurtTime=1},tag=hurt,tag=!flee,tag=!dying] run playsound luigis_mansion:entity.garbage_can_ghost.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt,tag=!flee,tag=!dying] Sound 40
scoreboard players set @s[scores={HurtTime=1},tag=hurt,tag=!flee,tag=!dying] BananaDropTime 40
execute if entity @s[scores={ElementHurtTime=0},tag=element_hurt] run playsound luigis_mansion:entity.garbage_can_ghost.element_hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ElementHurtTime=0},tag=element_hurt] Sound 30
execute if entity @s[scores={Sound=0},tag=element_hurt] run playsound luigis_mansion:entity.garbage_can_ghost.element_hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=element_hurt] Sound 30
execute if entity @s[scores={Sound=0},tag=flee,tag=!dying] run playsound luigis_mansion:entity.garbage_can_ghost.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=flee,tag=!dying] Sound 40
execute if entity @s[scores={BananaDropTime=0}] run function luigis_mansion:old_entities/garbage_can_ghost/throw_banana
scoreboard players add @s[scores={BananaDropTime=0},tag=flee] BananaDropTime 60
scoreboard players remove @s[scores={BananaDropTime=1..},tag=flee] BananaDropTime 1

execute if entity @e[tag=same_room,tag=!spectator,tag=player,distance=..0.7,limit=1] if entity @s[tag=!vanish,tag=!appear] if entity @s[tag=!dying,tag=!dead,tag=!captured,tag=!removed_from_existence,tag=!hurt,tag=!flee,tag=!element_hurt] run function luigis_mansion:old_entities/garbage_can_ghost/collide
execute if entity @s[tag=!element_hurt,tag=!flee,tag=!collided,tag=!vanish,tag=!appear,tag=attack,scores={StunTime=0}] run function luigis_mansion:old_entities/garbage_can_ghost/attack
execute if entity @s[tag=!element_hurt,tag=!flee,tag=collided,scores={StunTime=0}] if entity @s[tag=!dying,tag=!dead,tag=!captured,tag=!removed_from_existence] run function luigis_mansion:old_entities/ghost/collided
execute if entity @s[tag=vanish] run function luigis_mansion:old_entities/garbage_can_ghost/vanish
execute if entity @s[tag=appear] run function luigis_mansion:old_entities/garbage_can_ghost/appear
execute at @s[tag=flee,tag=!second_flee_state] run function luigis_mansion:old_animations/garbage_can_ghost/flee
execute at @s[tag=flee,tag=second_flee_state] run function luigis_mansion:old_entities/garbage_can_ghost/second_flee_state
execute at @s[tag=!flee,tag=hurt] run function luigis_mansion:old_animations/garbage_can_ghost/hurt
execute at @s[tag=!hurt,tag=element_hurt] run function luigis_mansion:old_animations/garbage_can_ghost/hurt
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall