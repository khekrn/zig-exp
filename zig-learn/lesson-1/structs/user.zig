const std = @import("std");
pub const User = struct {
    power: u64,
    name: []const u8,

    pub const SUPER_POWER = 10000;
    pub fn diagonise(user: User) void {
        if (user.power >= SUPER_POWER) {
            std.debug.print("it's over {d}!!!", .{SUPER_POWER});
        }
    }
};
