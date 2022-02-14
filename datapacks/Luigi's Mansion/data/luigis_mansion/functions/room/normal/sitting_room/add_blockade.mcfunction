execute as @a[scores={Room=69},tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
execute as @a[scores={Room=69},gamemode=!spectator] run function luigis_mansion:entities/player/scare/normal
playsound luigis_mansion:block.blockade.spawn block @a[scores={Room=69}] 736 20 -34 1
setblock 736 20 -34 minecraft:iron_trapdoor[facing=east,open=true,half=bottom]
setblock 736 21 -34 minecraft:iron_trapdoor[facing=east,open=true,half=bottom]
playsound luigis_mansion:block.blockade.spawn block @a[scores={Room=69}] 741 20 -37 1
setblock 741 20 -37 minecraft:iron_trapdoor[facing=south,open=true,half=bottom]
setblock 741 21 -37 minecraft:iron_trapdoor[facing=south,open=true,half=bottom]