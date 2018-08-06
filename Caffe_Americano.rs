/// 0,2l Kaffee aus Espressobohnen
/// Stark, mächtig, sicher,
/// eine echte Alternative zu C++

fn name_with_price(price: &str) -> String {
    format!("Caffè Americano - {}", price)
}

fn main() {
    let description = name_with_price("0,80€");
    println!("{}", description);
}
