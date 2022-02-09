execute as @a[scores={Room=56},tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
execute as @a[scores={Room=56}] run function luigis_mansion:entities/player/scare
playsound luigis_mansion:block.blockade.spawn block @a[scores={Room=56}] 749 29 33 1
setblock 749 29 33 minecraft:iron_trapdoor[facing=north,open=true,half=bottom]
setblock 749 30 33 minecraft:iron_trapdoor[facing=north,open=true,half=bottom]
playsound luigis_mansion:block.blockade.spawn block @a[scores={Room=56}] 738 29 6 1
setblock 738 29 6 minecraft:iron_trapdoor[facing=east,open=true,half=bottom]
setblock 738 30 6 minecraft:iron_trapdoor[facing=east,open=true,half=bottom]