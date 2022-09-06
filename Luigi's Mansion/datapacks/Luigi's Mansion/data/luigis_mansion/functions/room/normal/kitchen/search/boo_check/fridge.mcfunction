execute if block 701 11 69 minecraft:iron_block as @e[x=702.5,y=11,z=70.0,distance=..2,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
execute if block 701 11 69 minecraft:iron_block run effect give @a[x=702.5,y=11,z=70.0,distance=..2,gamemode=!spectator] minecraft:instant_damage 1 0 true
execute if block 701 11 69 minecraft:iron_block run scoreboard players set @a[x=702.5,y=11,z=70.0,distance=..2,gamemode=!spectator] ForcedDamage 4
execute if block 701 11 69 minecraft:iron_block as @a[x=702.5,y=11,z=70.0,distance=..2,gamemode=!spectator] positioned 701 11 70.0 run function luigis_mansion:entities/player/knockback/large
execute if block 701 11 69 minecraft:iron_block run place template luigis_mansion:kitchen/fridge_open 699 11 67
execute unless entity @e[x=701.5,y=11,z=70.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] run function luigis_mansion:room/normal/kitchen/search/fridge
tag @e[x=701.5,y=11,z=70.5,distance=..0.7,tag=hidden_boo,tag=caught_by_boo_radar] add spawn
