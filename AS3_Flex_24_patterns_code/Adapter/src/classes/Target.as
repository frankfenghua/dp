package classes
{
	public class Target
	{
		public function Target()
		{
		}
		public function Request():String
		{
			// Call the same method on the Adapter.
			var adapter:Adapter = new Adapter();
			return adapter.Request();
		}
	}
}