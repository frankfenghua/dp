package classes
{
	import mx.containers.HBox;
	import mx.containers.VBox;
	public class Mediator extends HBox
	{
		// The mediator contains the objects that it mediates.
		public var button1:ButtonWidget;
		public var button2:ButtonWidget;
		public var button3:ButtonWidget;
		public var button4:ButtonWidget;
		public var textArea:TextAreaWidget;
		
		// Set up the width and height and create the "Widgets".
		public function Mediator()
		{
			width = 400;
			height = 300;
			CreateWidgets();
		}
		
		// This is where the Widgets are created - some buttons and a TextArea.
		public function CreateWidgets():void
		{
			button1 = new ButtonWidget(this);
			button1.label = "Button 1";
			button1.setStyle("fillColors", [0xffcccc, 0xff0000]);
			
			button2 = new ButtonWidget(this);
			button2.label = "Button 2";
			button2.setStyle("fillColors", [0xffcccc, 0xffcc00]);
			
			button3 = new ButtonWidget(this);
			button3.label = "Button 3";
			button3.setStyle("fillColors", [0xffffcc, 0xffff00]);
			
			button4 = new ButtonWidget(this);
			button4.label = "Clear";
			button4.setStyle("fillColors", [0xccffcc, 0x00ff00]);
			
			textArea = new TextAreaWidget(this);
			textArea.width = 300;
			textArea.height = 200;
			
			// Add the text area to the display.
			addChild(textArea);
			
			// Create a VBox and add it to the display.
			var vbox:VBox = new VBox;
			addChild(vbox);
			
			// Add each of the buttons to the VBox.
			vbox.addChild(button1);
			vbox.addChild(button2);
			vbox.addChild(button3);
			vbox.addChild(button4);
		}
		
		/*
			This is where all of the action happens - this function is called
			whenever anything happens like a button is pressed, and it is this
			function that then updates the relevant object.			
		*/
		public function WidgetChanged(widget:Widget):void
		{
			switch (widget)
			{
				case button1:
					textArea.text = "Button 1 Pressed";
					break
				case button2:
					textArea.text = "Button 2 Pressed";
					break
				case button3:
					textArea.text = "Button 3 Pressed";
					break
				case button4:
					textArea.text = "";
					break
				default:
					textArea.text = "Button not found.";
					break
			}
		}
	}
}