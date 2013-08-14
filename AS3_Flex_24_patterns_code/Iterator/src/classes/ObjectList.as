package classes
{
	public class ObjectList implements AbstractList
	{
		/*
			This class acts a bit like the Bridge(151) pattern to the
			Object class. However, it makes the Object a bit more like a
			data type that holds name-value pairs.
		*/
		public var object:Object = new Object();
		public function ObjectList()
		{
		}
		public function CreateIterator():Iterator
		{
			return new ObjectIterator(this);
		}
		public function Count():int
		{
			var count:int = 0;
			for (var i:String in object)
			{
				count++
			}
			return count;
		}
		public function Append(item:Object):void
		{
			object[item[0]] = item[1];
		}
		public function Remove(item:Object):void
		{
			delete object[item[0]];
		}
	}
}