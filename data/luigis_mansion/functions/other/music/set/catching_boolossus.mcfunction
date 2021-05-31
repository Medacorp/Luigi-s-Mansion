execute if entity @e[tag=boolossus,tag=split] run tag @s add catching_boolossus
execute unless entity @s[scores={MusicType=34}] run scoreboard players set @s[tag=catching_boolossus] Music 0
execute unless entity @s[scores={MusicType=34}] run scoreboard players set @s[tag=catching_boolossus] MusicType 34
scoreboard players set @s[tag=!catching_boolossus,scores={MusicType=34}] Music 0
scoreboard players set @s[tag=!catching_boolossus,scores={MusicType=34}] PrevMusicType 17
scoreboard players set @s[tag=!catching_boolossus,scores={MusicType=34}] MusicType 17
tag @s remove catching_boolossus
