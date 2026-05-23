# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Loki < Formula
  desc "All-in-one, batteries included LLM CLI tool"
  homepage "https://github.com/Dark-Alex-17/loki"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/loki/releases/download/v0.4.0/loki-aarch64-apple-darwin.tar.gz"
    sha256 "adfbeaca8b50553aa0ebdfe79a549af5ccf7f01451e5d833b109202477234134"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/loki/releases/download/v0.4.0/loki-x86_64-apple-darwin.tar.gz"
    sha256 "47b7a1351d08c2b23ac2c4d601418f129cf03102b8eb833e92a532eaf0f37496"
  else
    url "https://github.com/Dark-Alex-17/loki/releases/download/v0.4.0/loki-x86_64-unknown-linux-musl.tar.gz"
    sha256 "47ea1e4cca8ea9e7a6c70ae2c6078dec9dfd6d9c1330c5c846f65b33733aaeaa"
  end
  version "0.4.0"
  license "MIT"

  def install
    bin.install "loki"
    ohai "You're done! Get started with \"loki --help\""
  end
end
