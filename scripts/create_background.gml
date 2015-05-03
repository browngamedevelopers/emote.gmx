/// put tile-structure to 'tileset_list'
/* tilesets_list:
        tileset:
        {
            TS_FIRST
            TS_NAME
            TS_TILEWIDTH
            TS_TILEHEIGHT
            TS_BG_INDEX
        }

make background and put background id into 'tileset' structure, after put this structure to 'tilesets_list' */

bg = background_add('tilesets\'+ts_image, false, false)
if (bg<0) { show_message('Cant load background!') }

ds_list_replace(tileset,TS_BG_INDEX,bg)
new=ds_list_create()
ds_list_copy(new,tileset)
ds_list_add(tilesets_list,new)
clear_list(tileset,5)
