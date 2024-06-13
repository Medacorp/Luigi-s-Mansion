execute unless score #conservatory_drum_3 Searched matches 1 as @a[scores={Room=21}] if entity @s[scores={MusicType=7..9}] run function luigis_mansion:other/music/set/silence
execute positioned 656 11 32 run function luigis_mansion:blocks/dust
scoreboard players set #conservatory_drum_3 Searched 1
tag @e[x=656.5,y=11,z=32.5,distance=..0.7,tag=ghost,tag=hidden] add spawn