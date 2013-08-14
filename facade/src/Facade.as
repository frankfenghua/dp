package {

import com.mycarstore.CarEngine;
import com.mycarstore.CarFacade;
import com.mycarstore.CarWheel;

import flash.display.Sprite;
import flash.text.TextField;

public class Facade extends Sprite {
    public function Facade() {
        var textField:TextField = new TextField();
        textField.text = "testFacade";
        addChild(textField);
        
        testFacade();
    }

    private function testFacade():void {
        var engine:CarEngine = new CarEngine();
        var wheel:CarWheel = new CarWheel();

        var carFacade:CarFacade = new CarFacade(engine,wheel);
        carFacade.start();
        carFacade.stop();
    }
}
}
