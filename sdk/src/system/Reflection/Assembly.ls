/*
===========================================================================
Loom SDK
Copyright 2011, 2012, 2013 
The Game Engine Company, LLC

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License. 
===========================================================================
*/

package system.reflection {

/**
 * Represents a %Loom Assembly that has been loaded into the runtime.
 * An Assembly contains a collection of Type%s and each Type has an Assembly associated with it.
 */
native class Assembly {

    /**
     *  Executes the Assembly by calling its main() function.
     *  Will throw and error if the assembly does not have a main() function.
     */
    public native function execute();

    /**
     *  Gets the name of the assembly.
     *
     *  @return Name of the assembly
     */
    public native function getName():String;

    /**
     *  Gets the number of types associated to the Assembly.
     *
     *  @return Number of types in the assembly.
     */
    public native function getTypeCount():int;

    /**
     *  Gets the associated Type at the specified index.
     *
     *  @param index Index of associated Type.
     *  @return Instance of the associated Type.
     */
    public native function getTypeAtIndex(index:int):Type;

}

}