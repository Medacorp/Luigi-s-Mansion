scoreboard players operation #temp GhostGuyCouple = @s GhostGuyCouple
execute as @e[nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"dancing_ghost_guy"}}}}]},tag=dancing,distance=0.1..] if score @s GhostGuyCouple = #temp GhostGuyCouple run tag @s add partner
scoreboard players reset #temp GhostGuyCouple


execute if entity @e[tag=partner,limit=1,tag=!leader] run tag @s add leader
function #luigis_mansion:entities/ghost_guy/dance
execute at @s[tag=leader] facing entity @e[tag=partner,limit=1] feet rotated ~ 0 positioned ^ ^ ^0.5 run function luigis_mansion:old_entities/ghost_guy/lead
tag @e[tag=partner,limit=1] remove partner