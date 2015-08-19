# hxIrr
Irrlicht Bindings for Haxe/CPP

## Compiling
Has only be tested on Windows/MSVC atm.

Credits to  Nicolas Cannasse with hxSdl

//*************************************** SAMPLE
import irr.Driver;
import irr.Device;
import irr.SceneManager;



class Test {
	static function main() {
		trace("INIT");
		try {
			start();
		} catch( e : Dynamic ) {
		}
		trace("DONE");
	}

	static function start() 
	{
	
var device:Device = new Device(800, 600);
var driver:Driver = device.getVideoDriver();
var smgr:SceneManager = device.getSceneManager();

var cube = smgr.addCubeSceneNode();
cube.setPosition(0, 0, 2);

cube.setMaterialTexture(0,driver.getTexture("hxlogo.png"));

//var camera = smgr.addCameraSceneNodeFPS();
var camera = smgr.addCameraSceneNode();

	device.setWindowCaption("Irrlicht with HAXE");
	

		
		while (device.run())
		{
			driver.beginScene(0x0000ffff);
			smgr.drawAll();
			driver.endScene();
			device.setWindowCaption("Irrlicht with HAXE - FPS["+ driver.getFps()+"]");
		}
		
			
			
			
	}

}