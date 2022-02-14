execute as @a[scores={Room=3},tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
execute as @a[scores={Room=3},gamemode=!spectator] run function luigis_mansion:entities/player/scare/normal
playsound luigis_mansion:block.blockade.spawn block @a[scores={Room=3}] 727 20 -12.0 1
setblock 727 20 -12 minecraft:iron_trapdoor[facing=west,open=true,half=bottom]
setblock 727 21 -12 minecraft:iron_trapdoor[facing=west,open=true,half=bottom]
setblock 727 20 -13 minecraft:iron_trapdoor[facing=west,open=true,half=bottom]
setblock 727 21 -13 minecraft:iron_trapdoor[facing=west,open=true,half=bottom]
playsound luigis_mansion:block.blockade.spawn block @a[scores={Room=3}] 714 20 -6 1
setblock 714 20 -6 minecraft:iron_trapdoor[facing=east,open=true,half=bottom]
setblock 714 21 -6 minecraft:iron_trapdoor[facing=east,open=true,half=bottom]