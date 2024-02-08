data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"dance"}
tag @s add me
scoreboard players operation #temp GhostGuyCouple = @s GhostGuyCouple
execute as @e[nbt={ArmorItems:[{tag:{luigis_mansion:{entity:{namespace:"luigis_mansion",id:"dancing_ghost_guy"}}}}]},tag=!me,tag=!stop_dancing] if score @s GhostGuyCouple = #temp GhostGuyCouple run tag @s add partner
scoreboard players reset #temp GhostGuyCouple
tag @s remove me

execute if entity @e[tag=partner,limit=1,tag=!leader] run tag @s add leader
execute at @s[tag=leader] facing entity @e[tag=partner,limit=1] feet rotated ~ 0 run function luigis_mansion:entities/ghost_guy/lead with entity @s data.entity
tag @e[tag=partner,limit=1] remove partner