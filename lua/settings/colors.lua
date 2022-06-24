 local colorscheme = "nordfox"

 local status_ok, _ =  pcall(vim.cmd, "colorscheme " .. colorscheme)

 if not status_ok then
  vim.notify("colorscheme" .. colorscheme .. "not found! please install")
  vim.cmd("colorscheme desert")
   return
 end 
-- explanation:
-- we fist set the name of the colorscheme into a variable [ colorscheme ]
-- we then call a protected call [ pcall ]
-- ` local status_ok, _ = pcall( "the function we want to call", "the commant/argument to call")
--
-- in this ca se we are concatinating a string with a variable using the [..] symbol: like in javascript it would be: ("hello there " + UserName)
--
-- the protected call will return the status into the local variable [ status_ok ] that we defined.
--
-- we then check that variable 
-- if it's [true] then we don't do anything. the call worked.
--if it's [false] (not [true]) then we run a separate command of calling vim.notify with the message that our chosen colorscheme is not found.
--
--we also can install another default colorscheme.


