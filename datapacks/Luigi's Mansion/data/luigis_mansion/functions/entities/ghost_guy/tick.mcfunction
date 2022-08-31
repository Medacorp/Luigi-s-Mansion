execute if entity @s[tag=dying,tag=!dancing,scores={DeathTime=1}] if data entity @s ArmorItems[3].tag.loot{drop_at_0:1b} run function luigis_mansion:other/drop_loot
execute if entity @s[tag=dying,tag=dancing,scores={DeathTime=1}] if data entity @s ArmorItems[3].tag.loot{drop_at_0:1b} run function luigis_mansion:other/drop_loot
execute if entity @s[tag=dead,tag=!dancing] unless data entity @s ArmorItems[3].tag.loot{drop_at_0:1b} run function luigis_mansion:other/drop_loot
execute if entity @s[tag=dead,tag=dancing] unless data entity @s ArmorItems[3].tag.loot{drop_at_0:1b} run function luigis_mansion:other/drop_loot
execute if entity @s[tag=dead] run scoreboard players operation #temp GhostGuyCouple = @s GhostGuyCouple
execute if entity @s[tag=dead] as @e[tag=ghost_guy] if score @s GhostGuyCouple = #temp GhostGuyCouple run tag @s add partner_died
execute if entity @s[tag=dead] as @e[tag=ghost_guy] if score @s GhostGuyCouple = #temp GhostGuyCouple run scoreboard players reset @s GhostGuyCouple
execute if entity @s[tag=dead] run scoreboard players reset #temp GhostGuyCouple

execute if entity @s[scores={HurtTime=1},tag=hurt,tag=!fleeing,tag=!dying] run playsound luigis_mansion:entity.ghost_guy.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt,tag=!fleeing,tag=!dying] Sound 40
execute if entity @s[scores={ElementHurtTime=0},tag=element_hurt] run playsound luigis_mansion:entity.ghost_guy.element_hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ElementHurtTime=0},tag=element_hurt] Sound 30
execute if entity @s[scores={Sound=0},tag=element_hurt] run playsound luigis_mansion:entity.ghost_guy.element_hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=element_hurt] Sound 30
execute if entity @s[scores={Sound=0},tag=fleeing,tag=!dying] run playsound luigis_mansion:entity.ghost_guy.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=fleeing,tag=!dying] Sound 40

scoreboard players remove @s[scores={WaitTime=1..}] WaitTime 1
execute if entity @e[tag=same_room,tag=!spectator,distance=..0.7,limit=1] if entity @s[tag=!vanish,tag=!appear,tag=!dying,tag=!dead,tag=!captured,tag=!removed_from_existence,tag=!hurt,tag=!fleeing,tag=!element_hurt] run function luigis_mansion:entities/ghost_guy/collide
execute if entity @s[tag=!element_hurt,tag=!fleeing,tag=!complain,tag=!attack,tag=!collided,tag=!maskless,tag=stop_dancing,tag=!vanish,tag=!appear,scores={WaitTime=0}] positioned ^ ^ ^0.7 if entity @e[tag=same_room,tag=!spectator,distance=..0.7,limit=1] run tag @s add attack
execute if entity @s[tag=!element_hurt,tag=!fleeing,tag=!collided,tag=attack,tag=!maskless,scores={StunTime=0}] run function luigis_mansion:entities/ghost_guy/attack
execute if entity @s[tag=!element_hurt,tag=!fleeing,tag=!collided,tag=dodge,tag=!maskless,scores={StunTime=0}] run function luigis_mansion:entities/ghost_guy/dodge

scoreboard players add @s[tag=in_vacuum,tag=!appear,tag=!vanish] VacuumTime 1
scoreboard players set @s[tag=!in_vacuum_2,tag=!in_vacuum] VacuumTime 0
tag @s[tag=!in_vacuum] remove in_vacuum_2
tag @s[tag=in_vacuum] add in_vacuum_2
execute if entity @s[tag=!maskless,scores={VacuumTime=1}] run playsound luigis_mansion:entity.ghost_guy.mask_shake hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=!maskless,scores={VacuumTime=4}] run playsound luigis_mansion:entity.ghost_guy.mask_shake hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=!maskless,scores={VacuumTime=7}] run playsound luigis_mansion:entity.ghost_guy.mask_shake hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=!maskless,scores={VacuumTime=10}] run playsound luigis_mansion:entity.ghost_guy.mask_shake hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=!maskless,scores={VacuumTime=13}] run playsound luigis_mansion:entity.ghost_guy.mask_shake hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=!maskless,scores={VacuumTime=16}] run playsound luigis_mansion:entity.ghost_guy.mask_shake hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=!maskless,scores={VacuumTime=19}] run playsound luigis_mansion:entity.ghost_guy.mask_shake hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=!maskless,scores={VacuumTime=22}] run playsound luigis_mansion:entity.ghost_guy.mask_shake hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=!maskless,scores={VacuumTime=25}] run playsound luigis_mansion:entity.ghost_guy.mask_shake hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=!maskless,scores={VacuumTime=28}] run playsound luigis_mansion:entity.ghost_guy.mask_shake hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=!maskless,scores={VacuumTime=31}] run playsound luigis_mansion:entity.ghost_guy.mask_shake hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=!maskless,scores={VacuumTime=34}] run playsound luigis_mansion:entity.ghost_guy.mask_shake hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=!maskless,scores={VacuumTime=37}] run playsound luigis_mansion:entity.ghost_guy.mask_shake hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=!maskless,scores={VacuumTime=40}] run function luigis_mansion:entities/ghost_guy/lose_mask

execute if entity @s[tag=element_hurt] run function luigis_mansion:entities/ghost_guy/stop_dancing

scoreboard players set @s[tag=attack] Distance 0
execute at @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!dodge,tag=!complain,tag=stop_dancing,tag=!vanish,scores={Distance=0,WaitTime=0,SpawnTime=21..}] run function luigis_mansion:entities/ghost_guy/target
execute at @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!dodge,tag=!complain,tag=stop_dancing,tag=!vanish,scores={Distance=1..,WaitTime=0,SpawnTime=21..}] run function luigis_mansion:entities/ghost_guy/move
execute at @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!dodge,tag=!complain,tag=!stop_dancing,tag=!vanish,scores={SpawnTime=21..}] run function luigis_mansion:entities/ghost_guy/dance
execute if entity @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!dodge,tag=complain,scores={StunTime=0}] run function luigis_mansion:entities/ghost_guy/complain
execute if entity @s[tag=!fleeing,tag=collided,scores={StunTime=0}] if entity @s[tag=!dying,tag=!dead,tag=!captured,tag=!removed_from_existence] run function luigis_mansion:entities/ghost/collided
execute if entity @s[tag=vanish] run function luigis_mansion:entities/ghost_guy/vanish
execute if entity @s[tag=appear] run function luigis_mansion:entities/ghost_guy/appear
execute at @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!vanish,tag=!dodge,tag=!complain,tag=!appear,tag=stop_dancing,scores={StunTime=0}] run function luigis_mansion:animations/ghost_guy/haunt
execute at @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!vanish,tag=!dodge,tag=!complain,tag=!appear,tag=!stop_dancing,scores={StunTime=0}] run function luigis_mansion:animations/ghost_guy/dance
execute at @s[tag=fleeing] run function luigis_mansion:animations/ghost_guy/flee
execute at @s[tag=!fleeing,tag=hurt] run function luigis_mansion:animations/ghost_guy/hurt
execute at @s[tag=!hurt,tag=element_hurt] run function luigis_mansion:animations/ghost_guy/hurt
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/2_tall