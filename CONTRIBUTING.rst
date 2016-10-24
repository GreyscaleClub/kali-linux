Kali Linux Deployment Guide
===========================

This short guide will get you up and running with Kali Linux inside a virtual machine.

Requirements
------------

* 10 GB Disk Space
* 512 MB RAM

Installation
------------

Virtual Machine
~~~~~~~~~~~~~~~

There are several different virtual machines out there, all of which will work. A popular choice (and the one we're going to use) is Oracle's VirtualBox. It's free and you can download the latest version here_. While you're there, grab the Extension Pack as well (it contains some useful features you may wish to use).

Alternatively, VirtualBox can be installed from the command line:

.. code:: bash

   sudo apt-get install virtualbox
   sudo apt-get install virtualbox-ext-pack

Kali Linux
~~~~~~~~~~

Choose a version of Kali Linux to download from their website_.

Step 1: Create a new virtual machine
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

1. Start up VirtualBox.

2. At the top left of the window there is a blue "new" button. Press it to create a new virtual machine.

3. Give it a name (eg. "Kali Linux 2016"). Set the ``type`` to "Linux" and the ``version`` to "Debian (32/64-bit)" depending on the Kali ISO version you downloaded. Click Next.

4. Allocate some memory for the machine. Default is 1 GB (1024 MB), but you can increase this to 2+ GB if you have the extra RAM and wish to do so.

Step 2: Create a virtual hard drive
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

5. The next window will ask if you would like to create a virtual hard drive. Press Create.

6. Choose VDI (VirtualBox Disk Image). Press Next.

7. Select Dynamically Allocated. Press Next.

8. The name of the virtual hard disk will be the same as the one you chose in Step 1. The disk default size is 8 GB, but that's a little on the light side so we're going to go ahead and bump it up to 20 GB, then press Create.

At this point, you should see a new virtual machine called "Kali Linux 2016" in your VirtualBox manager! Next we're going to change a few of the settings to make sure the machine runs smoothly..

Step 3: Modify VirtualBox settings
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

9. Select your newly created Kali Linux VM and press the "Settings" button (next to "New").

10. Enable shared clipboard and drag'n'drop by going to Settings > General > Advanced (tab) and setting them both to "Bidirectional". This will enable you to easily copy files over to the VM from the host.

11. (optional) Increase the number of processors avaialble to the VM. Settings > System > Processor (tab) and move the slider (even numbers are your friend). It might be good to enable PAE/NX here as well.

12. Go to Settings > Display > Screen and set Video Memory to the max. Also, check "Enable 3D Acceleration".

Step 4: Load the Kali Linux ISO
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 
Now that we've configured the VM environment, it's time to go ahead and add the Kali Linux ISO.

13. In the settings for the VM, under the Storage tab you will see that "Controller: IDE" is empty. Click the Empty CD and press the little CD icon that appears on the right next to "Optical Drive: IDE Second Master". This will bring up a menu, press "Choose Virtual Optical Disk File" and select your Kali Linux ISO file. You should now see the name of the ISO file under the IDE Controller.

Step 5: Boot up Kali Linux
^^^^^^^^^^^^^^^^^^^^^^^^^^

14. From the VirtualBox manager, Select the Kali Linux VM and press the green Start arrow. A new window will appear and you should see the Kali Linux boot menu.

15. Select Graphical Install

16. Follow the prompts to choose your basic install settings.

17. At some point in the install, it will prompt you to partition the disk. Because we're running this on a virtual disk, select "Guided - use entire disk".

18. Select the disk (there should only be one choice).

19. Select "All files in one partition".

20. An overview of the partition will be presented. If everything looks ok, go ahead and write the changes to disk.

Step 6: Finalize installation
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Nearly there! After the majority of the OS has been installed, there are just a few more things to set up.

21. The installer will ask you if you would like to use a network mirror, which will help to update your Kali Linux install. Select Yes.

22. Leave the proxy blank.

23. Press Yes to install the GRUB boot loader and select the disk partition.

24. Install complete! Press continue to reload into Kali. Username is ``root`` and the password will be the one that you set during the installation process.

Step 7: Enable fullscreen
^^^^^^^^^^^^^^^^^^^^^^^^^

Chances are you would probably like to use your shiny new OS in a proper fullscreen environment. This isn't quite as simple as one might think, but the following section will outline the steps needed to get this done.

1. Start up your Kali Linux VM and open a terminal window.

2. Run the following:

.. code:: bash

   apt-get update
   apt-get install -y virtualbox-guest-x11
   reboot

3. Now that the proper dependencies have been installed, go to the Devices menu of the currently running VM window and click "Insert Guest Additions CD Image...". The image should mount automatically.

4. That's it! Your Kali VM can be made fullscreen by pressing ``Host`` + ``F``. ``Right CTRL`` is usually the default ``Host`` key.

.. _here: https://www.virtualbox.org/wiki/Downloads
.. _website: https://www.kali.org/downloads/
