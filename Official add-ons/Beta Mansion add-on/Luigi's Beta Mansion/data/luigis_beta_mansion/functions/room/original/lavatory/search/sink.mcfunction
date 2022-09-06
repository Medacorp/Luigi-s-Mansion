execute positioned 662 11 40 run function luigis_mansion:blocks/dust
execute positioned 660 11 40 run function luigis_mansion:blocks/dust_no_sound
scoreboard players set #lavatory_sink Searched 1
data merge block 662 11 40 {LootTable:"luigis_mansion:search"}
tag @e[x=662.5,y=11,z=40.5,distance=..0.7,tag=ghost,tag=hidden] add spawn