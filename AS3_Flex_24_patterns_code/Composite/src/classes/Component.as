package classes
{
	public class Component
	{
		public var name:String = "";
		public function Component(thisName:String = "")
		{
			name = thisName;
		}
		public function Operation():String
		{
			return ""; 
		}
		public function Add(component:Component):void
		{
			
		}
		public function Remove(component:Component):void
		{
			
		}
		public function GetChild(i:int):Component
		{
			return new Component("");
		}
	}
}