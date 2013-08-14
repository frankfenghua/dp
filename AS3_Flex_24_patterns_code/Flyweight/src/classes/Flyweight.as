package classes
{
	import mx.controls.Text;
	import mx.containers.Canvas;	
	public class Flyweight extends Canvas
	{
		[Bindable] public var char:String;
		public function Flyweight(key:String)
		{
			char = key;
			var text:Text = new Text();
			text.text = char;
		}
	}
}