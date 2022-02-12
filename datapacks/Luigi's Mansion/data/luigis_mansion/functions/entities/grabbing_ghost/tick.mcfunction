execute if entity @s[tag=dying,scores={DeathTime=1}] if data storage luigis_mansion:data current_state.current_data.ghosts.grabbing_ghost{loot_at_0:1b} run function luigis_mansion:entities/grabbing_ghost/drop_loot
execute if entity @s[tag=dead] unless data storage luigis_mansion:data current_state.current_data.ghosts.grabbing_ghost{loot_at_0:1b} run function luigis_mansion:entities/grabbing_ghost/drop_loot

tag @s[tag=!basher,tag=attack,scores={ActionTime=1..40}] remove hurt
tag @s[tag=!basher,tag=attack,scores={ActionTime=1..40}] remove element_hurt
data modify entity @s[tag=!basher,tag=attack,scores={ActionTime=1..40}] ArmorItems[3].tag merge value {attacked_by:[]}
scoreboard players set @s[tag=!basher,tag=attack,scores={ActionTime=1..40}] StunTime 0
scoreboard players set @s[tag=!basher,tag=attack,scores={ActionTime=1..40}] VulnerableTime 0

execute if entity @s[scores={HurtTime=1},tag=hurt,tag=!fleeing,tag=!dying] run playsound luigis_mansion:entity.grabbing_ghost.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt,tag=!fleeing,tag=!dying] Sound 40
execute if entity @s[tag=element_hurt] run playsound luigis_mansion:entity.grabbing_ghost.element_hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=element_hurt] Sound 30
execute if entity @s[scores={Sound=0},tag=fleeing,tag=!dying] run playsound luigis_mansion:entity.grabbing_ghost.flee hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={Sound=0},tag=!vanish,tag=!fleeing,tag=!attack,tag=!laugh,tag=!complain,tag=!appear,tag=!basher] run playsound luigis_mansion:entity.grabbing_ghost.ambient hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0}] Sound 40

execute if entity @e[tag=same_room,tag=!spectator,distance=..0.7,limit=1] unless entity @s[tag=!element_hurt,tag=!complain,tag=!laugh] if entity @s[tag=!vanish,tag=!appear,tag=!basher,tag=!attack,tag=!dying,tag=!dead,tag=!captured,tag=!removed_from_existence,tag=!hurt,tag=!fleeing,tag=!element_hurt] run function luigis_mansion:entities/grabbing_ghost/collide
execute if entity @s[tag=!basher] run function luigis_mansion:entities/grabbing_ghost/select_attack/grab
execute if entity @s[tag=basher] run function luigis_mansion:entities/grabbing_ghost/select_attack/basher

execute at @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!vanish,scores={StunTime=0}] facing entity @e[tag=same_room,tag=!spectator,sort=nearest,limit=1] feet rotated ~ 0 run teleport @s ~ ~ ~ ~ ~
execute at @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!vanish,tag=!laugh,tag=!complain,tag=!appear,scores={StunTime=0}] run function luigis_mansion:entities/ghost/move
execute if entity @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=laugh,scores={StunTime=0}] run function luigis_mansion:entities/grabbing_ghost/laugh
execute if entity @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=complain,scores={StunTime=0}] run function luigis_mansion:entities/grabbing_ghost/complain
execute if entity @s[tag=!element_hurt,tag=!fleeing,tag=collided,scores={StunTime=0}] if entity @s[tag=!dying,tag=!dead,tag=!captured,tag=!removed_from_existence] run function luigis_mansion:entities/ghost/collided
execute if entity @s[tag=vanish] run function luigis_mansion:entities/grabbing_ghost/vanish
execute if entity @s[tag=appear] run function luigis_mansion:entities/grabbing_ghost/appear
execute at @s[tag=!hurt,tag=!element_hurt,tag=!fleeing,tag=!attack,tag=!collided,tag=!vanish,tag=!laugh,tag=!complain,tag=!appear,scores={StunTime=0}] run function luigis_mansion:animations/grabbing_ghost/haunt
execute at @s[tag=fleeing] run function luigis_mansion:animations/grabbing_ghost/flee
execute at @s[tag=!fleeing,tag=hurt] run function luigis_mansion:animations/grabbing_ghost/hurt
execute at @s[tag=!hurt,tag=element_hurt] run function luigis_mansion:animations/grabbing_ghost/hurt
execute at @s[scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall