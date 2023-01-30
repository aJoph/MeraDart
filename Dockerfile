# Specify the Dart SDK base image version using dart:<version> (ex: dart:2.12)
FROM dart:stable AS build

# Resolve app dependencies.
WORKDIR /app
COPY pubspec.* ./
RUN dart pub get

# Copy app source code and AOT compile it.
COPY . .

# Ensure packages are still up-to-date if anything has changed
RUN dart pub get --offline
RUN dart run build_runner build
RUN dart compile exe bin/main.dart -o bin/server

# Build minimal serving image from AOT-compiled `/server` and required system
# libraries and configuration files stored in `/runtime/` from the build stage.
FROM scratch

ARG BOT_TOKEN

ENV BOT_TOKEN ${BOT_TOKEN}

COPY --from=build /runtime/ /
COPY --from=build /app/bin/server /app/bin/

# Start server.
EXPOSE 8443
CMD ["/app/bin/server"]
