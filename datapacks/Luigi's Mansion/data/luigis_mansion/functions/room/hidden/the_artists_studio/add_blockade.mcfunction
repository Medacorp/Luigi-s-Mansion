execute as @a[scores={Room=71},tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
execute as @a[scores={Room=71}] run function luigis_mansion:entities/player/scare
playsound luigis_mansion:block.blockade.spawn block @a[scores={Room=71}] 699 29 72 1
setblock 699 29 72 minecraft:iron_trapdoor[facing=south,open=true,half=bottom]
setblock 699 30 72 minecraft:iron_trapdoor[facing=south,open=true,half=bottom]