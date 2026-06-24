# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Coyote < Formula
  desc "All-in-one, batteries included LLM CLI tool"
  homepage "https://github.com/Dark-Alex-17/coyote"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/coyote/releases/download/v0.7.3/coyote-aarch64-apple-darwin.tar.gz"
    sha256 "6e062b0f3393bdec46b2e232246f04f5b147aef1e7e77ed7629177966faed3ec"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/coyote/releases/download/v0.7.3/coyote-x86_64-apple-darwin.tar.gz"
    sha256 "4fb455a167bf3f0f200a487771b3b7223ca3fae627a64476b11ed03e4a8d71f8"
  else
    url "https://github.com/Dark-Alex-17/coyote/releases/download/v0.7.3/coyote-x86_64-unknown-linux-musl.tar.gz"
    sha256 "3227eeae4583c3d27c27f07ad9ad8e677d616dad2a53d01821e7ade8cff3c7a5"
  end
  version "0.7.3"
  license "MIT"

  def install
    bin.install "coyote"
    ohai "You're done! Get started with \"coyote --help\""
  end
end
