package classes
{
	import mx.collections.ArrayCollection;
	import mx.controls.DataGrid;
	import mx.core.UIComponent;
	import mx.events.DataGridEvent;
	
	public class ConcreteObserver implements Observer
	{
		
		// A reference to the subject we're observing.
		public var subject:Subject;
		
		// The DataGrid that is displayed.
		public var dataGrid:DataGrid;
		
		// The parent application - needed so we can add UI components.
		public var parent:UIComponent;
		
		// A reference to the subject's state.
		public var subjectState:ArrayCollection;
		
		// Our own copy of the subject's state. Needed so we can change it.
		public var observerState:ArrayCollection;
		
		public function ConcreteObserver(s:Subject, p:UIComponent)
		{
			
			observerState = new ArrayCollection();
			
			subject = s;
			parent = p;
			
			/*
				Create a DataGrid that is editable and give it an event
				listener so that when it's edited it can call the
				SetState() method on the subject.
			*/
			dataGrid = new DataGrid();
			dataGrid.editable = true;
			dataGrid.dataProvider = observerState;
			dataGrid.addEventListener(DataGridEvent.ITEM_EDIT_END, ChangeHandler);
			
			// Add the DataGrid to the application.
			parent.addChild(dataGrid);
		}
		
		public function Update():void
		{
			/*
				Copy data from subject to observer. We need to do it this way
				so that we don't change the state in the subject. This is where
				we break the built in method for keeping the data in sync.
			*/
			observerState.removeAll();
			subjectState = subject.GetState();
			for (var i:int = 0; i < subjectState.length; i++)
			{
				observerState.addItem
				( 
					{
						"Year": subjectState[i]["Year"].toString(), 
						"Price": subjectState[i]["Price"].toString()
					} 
				);
			}
		}
		
		public function ChangeHandler(event:DataGridEvent):void
		{
			/*
				There are usually 2 events fired when an item is edited, but
				the first usually occurs before the dataProvider reflects
				the new data. Therefore we only want to call SetState()
				on the second one or we would set the databack to what it was
				originally!
			*/
			if (event.reason != "newRow")
			{
				subject.SetState(observerState);
			}
		}
		
	}
}