package classes
{
	public class ArrayIterator implements Iterator
	{
		public var index:int;
		
		// Store a pointer to the ArrayList.
		public var list:ArrayList;
		
		public function ArrayIterator(listParam:ArrayList)
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
				This is the only place where we must know about the
				implementation of the ArrayList.
			*/
			return list.array[index];
		}
	}
}