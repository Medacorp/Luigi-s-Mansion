execute as @a[scores={Room=65},tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
execute as @a[scores={Room=65}] run function luigis_mansion:entities/player/scare
playsound luigis_mansion:block.blockade.spawn block @a[scores={Room=65}] 711 29 60 1
setblock 711 29 60 minecraft:iron_trapdoor[facing=west,open=true,half=bottom]
setblock 711 30 60 minecraft:iron_trapdoor[facing=west,open=true,half=bottom]