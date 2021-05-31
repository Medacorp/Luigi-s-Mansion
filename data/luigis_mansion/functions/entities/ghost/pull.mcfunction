scoreboard players operation #temp Room = @s Room
execute as @a[gamemode=!spectator,tag=vacuuming_this_ghost,distance=3..] run tag @s add target
execute as @a[gamemode=!spectator,tag=vacuuming_this_ghost,distance=..3] run scoreboard players set @s Pull 0
scoreboard players add @s Pull 1
scoreboard players remove @s[scores={Pull=5..,PullStrength=4..},tag=is_pulled] Pull 10
execute if entity @s[tag=is_pulled] run scoreboard players set @a[tag=target] Pull 0
execute unless entity @s[scores={Pull=220}] if score @s Pull >= @s PullStrength run scoreboard players set #temp Move 4
execute unless entity @s[scores={Pull=220}] if score @s Pull >= @s PullStrength as @a[tag=target] positioned as @s facing entity @e[tag=me,limit=1] feet rotated ~ 0 run function luigis_mansion:entities/ghost/pull_player
execute if entity @s[scores={Pull=220}] run tag @a[gamemode=!spectator,tag=vacuuming_this_ghost] add poltergust_malfunction
scoreboard players reset #temp Room
tag @s remove can_pull
tag @a remove target
execute if score @s Pull >= @s PullStrength if entity @s[tag=can_pull] run scoreboard players set #temp Move 4