package classes
{
	import mx.collections.ArrayCollection;

	public class ConcreteSubject implements Subject
	{
		
		// This is an array of all observers watching this subject.
		public var observers:ArrayCollection = new ArrayCollection();
		
		// This is the state that they are watching.
		public var subjectState:ArrayCollection = new ArrayCollection();
		
		public function ConcreteSubject()
		{
			// Create some initial values.
			subjectState = new ArrayCollection
			(
				[
					{"Year": 2001, "Price": 1000},
					{"Year": 2002, "Price": 2000},
					{"Year": 2003, "Price": 3000},
					{"Year": 2004, "Price": 4000},
					{"Year": 2005, "Price": 5000}
				]
			)
		}

		public function Attach(o:Observer):void
		{
			// Add an observer.
			observers.addItem(o);
		}
		
		public function Detach(o:Observer):void
		{
			// Remove an observer.
			observers.removeItemAt(observers.getItemIndex(o));
		}
		
		public function Notify():void
		{
			/*
				Call the Update function on all of the observers so that they
				as for new data.
			*/
			for (var o:String in observers)
			{
				observers[o].Update();
			}
		}
		
		public function GetState():ArrayCollection
		{
			/*
				Return the ArrayCollection that the observers are watching.
				They will need to copy this because Flex always passes a
				reference. If they didn't copy it, they would modify the
				main array which we don't want.
			*/
			return subjectState;
		}
		
		public function SetState(a:ArrayCollection):void
		{
			/*
				If this has been called, an observer wants to modify the state,
				so the first thing we do is clear it and then copy the array
				that has been passed in into it.
			*/
			subjectState.removeAll();
			for (var i:int = 0; i < a.length; i++)
			{
				subjectState.addItem
				( 
					{
						"Year": a[i]["Year"].toString(), 
						"Price": a[i]["Price"].toString()
					} 
				);
			}
			
			// Call Notify() to notify all observers the state has changed.
			Notify();
		}
		
	}
}