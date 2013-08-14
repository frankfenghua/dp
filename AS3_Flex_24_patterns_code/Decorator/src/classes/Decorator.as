package classes
{
	import mx.containers.Canvas;
	
	public class Decorator extends VisualComponent
	{
		public var _component:VisualComponent = new VisualComponent();
		public function Decorator(component:VisualComponent)
		{
			_component = component;
		}
		override public function Draw():void
		{
			_component.Draw();
			addChild(_component);
		}
	}
}