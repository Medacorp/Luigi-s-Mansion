execute if entity @e[tag=bogmire,tag=hurt] run tag @s add catching_bogmire
execute unless entity @s[scores={MusicType=33}] run scoreboard players set @s[tag=catching_bogmire] Music 0
execute unless entity @s[scores={MusicType=33}] run scoreboard players set @s[tag=catching_bogmire] MusicType 33
scoreboard players set @s[tag=!catching_bogmire,scores={MusicType=33}] Music 0
scoreboard players set @s[tag=!catching_bogmire,scores={MusicType=33}] PrevMusicType 16
scoreboard players set @s[tag=!catching_bogmire,scores={MusicType=33}] MusicType 16
tag @s remove catching_bogmire
