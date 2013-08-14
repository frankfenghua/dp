package classes
{
	/*
		This is a bit like a file in a file system heirarchy.
	*/
	public class Leaf extends Component
	{
		public function Leaf(thisName:String)
		{
			name = thisName;
		}
		override public function Operation():String
		{
			return "Leaf";
		}
	}
}