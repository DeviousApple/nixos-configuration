#This file is mainly for select ASUS Notebooks, general install may skip this file if needed.
{
  services.supergfxd = {
   enable = true;
   settings = {
     mode = "Hybrid";
     vfio_enable =  true;
     vfio_save =  true;
     always_reboot =  false;
     no_logind = false;
     logout_timeout_s =  180;
     hotplug_type = "Asus";
   };
 };
}


