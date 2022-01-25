execute unless score #conservatory_harp Searched matches 1 as @a[scores={Room=21},gamemode=!spectator] if entity @s[scores={MusicType=7..9}] run function luigis_mansion:other/music/set/silence
execute positioned 656.0 11 -6.0 run function luigis_mansion:blocks/dust
scoreboard players set #conservatory_harp Searched 1
tag @e[x=656.5,y=11,z=-6.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn
tag @e[x=656.5,y=11,z=-6.5,distance=..0.7,tag=ghost,tag=hidden] add spawn