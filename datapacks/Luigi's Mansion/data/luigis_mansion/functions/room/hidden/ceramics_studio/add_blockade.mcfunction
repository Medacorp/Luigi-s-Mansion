execute as @a[scores={Room=65},tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
execute as @a[scores={Room=65},gamemode=!spectator] run function luigis_mansion:entities/player/scare/normal
playsound luigis_mansion:block.blockade.spawn block @a[scores={Room=65}] 711 29 -45 1
setblock 711 29 -45 minecraft:iron_trapdoor[facing=west,open=true,half=bottom]
setblock 711 30 -45 minecraft:iron_trapdoor[facing=west,open=true,half=bottom]