# Display Rust command-line utility versions
rust-version:
	@echo "Rust command-line utility versions:"
	rustc --version              # Rust compiler
	cargo --version              # Rust package manager
	rustfmt --version            # Rust code formatter
	rustup --version             # Rust toolchain manager
	clippy-driver --version      # Rust linter

# Format code using rustfmt
format:
	cargo fmt --quiet

# Run clippy for linting
lint:
	cargo clippy --quiet

# Run tests
test:
	cargo test --quiet

# Build and run the project
run:
	cargo run

# Build release version
release:
	cargo build --release

# Install Rust toolchain if needed
install:
	# Install if needed
	# @echo "Updating rust toolchain"
	# rustup update stable
	# rustup default stable 

# Run all formatting, linting, and testing tasks
all: format lint test run

# Custom tasks

# Example: Extract data
extract: 
	cargo run extract

# Example: Transform and Load data
transform_load:
	cargo run transform_load

# Example: Create a database entry
create:
	cargo run query "INSERT INTO ServeTimesDB (server, seconds_before_next_point, day, opponent, game_score, sets, game) VALUES ('John Doe', 40, '2023-09-05', 'Jane Doe', '30-40', 1, '0-0');"

# Example: Read from the database
read:
	cargo run query "SELECT * FROM ServeTimesDB WHERE server = 'John Doe';"

# Example: Update a database entry
update:
	cargo run query "UPDATE ServeTimesDB SET server='John Doe', seconds_before_next_point=40, day='2023-09-05', opponent='Jane Doe', game_score='30-40', sets=1, game='0-0' WHERE id=1;"

# Example: Delete a database entry
delete:
	cargo run query "DELETE FROM ServeTimesDB WHERE id=3;"

# Generate and push changes to GitHub
generate_and_push:
	@if [ -n "$$(git status --porcelain)" ]; then \
		git config --local user.email "action@github.com"; \
		git config --local user.name "GitHub Action"; \
		git add .; \
		git commit -m "Add metric log"; \
		git push; \
	else \
		echo "No changes to commit. Skipping commit and push."; \
	fi
