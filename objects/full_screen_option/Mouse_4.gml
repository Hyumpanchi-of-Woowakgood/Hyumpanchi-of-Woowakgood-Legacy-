/// @description Insert description here
// You can write your code in this editor
global.full_screen ++
if global.full_screen > 1
{
global.full_screen = 0
}

if global.full_screen = 1
{
window_set_fullscreen(true)
window_set_size(1920,1080)
surface_resize(application_surface, display_get_width (), display_get_height ());
}
else
{
window_set_fullscreen(false)
window_set_size(1280,720)
surface_resize(application_surface, display_get_width (), display_get_height ());
}