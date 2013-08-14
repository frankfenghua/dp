package classes
{
	public class BorderDecorator extends Decorator
	{
		public var _borderWidth:int;
		public var _borderColor:Number;
		public function BorderDecorator(component:VisualComponent, borderWidth:int, borderColor:Number)
		{
			super(component);
			_borderWidth = borderWidth;
			_borderColor = borderColor;
		}
		override public function Draw():void
		{
			super.Draw();
			DrawBorder();
		}
		public function DrawBorder():void
		{
			_component.x = _borderWidth;
			_component.y = _borderWidth;
			width = _component.width + (_borderWidth * 2)
			height = _component.height + (_borderWidth * 2)
			setStyle("backgroundColor", _borderColor);
		}
	}
}