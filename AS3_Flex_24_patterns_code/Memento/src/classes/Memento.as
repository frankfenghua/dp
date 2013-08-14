package classes
{
	public class Memento
	{
		public var name:String;
		public var color:int;
		
		public function Memento()
		{
		}
		
		/*
			This method can be used by the Originator to get the state that it
			saved here originally.
		*/
		public function GetState():int
		{
			return color;
		}
		
		/*
			This method can be used by the Originator to save its state so that
			it can return to it later.
		*/
		public function SetState(nameParam:String, colorParam:int):void
		{
			name = nameParam;
			color = colorParam;
		}
		
	}
}