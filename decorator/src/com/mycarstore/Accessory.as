/**
 * Created with IntelliJ IDEA.
 * User: feng
 * Date: 15/12/12
 * Time: 3:18 PM
 * To change this template use File | Settings | File Templates.
 */
package com.mycarstore {
    public class Accessory implements IVehicle{
        protected var _vehicle:IVehicle;

        public function Accessory(vehicle:IVehicle) {
            _vehicle = vehicle;
        }

        public function getPrice():Number{
            return  _vehicle.getPrice();
        }

        public  function getDescription():String{
            return  _vehicle.getDescription();
        }

    }
}
