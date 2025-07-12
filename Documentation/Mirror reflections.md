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
            set_by_furniture_entity:0b //Temporary addition until all mirrors are converted the entities; whether this mirror is a furniture entity; changes the calculation slightly. #todelete - old mirror reflections
        },
        entity_id:"<id>", //The Minecraft entity ID used to spawn the correct entity type. Only allows armor stand, item display, or item frame. The item frame option will be removed once all paintings are converted to furniture entities.
        data:{ //The entity's data, this will be directly merged onto the reflection entity.
            Pose:{}, //Armor stand pose data, head's jaw and roll will be inverted.
            transformation:{} //Item display transformation, translation x, and left/right rotation y and z will be inverted.
        },
        no_sync:{} //Field relevant to the reflection that's not directly applied to the entity.
    }
]
```
Items stored in the reflections' data have an additional field:
```
{
    id:"<id>", //The item's ID.
    count:X, //The item's count.
    components:{ //The item's components.
        "minecraft:custom_data":{ //The map's unique item data
            mirror:{} //The data to merge with the root of the item object for the reflection. Used to change what model is displayed, and to make invisible ghosts' reflections visible.
            //Example: mirror ghosts' left arm mirror contents are {components:{"minecraft:custom_model_data":{flags:[B;0b],floats:[1f]}}}, changing the invisible and model part values to turn the ghost visible, and make it the right arm model.
        }
    }
}
```