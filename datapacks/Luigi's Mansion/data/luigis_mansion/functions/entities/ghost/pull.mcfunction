# boss 0
# portrait 10
# big 15
# small 20
scoreboard players add @s Pull 1
scoreboard players remove @s[tag=is_pulled] Pull 5
scoreboard players set @s[scores={Pull=..-1}] Pull 0
scoreboard players set @s[scores={Pull=21..}] Pull 20
execute if score @s Pull >= @s PullStrength as @a[tag=!spectator,tag=vacuuming_this_ghost,distance=3..] positioned as @s facing entity @e[tag=me,limit=1] feet rotated ~ 0 run function luigis_mansion:entities/ghost/pull_player