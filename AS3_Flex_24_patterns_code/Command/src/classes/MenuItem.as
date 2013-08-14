package classes
{
	public class MenuItem
	{
		public var name:String;
		public var command:Command;
		public function MenuItem(nameParam:String, commandParam:Command)
		{
			name = nameParam;
			command = commandParam;
		}
	}
}