package classes
{
	public class Creator
	{
		public function Creator()
		{
		}
		public function FactoryMethod():Product
		{
			return new Product();
		}
		public function AnOperation():void
		{
			// Do something.
		}		
	}
}