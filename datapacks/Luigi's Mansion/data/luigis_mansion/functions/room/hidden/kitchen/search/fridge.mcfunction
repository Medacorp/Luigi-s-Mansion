execute if block 701 11 -54 minecraft:iron_block as @e[x=702.5,y=11,z=-54.0,distance=..2,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
execute if block 701 11 -54 minecraft:iron_block run effect give @a[x=702.5,y=11,z=-54.0,distance=..2,gamemode=!spectator] minecraft:instant_damage 1 0 true
execute if block 701 11 -54 minecraft:iron_block run scoreboard players set @a[x=702.5,y=11,z=-54.0,distance=..2,gamemode=!spectator] ForcedDamage 4
execute if block 701 11 -54 minecraft:iron_block as @a[x=702.5,y=11,z=-54.0,distance=..2,gamemode=!spectator] positioned 701 11 -54.0 run function luigis_mansion:entities/player/knockback/large
execute if block 701 11 -54 minecraft:iron_block run setblock 699 11 -52 minecraft:structure_block[mode=load]{mode:"LOAD",name:"luigis_mansion:kitchen/fridge_open",mirror:"LEFT_RIGHT"}
execute if block 699 11 -52 minecraft:structure_block run setblock 699 12 -52 minecraft:redstone_block
execute positioned 701 11 -54.0 run function luigis_mansion:blocks/dust
scoreboard players set #kitchen_fridge Searched 1
tag @e[x=701.5,y=11,z=-54.5,distance=..0.7,tag=ghost,tag=hidden] add spawn
teleport @e[x=701.5,y=11,z=-54.5,distance=..0.7,tag=ghost,tag=hidden] 701 11 -54.0
