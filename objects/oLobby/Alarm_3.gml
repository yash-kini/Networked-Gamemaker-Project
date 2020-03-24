/// @description assign traitors 
show_debug_message("Assign Traitors");


var i;
for (i = 0; i < instance_number(oPlayer); i += 1)
   {
   players[i] = instance_find(oPlayer,i);
   }
   
players[0].isTraitor = true;