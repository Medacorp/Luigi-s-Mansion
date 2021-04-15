execute if entity @e[tag=chauncey,tag=hurt,tag=!ball] run tag @s add catching_chauncey
execute unless entity @s[scores={MusicType=32}] run scoreboard players set @s[tag=catching_chauncey] Music 0
execute unless entity @s[scores={MusicType=32}] run scoreboard players set @s[tag=catching_chauncey] MusicType 32
scoreboard players set @s[tag=!catching_chauncey,scores={MusicType=32}] Music 0
scoreboard players set @s[tag=!catching_chauncey,scores={MusicType=32}] PrevMusicType 15
scoreboard players set @s[tag=!catching_chauncey,scores={MusicType=32}] MusicType 15
tag @s remove catching_chauncey
