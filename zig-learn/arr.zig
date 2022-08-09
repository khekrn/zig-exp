const print = @import("std").debug.print;
const expect = @import("std").testing.expect;

var arr = [5]i32{ 3, 10, 15, 20, 7 };
var sl = [_]i32{ 1, 2, 3, 4, 5 };
var arr_string = [_][]const u8{"Java", "Elixir", "Zig", "Kotlin"};

pub fn main() void {
    print("Array Example\n", .{});
    print("Sum of Slice = {}\n", .{sum(sl)});
    print("Sum of Array = {}\n", .{sum(arr)});
    print("Array of String = {s} with Size = {}\n", .{arr_string, arr_string.len});
}

fn sum(input: [5]i32) i32{
    var result:i32 = 0;
    var index:usize = 0;

    while(index < input.len){
        result = result + input[index];
        index = index + 1;
    }

    return result;
}

test "arr_test"{
    try expect(arr.len == 5);
    try expect(sl.len == 5);
    try expect(arr_string.len == 4);
}

test "sum_arr_test"{
    try expect(sum(arr) == 55);
    try expect(sum(sl) == 15);
}
