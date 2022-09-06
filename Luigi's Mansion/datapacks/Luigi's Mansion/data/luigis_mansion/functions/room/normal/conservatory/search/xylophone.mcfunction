execute unless score #conservatory_xylophone Searched matches 1 as @a[scores={Room=21},gamemode=!spectator] if entity @s[scores={MusicType=7..9}] run function luigis_mansion:other/music/set/silence
execute positioned 661 11 -16 run function luigis_mansion:blocks/dust
scoreboard players set #conservatory_xylophone Searched 1
tag @e[x=661.5,y=11,z=-15.5,distance=..0.7,tag=ghost,tag=hidden] add spawn