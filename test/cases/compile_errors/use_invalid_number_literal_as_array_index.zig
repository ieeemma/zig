var v = 25;
export fn entry() void {
    var arr: [v]u8 = undefined;
    _ = arr;
}

// error
// backend=stage2
// target=native
//
// :1:1: error: variable of type 'comptime_int' must be const or comptime
