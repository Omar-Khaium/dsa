GITHUB_REPO = 'https://github.com/Omar-Khaium/dsa-exhibition.git'
BUILD_VERSION := $(shell grep 'version:' pubspec.yaml | awk '{print $$2}')

deploy-web:
	@echo "Clean existing repository..."
	flutter clean

	@clear

	@echo "Getting packages..."
	flutter pub get

	@clear

	@echo "Building for web..."
	flutter build web --release

	@clear

	@echo "Deploying to git repository"
	cd build/web && \
	git init && \
	git add . && \
	git commit -m "Deploy Version $(BUILD_VERSION)" && \
	git branch -M main && \
	git remote add origin $(GITHUB_REPO) && \
	git push -u --force origin main

	@clear

	cd ../..
	@echo "Deployed successfully! 🚀🚀🚀"

.PHONY: deploy-web