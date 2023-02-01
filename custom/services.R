library(plumber)

#* @apiTitle My Mega API: New image, based on BASIC one.
#* @apiDescription API REST services, written in R. This image was inherited from the BASE image!
#* @apiVersion 1.0


#* Echo back the input
#* @param msg The message to echo
#* @get /echo
function(msg="") {
  list(msg = paste0("The message is: '", msg, "'"))
}
