summon minecraft:marker ~ ~ ~ {Tags:["interact","vacuum","poltergust"]}
scoreboard players operation #temp Room = @s Room
scoreboard players operation #temp ID = @s ID
tag @s add me
execute as @e[tag=ghost,tag=same_room,scores={VulnerableTime=1..}] run function luigis_mansion:items/poltergust_3000/attacking_ghost
execute if score #temp GhostCount > @s GhostCount run scoreboard players operation @s GhostCount = #temp GhostCount
execute if score #temp GhostCount matches 1.. as @e[tag=ghost,tag=being_vacuumed] run function luigis_mansion:items/poltergust_3000/catch_ghost
execute if score #temp GhostCount matches 1.. as @e[tag=ghost,tag=being_vacuumed] facing entity @s feet run function luigis_mansion:items/poltergust_3000/vacuuming/ghost
execute if score #temp GhostCount matches 1.. run tag @s[tag=is_pulling] remove made_error
execute if score #temp GhostCount matches 1.. run scoreboard players set @s[tag=is_pulling] ErrorTime 0
execute if score #temp GhostCount matches 1.. run scoreboard players add @s[tag=!is_pulling] ErrorTime 1
execute if score #temp GhostCount matches 1.. if entity @s[scores={ErrorTime=5..}] run function luigis_mansion:items/poltergust_3000/vacuuming/made_error
execute unless score #temp GhostCount matches 1.. run tag @s remove made_error
execute unless score #temp GhostCount matches 1.. run scoreboard players set @s VacuumErrors 0
execute unless score #temp GhostCount matches 1.. run scoreboard players set @s ErrorTime 0
execute unless score #temp GhostCount matches 1.. unless entity @e[tag=ball,distance=..2.5,tag=can_spit,limit=1] run function luigis_mansion:items/poltergust_3000/vacuuming/default
execute unless score #temp GhostCount matches 1.. if entity @e[tag=ball,distance=..2.5,tag=can_spit,sort=nearest,limit=1] run function luigis_mansion:items/poltergust_3000/vacuuming/get_clogged
execute if score #temp GhostCount matches 1.. run tag @s add vacuuming_ghost
execute if entity @s[tag=catch_portrait_ghost] as @a[tag=same_room,scores={Room=1..}] unless entity @s[scores={MusicGroup=0,MusicType=19}] unless entity @s[scores={MusicGroup=0,MusicType=27}] unless entity @s[scores={MusicGroup=0,MusicType=29..30}] unless entity @s[scores={MusicGroup=0,MusicType=37}] run function luigis_mansion:other/music/set/catching_portrait_ghost
execute if entity @s[tag=!catch_portrait_ghost,tag=catch_ghost] as @a[tag=same_room,scores={Room=1..}] unless entity @s[scores={MusicGroup=0,MusicType=19}] unless entity @s[scores={MusicGroup=0,MusicType=27..30}] unless entity @s[scores={MusicGroup=0,MusicType=37}] run function luigis_mansion:other/music/set/catching_ghost
execute as @e[distance=..1.2,tag=captured,tag=!element_death] at @s run function luigis_mansion:items/poltergust_3000/vacuuming/capture
scoreboard players reset #temp GhostCount
scoreboard players reset #temp Room
scoreboard players reset #temp ID
tag @s add vacuuming
tag @s remove expelling_dust
tag @s remove expelling_fire
tag @s remove expelling_water
tag @s remove expelling_ice
scoreboard players set @s[tag=!made_error] Pull 0
execute if entity @s[scores={DamagePitch=1,DamagePitchTimer=6}] run playsound luigis_mansion:entity.ghost.lose_health hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={DamagePitch=2,DamagePitchTimer=6}] run playsound luigis_mansion:entity.ghost.lose_health hostile @a ~ ~ ~ 1 1.2
execute if entity @s[scores={DamagePitch=3,DamagePitchTimer=6}] run playsound luigis_mansion:entity.ghost.lose_health hostile @a ~ ~ ~ 1 1.4
execute if entity @s[scores={DamagePitch=4,DamagePitchTimer=6}] run playsound luigis_mansion:entity.ghost.lose_health hostile @a ~ ~ ~ 1 1.6
execute if entity @s[scores={DamagePitch=5,DamagePitchTimer=6}] run playsound luigis_mansion:entity.ghost.lose_health hostile @a ~ ~ ~ 1 1.8
execute if entity @s[scores={DamagePitch=6..,DamagePitchTimer=6}] run playsound luigis_mansion:entity.ghost.lose_health hostile @a ~ ~ ~ 1 2
scoreboard players set @s[scores={DamagePitchTimer=0}] DamagePitch 0
scoreboard players remove @s[scores={DamagePitchTimer=1..}] DamagePitchTimer 1
tag @s remove me
tag @e[tag=already_hurt] remove already_hurt
kill @e[type=minecraft:marker,tag=interact,limit=1]