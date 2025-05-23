function luigis_mansion:entities/player/memory/get with entity @a[tag=this_player,limit=1]
summon minecraft:marker ~ ~ ~ {Tags:["interact","vacuum","poltergust"]}
scoreboard players operation #temp Room = @s Room
scoreboard players operation #temp ID = @s ID
execute if entity @s[scores={MirrorX=-2147483648..}] run scoreboard players operation #temp MirrorX = @s MirrorX
execute if entity @s[scores={MirrorZ=-2147483648..}] run scoreboard players operation #temp MirrorZ = @s MirrorZ
tag @s add me
scoreboard players set @s[tag=capturing_ghost] Invulnerable 2
tag @s[tag=capturing_ghost] remove grabbed
tag @s remove capturing_ghost
execute store result storage luigis_mansion:data macro.id int 1 run scoreboard players get #temp ID
function e3_demo:items/poltergust_500/attacking_ghost with storage luigis_mansion:data macro
execute if score #temp GhostCount > @s GhostCount run scoreboard players operation @s GhostCount = #temp GhostCount
execute if score #temp GhostCount matches 1.. run function e3_demo:items/poltergust_500/get_old_position
execute if score #temp GhostCount matches 1.. if entity @s[scores={TeleportDelayTimer=0}] run function e3_demo:items/poltergust_500/face_ghost
execute if score #temp GhostCount matches 1.. at @e[tag=ghost,tag=being_vacuumed,scores={ErrorTime=5}] run function e3_demo:items/poltergust_500/vacuuming/made_error
execute if score #temp GhostCount matches 1.. as @e[tag=ghost,tag=being_vacuumed,tag=!dead] run function e3_demo:items/poltergust_500/vacuuming/ghost
execute if score #temp GhostCount matches 1.. run scoreboard players add @s[tag=!is_pulling] ErrorTime 1
execute if score #temp GhostCount matches 1.. run scoreboard players set @s[tag=is_pulling] ErrorTime 0
execute if score #temp GhostCount matches 1.. if entity @s[tag=pulled_by_ghost] run function e3_demo:items/poltergust_500/vacuuming/get_dragged
execute if score #temp GhostCount matches 1.. if entity @s[scores={VacuumErrors=10..}] run function e3_demo:items/poltergust_500/vacuuming/ghosts_break_free
execute unless score #temp GhostCount matches 1.. run data modify storage luigis_mansion:data my_memory.poltergust_latch_on_order set value []
execute unless score #temp GhostCount matches 1.. run scoreboard players set @s VacuumErrors 0
execute unless score #temp GhostCount matches 1.. unless entity @e[tag=ball,distance=..1.5,tag=can_spit,limit=1] unless entity @e[tag=ball,tag=big,distance=..3,tag=can_spit,limit=1] run function e3_demo:items/poltergust_500/vacuuming/default
execute unless score #temp GhostCount matches 1.. if entity @e[tag=ball,tag=!big,distance=..1.5,tag=can_spit,sort=nearest,limit=1] run function e3_demo:items/poltergust_500/vacuuming/get_clogged
execute unless score #temp GhostCount matches 1.. if entity @e[tag=ball,tag=big,distance=..3,tag=can_spit,sort=nearest,limit=1] run function e3_demo:items/poltergust_500/vacuuming/get_clogged
execute if score #temp GhostCount matches 1.. run tag @s add vacuuming_ghost
execute if score #temp GhostCount matches 1.. at @s rotated ~ 0 run function e3_demo:items/poltergust_500/vacuuming/attack_ghost
execute as @e[distance=..3,tag=captured,tag=!element_death] run function e3_demo:items/poltergust_500/vacuuming/capture
scoreboard players reset #temp GhostCount
scoreboard players reset #temp MirrorX
scoreboard players reset #temp MirrorZ
scoreboard players reset #temp Room
scoreboard players reset #temp ID
scoreboard players reset #interact
scoreboard players add @s OverheatMeter 1
function e3_demo:items/poltergust_500/sync_overheat_meter
tag @e[tag=being_vacuumed] remove being_vacuumed
tag @e[tag=hit_by_poltergust] remove hit_by_poltergust
tag @s add vacuuming
tag @s remove expelling_water
execute if entity @s[scores={DamagePitch=1,DamagePitchTimer=6}] run playsound e3_demo:item.poltergust_500.damage hostile @a[tag=same_room] ~ ~ ~ 1 1
execute if entity @s[scores={DamagePitch=2,DamagePitchTimer=6}] run playsound e3_demo:item.poltergust_500.damage hostile @a[tag=same_room] ~ ~ ~ 1 1.2
execute if entity @s[scores={DamagePitch=3,DamagePitchTimer=6}] run playsound e3_demo:item.poltergust_500.damage hostile @a[tag=same_room] ~ ~ ~ 1 1.4
execute if entity @s[scores={DamagePitch=4,DamagePitchTimer=6}] run playsound e3_demo:item.poltergust_500.damage hostile @a[tag=same_room] ~ ~ ~ 1 1.6
execute if entity @s[scores={DamagePitch=5,DamagePitchTimer=6}] run playsound e3_demo:item.poltergust_500.damage hostile @a[tag=same_room] ~ ~ ~ 1 1.8
execute if entity @s[scores={DamagePitch=6..,DamagePitchTimer=6}] run playsound e3_demo:item.poltergust_500.damage hostile @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={DamagePitchTimer=0}] DamagePitch 0
scoreboard players remove @s[scores={DamagePitchTimer=1..}] DamagePitchTimer 1
tag @s remove me
kill @e[type=minecraft:marker,tag=interact,limit=1]
kill @e[type=minecraft:marker,tag=position,limit=1]
data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
data remove storage luigis_mansion:data my_memory