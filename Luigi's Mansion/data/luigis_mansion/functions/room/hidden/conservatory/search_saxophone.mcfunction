execute unless score #conservatory_saxophone Searched matches 1 as @a[scores={Room=21}] if entity @s[scores={MusicType=7..9}] run scoreboard players set @s MusicType 0
execute unless score #conservatory_saxophone Searched matches 1 as @a[scores={Room=21}] if entity @s[scores={MusicType=0}] run scoreboard players set @s Music 0
execute positioned 658 12 19 run function luigis_mansion:blocks/dust
scoreboard players set #conservatory_saxophone Searched 1
tag @e[x=658.5,y=11,z=19.5,distance=..0.7,tag=hidden_boo] add spawn
tag @e[x=658.5,y=11,z=19.5,distance=..0.7,tag=ghost,tag=hidden] add spawn