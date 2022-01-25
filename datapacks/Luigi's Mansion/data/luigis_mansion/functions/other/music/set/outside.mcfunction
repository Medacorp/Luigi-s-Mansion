execute unless entity @s[scores={MusicType=6..7}] unless entity @s[scores={MusicType=9}] unless entity @s[scores={MusicType=41}] run scoreboard players set @s HealthMusic 0
execute unless entity @s[scores={MusicType=6..7}] unless entity @s[scores={MusicType=9}] unless entity @s[scores={MusicType=41}] run scoreboard players set @s LastHealthMusic 1
scoreboard players set @s MusicType 8
scoreboard players set @s Music 0
scoreboard players set @s MusicGroup 0