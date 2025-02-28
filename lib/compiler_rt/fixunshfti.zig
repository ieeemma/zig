const common = @import("./common.zig");
const floatToInt = @import("./float_to_int.zig").floatToInt;

pub const panic = common.panic;

comptime {
    @export(__fixunshfti, .{ .name = "__fixunshfti", .linkage = common.linkage });
}

pub fn __fixunshfti(a: f16) callconv(.C) u128 {
    return floatToInt(u128, a);
}
