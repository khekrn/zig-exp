const print = @import("std").debug.print;
const expect = @import("std").testing.expect; 

pub fn main() void {
    const age: i32 = 31;
    var name = "Kishore Karunakaran"; 
    print("Hello {s}, {}\n", .{name, age});
}

test "greet_test"{
    var name = "Kishore Karunakaran";
    try expect(name == "Kishore Karunakaran");
}