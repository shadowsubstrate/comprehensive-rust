fn collatz_length(mut n: i32) -> u32 {
    let mut res: u32 = 1;

    while n != 1 {
        if n % 2 == 0 {
            n = n / 2;
        } else {
            n = 3 * n + 1;
        }
        res += 1;
    }

    return res;
}

// fn collatz_length_alternative(mut n: i32) -> u32 {
//     let mut len = 1;
//     while n > 1 {
//         n = if n % 2 == 0 { n / 2 } else { 3 * n + 1 };
//         len += 1;
//     }
//     len
// }

#[test]
fn test_collatz_length() {
    assert_eq!(collatz_length(11), 15);
}

fn main() {
    println!("Length: {}", collatz_length(11));
}
