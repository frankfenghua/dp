package classes
{
	import mx.collections.ArrayCollection;
	
	/*
		This is a bit like a folder in a file system heirarchy.
	*/
	public class Composite extends Component
	{
		// Children are stored in the ArrayCollection data structure.
		public var children:ArrayCollection;
		public function Composite(thisName:String)
		{
			children = new ArrayCollection();
			name = thisName;
		}
		override public function Operation():String
		{
			return "Composite";
		}
		override public function Add(component:Component):void
		{
			children.addItem(component);
		}
		override public function Remove(component:Component):void
		{
			var i:int = children.getItemIndex(component);
			children.removeItemAt(i);
		}
		override public function GetChild(i:int):Component
		{
			return children.getItemAt(i) as Component;
		}
	}
}