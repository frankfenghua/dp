package classes
{	
	public class FlyweightFactory
	{
		public static var sharedPool:Object = new Object();
		public function FlyweightFactory()
		{
		}
		public static function GetFlyweight(key:String):Flyweight
		{
			if (sharedPool[key] == null)
			{
				sharedPool[key] = new ConcreteFlyweight(key);
			}
			return sharedPool[key];
		}
	}
}