Loot is stored in several places, but has a consistent format:

```
{
    name:"<name>", //The name of this loot spawn; if loot has spawned before with this name, it will not spawn the loot.
    contents:{
        <namespace>:{
            <id>:X, //Spawns the item X times, with default variables; if any variable is required, this format is not allowed.
            <id>:"<type>" //Spawns the item with the type variable set to the provided value. Only works for item types which have a type variant listed below.
            <id>:[
                {
                    rotation:[0.0f,0.0f] //Sets the direction this item will bounce to.
                }
            ]
        }
    }
}
```
Some item types have additional options when in the list format, they are as listed below.

luigis_mansion:bill
```
{
    variant:1 //Sets the bill color, 0 is green, 1 is gold; default = random
}
```
luigis_mansion:element_medal
```
{
    variant:"<type>" //REQUIRED; Sets which element medal this is. Must be "fire", "water" or "ice". If the element medal of this type has already been obtained, or exists in the world, it will not spawn.
}
```
luigis_mansion:mario_item
```
{
    variant:"<type>" //REQUIRED; Sets which item this is. Must be "hat", "letter", "star", "glove" or "shoe". If the item of this type has already been obtained, or exists in the world, it will not spawn.
}
```
luigis_mansion:key
```
{
    variant:1, //Sets what model to use. 0 is normal, 1 is heart, 2 is club, 3 is diamond, 4 is spade. Default = 0.
    door:"<name>", //REQUIRED; Sets which door this key belongs to. If the key for this door has already been obtained, or exists in the world, it will not spawn.
    silent:1b //When set, makes no spawn sound for this key. Used by room clear loot droppers. Default = 0b.
}
```

3ds_remake:gameboy_horror_part
```
{
    //If the item of this type has already been obtained, or exists in the world, it will not spawn. Will only ever attempt to spawn one, even with the count format.
}
```