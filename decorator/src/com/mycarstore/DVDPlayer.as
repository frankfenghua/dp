/**
 * Created with IntelliJ IDEA.
 * User: feng
 * Date: 15/12/12
 * Time: 3:23 PM
 * To change this template use File | Settings | File Templates.
 */
package com.mycarstore {
public class DVDPlayer extends Accessory {
    public function DVDPlayer(vehicle:IVehicle) {
        super(vehicle);
    }

    override public function getPrice():Number{
        return this._vehicle.getPrice() +  550;
    }

    override public function getDescription():String{
        return this._vehicle.getDescription() +  " , DVD Player";
    }
}
}
