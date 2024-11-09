const std = @import("std");
const cmm = @import("common/common.zig");
const user = @import("structs/user.zig").User;

pub fn main() void {
    std.debug.print("Hello, Zig !!\n", .{});
    std.debug.print("Sum of 2 numbers = {d}\n", .{cmm.sum(100, 200)});
    const userObj = user{ .power = 10001, .name = "Goku" };
    std.debug.print("{s}'s power = {d}\n", .{ userObj.name, userObj.power });
    userObj.diagonise();
}
