execute as @a[scores={Room=45},tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
execute as @a[scores={Room=45}] run function luigis_mansion:entities/player/scare/normal
playsound luigis_mansion:block.blockade.spawn block @a[scores={Room=45}] 666 20 88 1
setblock 666 20 88 minecraft:iron_trapdoor[facing=south,open=true,half=bottom]
setblock 666 21 88 minecraft:iron_trapdoor[facing=south,open=true,half=bottom]
playsound luigis_mansion:block.blockade.spawn block @a[scores={Room=45}] 666 20 106 1
setblock 666 20 106 minecraft:iron_trapdoor[facing=north,open=true,half=bottom]
setblock 666 21 106 minecraft:iron_trapdoor[facing=north,open=true,half=bottom]