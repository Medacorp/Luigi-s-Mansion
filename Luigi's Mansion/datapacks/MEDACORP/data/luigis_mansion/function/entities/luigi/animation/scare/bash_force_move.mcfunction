function luigis_mansion:entities/luigi/move/execute {execute:"positioned ~ ~ ~",teleport:"~ ~ ~ ~ ~"}
tag @s add force_moved
tag @s add moved
function luigis_mansion:entities/luigi/animation/shared/prevent_collision {amount:"0.16"}