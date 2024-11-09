const std = @import("std");
const cmm = @import("common/common.zig");

pub fn main() void {
    std.debug.print("Hello, Zig !!\n", .{});
    std.debug.print("Sum of 2 numbers = {d}\n", .{cmm.sum(100, 200)});
}
