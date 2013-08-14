/**
 * Created with IntelliJ IDEA.
 * User: feng
 * Date: 15/12/12
 * Time: 3:26 PM
 * To change this template use File | Settings | File Templates.
 */
package com.mycarstore {
public class GPSSystem extends Accessory {
    public function GPSSystem(vehicle:IVehicle) {
        super(vehicle);
    }

    override public function getPrice():Number{
        return this._vehicle.getPrice() + 1500;
    }

    override public function getDescription():String{
        return this._vehicle.getDescription() + ", GPSSystem ";
    }

}
}
