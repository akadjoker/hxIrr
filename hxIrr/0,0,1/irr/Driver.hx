package irr;
import cpp.ConstCharStar;
import haxe.NativeWrapper;

/**
 * ...
 * @author Luis Santos AKA DJOKER
 */
class Driver  implements NativeWrapper 
{

	@cpp var driver : PTR<IVideoDriver>;
	
	public function new( ) 	
	{
	 untyped __cpp__('driver = 0;');
	}
	
	public function getTexture(filename:String):Texture
	{
		var t = new Texture();
		
		var fnm:ConstCharStar = ConstCharStar.fromString(filename);
		
		
		 untyped __cpp__('
		 
		 t->ptr = driver->getTexture(fnm);
		 
		 ');
		 return t;
	}
	
	
	public function beginScene(color:Int, backBuffer:Bool = true, zBuffer:Bool = true):Bool
	{
		 untyped __cpp__('
		 
		 driver->beginScene(backBuffer, zBuffer, SColor(color));
		 
		 ');
		 return true;
	}
	
	public function endScene():Bool
	{
		 untyped __cpp__('
		 
		 driver->endScene();
		 
		 
		 ');
		 return true;
	}
	
	public function getFps():Int
	{
		var fps:Int = 0;
		 untyped __cpp__('
		 
		 fps=driver->getFPS();
		 
		 
		 ');
		 return fps;
	}
}