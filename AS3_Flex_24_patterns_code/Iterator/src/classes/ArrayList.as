package classes
{
	import mx.collections.ArrayCollection;
	public class ArrayList implements AbstractList
	{
		/*
			This class acts a bit like the Bridge(151) pattern to the
			ArrayCollection class. It keeps an array on which to perform its
			operations.
		*/
		public var array:ArrayCollection = new ArrayCollection();
		public function ArrayList()
		{
		}
		public function CreateIterator():Iterator
		{
			return new ArrayIterator(this);
		}
		public function Count():int
		{
			return array.length;
		}
		public function Append(item:Object):void
		{
			array.addItem(item);
		}
		public function Remove(item:Object):void
		{
			array.removeItemAt(array.getItemIndex(item));
		}
	}
}