scoreboard players add @s Pull 1
scoreboard players remove @s[tag=is_pulled] Pull 5
scoreboard players set @s[scores={Pull=..-1}] Pull 0
scoreboard players set @s[scores={Pull=21..}] Pull 20
execute as @a run scoreboard players operation @s TeleportDelay = @s TeleportDelaySetting
execute if score @s Pull >= @s PullStrength as @a[tag=!spectator,tag=vacuuming_me,scores={TeleportDelayTimer=0},distance=3..] positioned as @s facing entity @e[tag=me,limit=1] feet rotated ~ 0 run function luigis_mansion:entities/ghost/flee/pull_player