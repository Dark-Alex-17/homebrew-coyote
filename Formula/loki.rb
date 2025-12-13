# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Loki < Formula
  desc "All-in-one, batteries included LLM CLI tool"
  homepage "https://github.com/Dark-Alex-17/loki"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/loki/releases/download/v0.1.3/loki-aarch64-apple-darwin.tar.gz"
    sha256 "a61eecd70d6a3f2fa53bd7263591fb0b477e29e46a801606f2e240e998e0f466"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/loki/releases/download/v0.1.3/loki-x86_64-apple-darwin.tar.gz"
    sha256 "11e5c754ab4a216348d3183c1105b8e0da6246fb6e2ac4b8fbc0d780f21a3fd0"
  else
    url "https://github.com/Dark-Alex-17/loki/releases/download/v0.1.3/loki-x86_64-unknown-linux-musl.tar.gz"
    sha256 "fe926c523084b7f07ecd0f1a4d532a6ff55799a57467d9c33e00eebd28ce7870"
  end
  version "0.1.3"
  license "MIT"

  def install
    bin.install "loki"
    ohai "You're done! Get started with \"loki --help\""
  end
end
