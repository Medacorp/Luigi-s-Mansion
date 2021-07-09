summon minecraft:marker ~ ~ ~ {Tags:["interact","vacuum","poltergust"]}
scoreboard players operation #temp Room = @s Room
scoreboard players operation #temp ID = @s ID
tag @s add me
execute as @e[tag=ghost,tag=same_room] run function luigis_mansion:items/poltergust_3000/attacking_ghost
execute if score #temp GhostCount > @s GhostCount run scoreboard players operation @s GhostCount = #temp GhostCount
execute if score #temp GhostCount matches 1.. as @e[tag=ghost,tag=being_vacuumed] run function luigis_mansion:items/poltergust_3000/catch_ghost
execute if score #temp GhostCount matches 1.. as @e[tag=ghost,tag=being_vacuumed] facing entity @s feet run function luigis_mansion:items/poltergust_3000/vacuuming/ghost
execute unless score #temp GhostCount matches 1.. unless entity @e[tag=ball,distance=..2.5,tag=can_spit,limit=1] run function luigis_mansion:items/poltergust_3000/vacuuming/default
execute unless score #temp GhostCount matches 1.. if entity @e[tag=ball,distance=..2.5,tag=can_spit,limit=1] run function luigis_mansion:items/poltergust_3000/vacuuming/clogged
execute if score #temp GhostCount matches 1.. run tag @s add vacuuming_ghost
execute if entity @s[tag=catch_portrait_ghost] as @a[tag=same_room] unless entity @s[scores={MusicGroup=0,MusicType=29}] run function luigis_mansion:other/music/set/catching_portrait_ghost
execute if entity @s[tag=!catch_portrait_ghost,tag=catch_ghost] as @a[tag=same_room] unless entity @s[scores={MusicGroup=0,MusicType=28..29}] unless entity @s[scores={MusicGroup=0,MusicType=37}] run function luigis_mansion:other/music/set/catching_ghost
scoreboard players reset #temp GhostCount
scoreboard players reset #temp Room
scoreboard players reset #temp ID
execute if entity @s[scores={DamagePitch=1,DamagePitchTimer=6}] run playsound luigis_mansion:entity.ghost.lose_health hostile @a ~ ~ ~ 1 1
execute if entity @s[scores={DamagePitch=2,DamagePitchTimer=6}] run playsound luigis_mansion:entity.ghost.lose_health hostile @a ~ ~ ~ 1 1.2
execute if entity @s[scores={DamagePitch=3,DamagePitchTimer=6}] run playsound luigis_mansion:entity.ghost.lose_health hostile @a ~ ~ ~ 1 1.4
execute if entity @s[scores={DamagePitch=4,DamagePitchTimer=6}] run playsound luigis_mansion:entity.ghost.lose_health hostile @a ~ ~ ~ 1 1.6
execute if entity @s[scores={DamagePitch=5,DamagePitchTimer=6}] run playsound luigis_mansion:entity.ghost.lose_health hostile @a ~ ~ ~ 1 1.8
execute if entity @s[scores={DamagePitch=6..,DamagePitchTimer=6}] run playsound luigis_mansion:entity.ghost.lose_health hostile @a ~ ~ ~ 1 2
scoreboard players set @s[scores={DamagePitchTimer=0}] DamagePitch 0
scoreboard players remove @s[scores={DamagePitchTimer=1..}] DamagePitchTimer 1
tag @s remove me
tag @s add vacuuming
tag @e[tag=already_hurt] remove already_hurt
kill @e[type=minecraft:marker,tag=interact,limit=1]