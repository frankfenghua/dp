/**
 * Created with IntelliJ IDEA.
 * User: feng
 * Date: 16/12/12
 * Time: 12:25 AM
 * To change this template use File | Settings | File Templates.
 */
package com.mycarstore {
    import flash.display.Sprite;

    public class CarFacade extends Sprite {

        private var engine:CarEngine;
        private var wheel:CarWheel;

        public function CarFacade(e:CarEngine,w:CarWheel) {
            engine = e;
            wheel = w;
            super();
        }

        public function start():void{
            engine.start();
            wheel.spin();
        }

        public function stop():void{
            engine.stop();
            wheel.stopSpin();
        }
    }
}
