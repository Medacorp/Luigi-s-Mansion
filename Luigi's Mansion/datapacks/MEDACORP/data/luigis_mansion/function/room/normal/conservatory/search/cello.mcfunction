execute unless score #conservatory_cello Searched matches 1 as @a[scores={Room=21}] if entity @s[scores={MusicType=7..9}] run function luigis_mansion:other/music/set/silence
execute positioned 661.0 11 -9.0 run function luigis_mansion:blocks/dust
scoreboard players set #conservatory_cello Searched 1
tag @e[x=661.5,y=11,z=-8.5,distance=..0.7,tag=ghost,tag=hidden] add spawn