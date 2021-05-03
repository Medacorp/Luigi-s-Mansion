execute if entity @s[tag=dying,scores={HurtTime=1}] run playsound luigis_mansion:entity.clockwork_soldier.vacuumed hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[tag=dead] run loot spawn ~ ~ ~ loot luigis_mansion:entities/ghost/clockwork_soldiers
execute if entity @s[tag=dead] run particle minecraft:dust 0.7 1 1 1 ~-0.1 ~ ~0.1 0.2 0.6 0.2 1 30
execute if entity @s[tag=dead] run teleport @s ~ -100 ~
execute if entity @s[tag=dead,tag=blue_clockwork_soldier] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.clockwork_soldiers.blue_health int 1 run scoreboard players set @s Health 0
execute if entity @s[tag=dead,tag=green_clockwork_soldier] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.clockwork_soldiers.green_health int 1 run scoreboard players set @s Health 0
execute if entity @s[tag=dead,tag=pink_clockwork_soldier] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.clockwork_soldiers.pink_health int 1 run scoreboard players set @s Health 0
execute if entity @s[tag=dead] unless entity @e[tag=clockwork_soldier,limit=1,tag=!dead] run advancement grant @a only luigis_mansion:portrait_ghosts/clockwork_soldiers
execute if entity @s[tag=vanish,tag=blue_clockwork_soldier] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.clockwork_soldiers.blue_health int 1 run scoreboard players operation @s LastHealth = @s Health
execute if entity @s[tag=vanish,tag=green_clockwork_soldier] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.clockwork_soldiers.green_health int 1 run scoreboard players operation @s LastHealth = @s Health
execute if entity @s[tag=vanish,tag=pink_clockwork_soldier] store result storage luigis_mansion:data current_state.current_data.portrait_ghosts.clockwork_soldiers.pink_health int 1 run scoreboard players operation @s LastHealth = @s Health


tag @s[tag=reset_to_base] remove activated
tag @s[tag=reset_to_base] remove was_activated
execute if entity @s[tag=activated,tag=!was_activated,scores={WaitTime=0}] run function luigis_mansion:entities/clockwork_soldier/activate
tag @s[tag=activated,scores={WaitTime=1}] add was_activated

execute if entity @s[scores={HurtTime=1},tag=hurt] run playsound luigis_mansion:entity.clockwork_soldier.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={HurtTime=1},tag=hurt] Sound 40
execute if entity @s[scores={Sound=0},tag=fleeing] run playsound luigis_mansion:entity.clockwork_soldier.flee hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[scores={Sound=0},tag=fleeing] Sound 40

scoreboard players remove @s[scores={WaitTime=1..}] WaitTime 1
execute if entity @s[tag=was_activated,tag=!fleeing,tag=!complain,tag=!attack,tag=!windless,scores={WaitTime=0}] positioned ^ ^ ^0.7 if entity @a[gamemode=!spectator,distance=..0.7,limit=1] run tag @s add attack
execute if entity @s[tag=was_activated,tag=!fleeing,tag=attack,tag=!windless,scores={StunTime=0}] run function luigis_mansion:entities/clockwork_soldier/attack

scoreboard players add @s[tag=was_activated,tag=in_vacuum] VacuumTime 1
scoreboard players set @s[tag=!in_vacuum_2,tag=!in_vacuum] VacuumTime 0
tag @s[tag=!in_vacuum] remove in_vacuum_2
tag @s[tag=in_vacuum] add in_vacuum_2
execute if entity @s[tag=!windless,scores={VacuumTime=40..}] run function luigis_mansion:entities/clockwork_soldier/lose_wind

scoreboard players set @s[tag=attack] Distance 0
execute at @s[tag=was_activated,tag=!hurt,tag=!fleeing,tag=!attack,tag=!complain,scores={Distance=0,WaitTime=0}] run function luigis_mansion:entities/clockwork_soldier/target
execute at @s[tag=was_activated,tag=!hurt,tag=!fleeing,tag=!attack,tag=!complain,scores={Distance=1..,WaitTime=0}] run function luigis_mansion:entities/clockwork_soldier/move
execute if entity @s[tag=was_activated,tag=!hurt,tag=!fleeing,tag=!attack,tag=complain,scores={StunTime=0}] run function luigis_mansion:entities/clockwork_soldier/complain
tag @s[scores={VulnerableTime=1}] add disappear