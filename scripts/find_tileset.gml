/* tilesets_list:
        tileset:
        {
            TS_FIRST
            TS_NAME
            TS_TILEWIDTH
            TS_TILEHEIGHT
            TS_BG_INDEX
        }
*/

var t,cur,fir,szl,numb,copy;
szl=ds_list_create()

for (t=0; t<ds_list_size(tilesets_list); t+=1)
{
    cur=ds_list_find_value(tilesets_list,t)
    fir=ds_list_find_value(cur,TS_FIRST)
    ds_list_add(szl,fir)
}
copy=ds_list_create()
ds_list_copy(copy,szl)
ds_list_sort(szl,true)

numb=ds_list_size(szl)-1
for (t=0; t<ds_list_size(szl); t+=1)
{
    cur=ds_list_find_value(szl,t)
    if (argument0<cur) { numb=t-1; break }
}
zz=ds_list_find_value(szl,numb)

t=ds_list_find_index(copy,zz)

ds_list_destroy(szl)
ds_list_destroy(copy)

return (ds_list_find_value(tilesets_list,t))

