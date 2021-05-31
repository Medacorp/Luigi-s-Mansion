execute if entity @e[tag=king_boo,tag=!hidden] run tag @s add catching_king_boo
execute unless entity @s[scores={MusicType=35}] run scoreboard players set @s[tag=catching_king_boo] Music 0
execute unless entity @s[scores={MusicType=35}] run scoreboard players set @s[tag=catching_king_boo] MusicType 35
scoreboard players set @s[tag=!catching_king_boo,scores={MusicType=35}] Music 0
scoreboard players set @s[tag=!catching_king_boo,scores={MusicType=35}] PrevMusicType 18
scoreboard players set @s[tag=!catching_king_boo,scores={MusicType=35}] MusicType 18
tag @s remove catching_king_boo
