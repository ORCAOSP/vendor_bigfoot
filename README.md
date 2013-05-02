The Orca Project 4.2+ Presents - Orca Bigfoot 2
================================================

WIP WILL KILL ORCAS AND SASQUATCHS


Download the source
-------------------

Initiliaze

    repo init -u git://github.com/ORCAOSP/platform_manifest.git -b Bigfoot

Lets Sync It!

    repo sync -j1

***

Download the kernel source
--------------------------

Integrated kernels are now part of the Orca Project 4.2+. From the root of your source tree run the following 
script to grab the kernel sources required.

    ../platform_manifest/manual_add_kernel_manifest.sh

Then run another

    repo sync

Building
--------

I think we all know how to do this I'm not going to get into it...

    . build/envsetup.sh
  
    lunch bigfoot_device-userdebug
