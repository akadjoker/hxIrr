
package irr;
import cpp.Void;
import haxe.NativeWrapper;
import cpp.ConstCharStar;

/**
 * ...
 * @author Luis Santos AKA DJOKER
 */
class Device implements NativeWrapper 
{

	@cpp var device : PTR<IrrlichtDevice>;
	
	public function new(w:Int,h:Int) 
	{
			
			
	@cpp {
		  device =		createDevice( EDT_OPENGL, dimension2du(w, h), 16, false, true, false, 0);
		  
		//  device->setWindowCaption(L"HAXE - Irrlicht");
		  
		  if (!device)
	      {
		
	      }
	} 
		  
	     	
		
	}
	
	public function run():Bool
	{
		var result = false;
		untyped __cpp__('
		
		result =	device->run();
			
			');
			
		return result;
	}
	
	
	public function setWindowCaption(tex:String):Bool
	{
		var fnm:ConstCharStar = ConstCharStar.fromString(tex);
		untyped __cpp__('
		
		core::stringw str = core::stringw(fnm);
		
		device-> setWindowCaption(str.c_str());
			
			');
			
		return true ;
	}
	
	
	public function getVideoDriver():Driver
	{
		var driver:Driver = new Driver();
		untyped __cpp__('
		driver->driver = device->getVideoDriver(); 
			');
			return driver;
	}
	
	public function getSceneManager():SceneManager
	{
		var smgr:SceneManager = new SceneManager();
		untyped __cpp__('
		smgr->smgr = device->getSceneManager(); 
			');
		return smgr;
	}
	
}