# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Loki < Formula
  desc "All-in-one, batteries included LLM CLI tool"
  homepage "https://github.com/Dark-Alex-17/loki"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/loki/releases/download/v0.3.0/loki-aarch64-apple-darwin.tar.gz"
    sha256 "3b96000c18eeaa456e525de0db675f36ae124f02130ca2450f891d62100b3ce1"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/loki/releases/download/v0.3.0/loki-x86_64-apple-darwin.tar.gz"
    sha256 "093f523068e05cc34d051e1bad85e2d0863cef583beb455cb32d31e61056ad40"
  else
    url "https://github.com/Dark-Alex-17/loki/releases/download/v0.3.0/loki-x86_64-unknown-linux-musl.tar.gz"
    sha256 "51374a308d0b587ec2f4f1649c4e74ea4ea40bd5157bdbe339312091a6f4be97"
  end
  version "0.3.0"
  license "MIT"

  def install
    bin.install "loki"
    ohai "You're done! Get started with \"loki --help\""
  end
end
