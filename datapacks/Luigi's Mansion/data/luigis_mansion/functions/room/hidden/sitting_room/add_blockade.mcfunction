execute as @a[scores={Room=69},tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
execute as @a[scores={Room=69}] run function luigis_mansion:entities/player/scare
playsound luigis_mansion:block.blockade.spawn block @a[scores={Room=69}] 738 20 49 1
setblock 736 20 49 minecraft:iron_trapdoor[facing=east,open=true,half=bottom]
setblock 736 21 49 minecraft:iron_trapdoor[facing=east,open=true,half=bottom]
playsound luigis_mansion:block.blockade.spawn block @a[scores={Room=69}] 741 20 52 1
setblock 741 20 52 minecraft:iron_trapdoor[facing=north,open=true,half=bottom]
setblock 741 21 52 minecraft:iron_trapdoor[facing=north,open=true,half=bottom]