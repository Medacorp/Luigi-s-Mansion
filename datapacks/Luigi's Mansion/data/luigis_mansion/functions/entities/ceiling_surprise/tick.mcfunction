execute if entity @s[tag=dying,scores={DeathTime=1}] if data storage luigis_mansion:data current_state.current_data.ghosts.ceiling_surprise{loot_at_0:1b} run function luigis_mansion:entities/ceiling_surprise/drop_loot
execute if entity @s[tag=dead] unless data storage luigis_mansion:data current_state.current_data.ghosts.ceiling_surprise{loot_at_0:1b} run function luigis_mansion:entities/ceiling_surprise/drop_loot

execute if entity @s[scores={HurtTime=1},tag=hurt,tag=!fleeing,tag=!dying] run playsound luigis_mansion:entity.ceiling_surprise.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt,tag=!fleeing,tag=!dying] Sound 40
execute if entity @s[scores={ElementHurtTime=0},tag=element_hurt] run playsound luigis_mansion:entity.ceiling_surprise.element_hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={ElementHurtTime=0},tag=element_hurt] Sound 30
execute if entity @s[scores={Sound=0},tag=fleeing,tag=!dying] run playsound luigis_mansion:entity.ceiling_surprise.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=fleeing,tag=!dying] Sound 40

execute if entity @e[tag=same_room,tag=!spectator,distance=..0.7,limit=1] if entity @s[tag=!vanish,tag=!appear] if entity @s[tag=!dying,tag=!dead,tag=!removed_from_existence,tag=!hurt,tag=!fleeing,tag=!element_hurt] run function luigis_mansion:entities/ceiling_surprise/collide

execute at @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!collided,tag=!appear,tag=!vanish,scores={StunTime=0,SpawnTime=20..}] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute if entity @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!collided,tag=laugh,tag=!vanish,scores={StunTime=0}] run function luigis_mansion:entities/ceiling_surprise/laugh
execute if entity @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!collided,tag=complain,tag=!vanish,scores={StunTime=0}] run function luigis_mansion:entities/ceiling_surprise/complain
execute if entity @s[tag=!element_hurt,tag=!fleeing,tag=collided,tag=!vanish,scores={StunTime=0}] if entity @s[tag=!dying,tag=!dead,tag=!removed_from_existence] run function luigis_mansion:entities/ghost/collided
execute if entity @s[tag=vanish] run function luigis_mansion:entities/ceiling_surprise/vanish
execute if entity @s[tag=appear] run function luigis_mansion:entities/ceiling_surprise/appear
execute at @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!collided,tag=!vanish,tag=!laugh,tag=!complain,tag=!appear,scores={StunTime=0}] run function luigis_mansion:animations/ceiling_ghost/haunt
execute at @s[tag=fleeing] run function luigis_mansion:animations/ceiling_ghost/flee
execute at @s[tag=!fleeing,tag=hurt] run function luigis_mansion:animations/ceiling_ghost/hurt
execute at @s[tag=!hurt,tag=element_hurt] run function luigis_mansion:animations/ceiling_ghost/hurt
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/ceiling_ghost