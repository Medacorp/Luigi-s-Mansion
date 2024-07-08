tag @s add me
scoreboard players operation #temp GhostGuyCouple = @s GhostGuyCouple
execute as @e[nbt={data:{entity:{namespace:"luigis_mansion",id:"dancing_ghost_guy"}}},tag=ghost,tag=!me] if score @s GhostGuyCouple = #temp GhostGuyCouple run tag @s add partner
scoreboard players reset #temp GhostGuyCouple
tag @s remove me
tag @e[tag=partner,tag=hidden,tag=can_spawn,limit=1] add try_spawn
execute as @e[tag=partner,tag=hidden,tag=can_spawn,limit=1] at @s run function luigis_mansion:entities/dancing_ghost_guy/ai/hidden
execute if entity @e[tag=partner,tag=hidden,limit=1] run tag @s add disappear
execute if entity @e[tag=partner,tag=hidden,limit=1] run tag @s add no_spawn_cooldown
execute if entity @e[tag=partner,tag=hidden,limit=1] run tag @s remove visible
execute if entity @e[tag=partner,tag=hidden,limit=1] run tag @s remove appear
execute unless entity @e[tag=partner,limit=1] run tag @s add stop_dancing
tag @e[tag=partner,limit=1] remove partner