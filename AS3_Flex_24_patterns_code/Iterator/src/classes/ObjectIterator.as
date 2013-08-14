package classes
{
	public class ObjectIterator implements Iterator
	{
		public var index:int;
		public var list:ObjectList;
		public function ObjectIterator(listParam:ObjectList)
		{
			list = listParam;
		}
		public function First():void
		{
			index = 0;
		}
		public function Next():void
		{
			index++;
		}
		public function IsDone():Boolean
		{
			return index >= list.Count();
		}
		public function CurrentItem():String
		{
			/*
				We must know how to get the current item from the ObjectList.
				In this case, we are assuming that the properties on an
				object are always accessed in the same order, but for this
				example that's fine.
			*/
			var count:int = 0;
			for (var i:String in list.object)
			{
				if (index == count)
				{
					return i + ": " + list.object[i];
				}
				count++;
			}
			return "";
		}
	}
}