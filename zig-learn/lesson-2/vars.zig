const print = @import("std").debug.print;

pub fn main() void {
    // const
    const i: i32 = 8;
    // mutable
    const str = "Hello Zig";
    print("Formatting {s}, {}\n", .{str, i});
}