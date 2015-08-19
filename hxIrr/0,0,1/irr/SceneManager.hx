package irr;

import haxe.NativeWrapper;
/**
 * ...
 * @author Luis Santos AKA DJOKER
 */
class SceneManager implements NativeWrapper 
{
	@cpp var smgr : PTR<ISceneManager>;
	public function new() 
	{
		
	}
	
	public function drawAll():Bool
	{
		 untyped __cpp__('
		 
		 smgr->drawAll();
		 
		 
		 ');
		 return true;
	}
	
	public function addCubeSceneNode(size:Float = 10):MeshSceneNode
	{
		var node = new MeshSceneNode();
		 untyped __cpp__('
		   node->node = smgr->addCubeSceneNode(size);	
		   node->node->setMaterialFlag(EMF_LIGHTING, false);
		 ');
		 return node;
	}

	public function addCameraSceneNode():CameraSceneNode
	{
		var node = new CameraSceneNode();
		 untyped __cpp__('
		   node-> node = smgr->addCameraSceneNode(0, vector3df(0,30,-40), vector3df(0,5,0));	 
		 ');
		 return node;
	}
	public function addCameraSceneNodeFPS(rotateSpeed:Float =100,moveSpeed:Float=0.5,jumpSpeed:Float=0,noVerticalMovement:Bool=false):FpsCameraSceneNode
	{
		var node = new FpsCameraSceneNode();
		 untyped __cpp__('
		   node-> node = smgr->addCameraSceneNodeFPS(0, rotateSpeed,moveSpeed,-1,0,0,noVerticalMovement,jumpSpeed);	 
		 ');
		 return node;
		 

	}
}
