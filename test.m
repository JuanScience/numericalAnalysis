function test()
  subplot (2, 1, 1)
  fplot (@sin, [-10, 10]);
  title ("x & y labels & ticklabels");
  subplot (2, 1, 2)
  fplot (@cos, [-10, 10]);
  title ("otro título");
endfunction
