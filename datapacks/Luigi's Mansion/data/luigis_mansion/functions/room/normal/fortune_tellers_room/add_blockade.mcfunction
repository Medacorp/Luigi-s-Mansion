execute as @a[scores={Room=20},tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
execute as @a[scores={Room=20}] run function luigis_mansion:entities/player/scare
playsound luigis_mansion:block.blockade.spawn block @a[scores={Room=20}] 736 11 -32 1
setblock 736 11 -32 minecraft:iron_trapdoor[facing=east,open=true,half=bottom]
setblock 736 12 -32 minecraft:iron_trapdoor[facing=east,open=true,half=bottom]
playsound luigis_mansion:block.blockade.spawn block @a[scores={Room=20}] 741 11 -37 1
setblock 741 11 -37 minecraft:iron_trapdoor[facing=south,open=true,half=bottom]
setblock 741 12 -37 minecraft:iron_trapdoor[facing=south,open=true,half=bottom]