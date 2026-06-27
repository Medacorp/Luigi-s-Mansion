execute unless score #mirrored Selected matches 1 if entity @s[tag=!flipped_gravity,tag=!shrunk] run function luigis_mansion:animations/luigi/collect_item/normal/head
execute unless score #mirrored Selected matches 1 if entity @s[tag=!flipped_gravity,tag=shrunk] run function luigis_mansion:animations/luigi/collect_item/normal_shrunk/head
execute unless score #mirrored Selected matches 1 if entity @s[tag=flipped_gravity,tag=!shrunk] run function luigis_mansion:animations/luigi/collect_item/normal_flipped/head
execute unless score #mirrored Selected matches 1 if entity @s[tag=flipped_gravity,tag=shrunk] run function luigis_mansion:animations/luigi/collect_item/normal_flipped_shrunk/head
execute if score #mirrored Selected matches 1 if entity @s[tag=!flipped_gravity,tag=!shrunk] run function luigis_mansion:animations/luigi/collect_item/mirrored/head
execute if score #mirrored Selected matches 1 if entity @s[tag=!flipped_gravity,tag=shrunk] run function luigis_mansion:animations/luigi/collect_item/mirrored_shrunk/head
execute if score #mirrored Selected matches 1 if entity @s[tag=flipped_gravity,tag=!shrunk] run function luigis_mansion:animations/luigi/collect_item/mirrored_flipped/head
execute if score #mirrored Selected matches 1 if entity @s[tag=flipped_gravity,tag=shrunk] run function luigis_mansion:animations/luigi/collect_item/mirrored_flipped_shrunk/head