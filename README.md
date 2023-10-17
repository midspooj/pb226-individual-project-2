[![Rust CI/CD Pipeline](https://github.com/nogibjj/Jeremy_Tan_IDS706_Week8_Individual/actions/workflows/ci.yml/badge.svg)](https://github.com/nogibjj/Jeremy_Tan_IDS706_Week8_Individual/actions/workflows/ci.yml)
# Jeremy Tan IDS706 Week 8 Individual
## Project Summary: Data Extraction, Transformation, Loading (ETL) and Querying Tool

This project provides a set of functions for performing ETL operations on a dataset and querying a SQLite database. I use Github Copilot to convert my previous Python code into Rust, but modify it as it isn't accurate and doesn't do error handling correctly at times.

### Components:

1. **Data Extraction:**
   - The `extract` function downloads data from a specified URL and saves it to a local file.

2. **Data Transformation and Loading:**
   - The `transform_load` function reads a CSV dataset and inserts its records into a SQLite database after performing necessary table operations. It creates a table named `ServeTimesDB` with specific columns.

3. **Database Querying:**
   - The `query` function allows users to perform SELECT, INSERT, UPDATE, and DELETE operations on the database. It logs the queries into a Markdown file named `query_log.md`.

4. **Logging:**
   - The `log_query` function appends SQL queries to a log file, facilitating tracking and analysis of executed queries.

### Preparation and Dependency Installation: 
1. open codespaces 
2. wait for codespaces to be built 
3. build: `cargo build` for dependencies installation
4. extract: `cargo run extract`
5. transform and load: `cargo run transform_load`
6. query sample: you can use `make create`, `make read`, `make update`, or `make delete` to see sample CRUD Operations
7. query your own: `cargo run query <insert own query here>`
8. You can find my successful CRUD operations [here](https://github.com/nogibjj/Jeremy_Tan_IDS706_Week8_Individual/blob/main/query_log.md)

### Check Format and Test Errors: 
1. Format code `make format`
2. Lint code `make lint`
3. Test coce `make test`

### Optimized Rust Binary
1. You can find and download the uploaded artifact by going to `actions` and clicking on the latest workflow run


## References
* [rust-cli-template](https://github.com/kbknapp/rust-cli-template)
* https://github.com/nogibjj/rust-data-engineering
* https://docs.rs/sqlite/latest/sqlite/
* https://github.com/fivethirtyeight/data
