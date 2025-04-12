scoreboard players set @s[scores={HurtTime=1}] ActionTime 0
scoreboard players add @s[scores={HurtTime=1..29}] HurtTime 1
execute unless entity @s[scores={HurtTime=1..}] run scoreboard players set @s HurtTime 1
scoreboard players set @s SpawnTime 0
tag @s[tag=remove_from_existence] remove in_vacuum
function luigis_mansion:entities/ghost/remove_non_vacuumers

scoreboard players set @s[scores={HurtTime=1}] LootTimer 0
execute if entity @s[tag=portrait_ghost,tag=!no_timer_loot] run function luigis_mansion:room/loot_timer with storage luigis_mansion:data current_state.current_data.mansion_id
tag @s[scores={HurtTime=30}] add flee
execute at @s[scores={HurtTime=1..10},tag=!ground_bound,tag=!ceiling_ghost] run function luigis_mansion:entities/ghost/hurt/move
tag @s[tag=!in_vacuum] add vanish
tag @s[tag=!in_vacuum] add vanish_from_vacuum
tag @s[tag=!in_vacuum] remove flee
tag @s[tag=!in_vacuum] remove hurt