scoreboard players set @s[tag=idle] Animation 0
scoreboard players set @s[scores={Animation=..-1}] Animation 0
scoreboard players set @s[scores={Animation=0}] IdleTime 0
scoreboard players set @s[scores={IdleTime=1..}] IdleTime 0
tag @s remove idle