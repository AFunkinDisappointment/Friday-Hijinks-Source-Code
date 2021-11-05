package;

import flixel.FlxGame;
import openfl.display.FPS;
import openfl.display.Sprite;

class Main extends Sprite
{
	#if sys
	public static var cwd:String;
	#end
	public function new()
	{
		super();
		#if sys
		cwd = Sys.getCwd();
		#end
		addChild(new FlxGame(0, 0, TitleState, 1, 120, 120, true));

		#if !mobile
		addChild(new FPS(10, 3, 0xFFFFFF));
		addChild(new MemoryCounter(10, 3, 0xFFFFFF));
		#end
	}
}
