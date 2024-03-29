execute unless score #conservatory_saxophone Searched matches 1 as @a[scores={Room=21}] if entity @s[scores={MusicType=7..9}] run function luigis_mansion:other/music/set/silence
execute positioned 658 12 -4 run function luigis_mansion:blocks/dust
scoreboard players set #conservatory_saxophone Searched 1
tag @e[x=658.5,y=11,z=-3.5,distance=..0.7,tag=ghost,tag=hidden] add spawn