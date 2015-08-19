package irr;

import haxe.NativeWrapper;
/**
 * ...
 * @author Luis Santos AKA DJOKER
 */
class SceneNode implements NativeWrapper 
{
	@cpp var node : PTR<ISceneNode>;
	public function new() 
	{
		
	}
	
	public function setRotation(x:Float, y:Float, z:Float):Void
	{
		 untyped __cpp__('
		   node->setRotation(vector3df(x, y, z));
		 ');
	}
	public function setPosition(x:Float, y:Float, z:Float):Void
	{
		 untyped __cpp__('
		   node->setPosition(vector3df(x, y, z));
		 ');
	}
	public function setScale(x:Float, y:Float, z:Float):Void
	{
		 untyped __cpp__('
		   node->setPosition(vector3df(x, y, z));
		 ');
	}
	
	public function setMaterialTexture(layer:Int, texture:Texture):Void
	{
		untyped __cpp__('
		   node->setMaterialTexture(layer,texture->ptr);
		 ');
	}
	public function enableLight(value:Bool):Void
	{
		untyped __cpp__('
		   node->setMaterialFlag(EMF_LIGHTING, value);
		 ');
	}
}