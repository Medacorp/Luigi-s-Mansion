MirrorX means the reflection is moved on the X axis (mirror aligned with Z axis), and Mirror Z on Z axis (aligned with X axis); at most 1 of these scores should ever be used.
Reflections store their data to the storage `luigis_mansion:data reflections` list with the following format.

```
reflections:[
    { //A reflected entity.
        id:X, //The reflection ID, shared only with the reflection owner entity and reflection itself.
        room:X, //The room score of the reflected entity, the reflection will get the score too.
        mirror:{ //Information about the mirror.
            z:0b //Whether or not the reflection is offset on the Z axis.
            value:X, //The coordinate value of the mirror.
            set_by_furniture_entity:0b //Temporary addition until all mirrors are converted the entities; whether this mirror is a furniture entity; changes the calculation slightly.
        },
        entity_id:"<id>", //The Minecraft entity ID used to spawn the correct entity type. Only allows armor stand or item frame. The item frame option will be removed once all paintings and posters are converted to furniture entities.
        data: { //The entity's data
            Pose:{}, //Armor stand pose data, jaw and roll will be inverted.
            HandItems:[] //Items held in hand, will be swapped.
        }
    }
]
```
Items stored in the reflections' data have an additional field:
```
{
    id:"<id>", //The item's ID.
    Count:Xb, //The item's count.
    tag: { //The item's tag NBT.
        mirror: {} //The data to merge with the root of the item object for the reflection. Used to change what model is displayed, and to make invisible ghosts' reflections visible.
        //Example: mirror ghosts' left arm mirror contents are {id:"minecraft:leather_chestplate",tag:{Damage:1}}, changing the ID and Damage values to turn the ghost visible, and make it the right arm model.
    }
}
```