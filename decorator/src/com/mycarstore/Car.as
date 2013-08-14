/**
 * Created with IntelliJ IDEA.
 * User: feng
 * Date: 15/12/12
 * Time: 3:15 PM
 * To change this template use File | Settings | File Templates.
 */
package com.mycarstore{

public class Car implements IVehicle{
        public function Car() {
        }

        public function getPrice():Number{
            return 50000;
        }

        public function getDescription():String{
            return "Base Car";
        }
    }
}
