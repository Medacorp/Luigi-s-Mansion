execute as @a[scores={Room=71},tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
execute as @a[scores={Room=71}] run function luigis_mansion:entities/player/scare/normal
playsound luigis_mansion:block.blockade.spawn block @a[scores={Room=71}] 699 29 -57 1
setblock 699 29 -57 minecraft:iron_trapdoor[facing=north,open=true,half=bottom]
setblock 699 30 -57 minecraft:iron_trapdoor[facing=north,open=true,half=bottom]