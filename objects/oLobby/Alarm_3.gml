/// @description assign traitors 
show_debug_message("Assign Traitors");


var i;
for (i = 0; i < instance_number(oPlayer); i += 1)
   {
   players[i] = instance_find(oPlayer,i);
   }
   
   
//only assigns 1 traitor
ran = random_range(0, instance_number(oPlayer) - 1);
players[ran].isTraitor = true;
instance_destroy();