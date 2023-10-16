use jeremy_tan_sqlite::{extract, query, transform_load};

#[test]
fn test_extract() {
    let url =
        "https://github.com/fivethirtyeight/data/blob/master/tennis-time/serve_times.csv?raw=true";
    let file_path = "data/serve_times.csv";
    let directory = "data";

    extract(url, file_path, directory);

    assert!(std::fs::metadata(file_path).is_ok());
}

#[test]
fn test_transform_load() {
    let dataset = "data/serve_times.csv";
    let result = transform_load(dataset);

    assert_eq!(result.unwrap(), "ServeTimesDB.db");
}

#[test]
fn test_query() {
    // Execute a SELECT query
    let select_query = "SELECT * FROM ServeTimesDB WHERE id = 9;";
    let result = query(select_query);

    assert!(result.is_ok());
}
