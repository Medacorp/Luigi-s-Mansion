execute as @a[scores={Room=10},tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
execute as @a[scores={Room=10}] run function luigis_mansion:entities/player/scare
playsound luigis_mansion:block.blockade.spawn block @a[scores={Room=10}] 739 20 -43 1
setblock 739 20 -43 minecraft:iron_trapdoor[facing=east,open=true,half=bottom]
setblock 739 21 -43 minecraft:iron_trapdoor[facing=east,open=true,half=bottom]