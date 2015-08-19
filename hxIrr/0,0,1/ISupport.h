#ifndef ISupport
#define ISupport
#ifdef _WIN32
#	include <windows.h>
#	undef RegisterClass
#	define IS_WINDOWS true
#else
#	define IS_WINDOWS false
#	define GL_GLEXT_PROTOTYPES
#endif

using namespace std;  


#include <irrlicht.h>


using namespace irr;
using namespace core;
using namespace scene;
using namespace video;
using namespace io;
using namespace gui;

#define failwith(v)	hx::Throw(HX_CSTRING(v))
#undef main
#undef NO_ERROR
#undef DELETE

#define LOCAL(e,t)	t e
#define LOCALINIT(l,v) l = v
#define ADDR(e)	&(e)
#define VOIDPTR(v)	((void*)(v))
#define FLOATPTR(v)	((float*)(v))
#define FIELD(a,b)	a->b

#endif