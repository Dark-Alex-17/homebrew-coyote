# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Coyote < Formula
  desc "All-in-one, batteries included LLM CLI tool"
  homepage "https://github.com/Dark-Alex-17/coyote"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/coyote/releases/download/v0.7.0/coyote-aarch64-apple-darwin.tar.gz"
    sha256 "608d9b60bc13a60de3d44777134a21121661a97996a6d3544ac1477b5482d3a7"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/coyote/releases/download/v0.7.0/coyote-x86_64-apple-darwin.tar.gz"
    sha256 "6024c5aa8f092a04e5240a96c8f41f5d96313269c021aa75bcd9124c80917f2d"
  else
    url "https://github.com/Dark-Alex-17/coyote/releases/download/v0.7.0/coyote-x86_64-unknown-linux-musl.tar.gz"
    sha256 "20f5e2b4a0f637174616b3fcfd5b61cca60d1dd18f1d43e783f2c974fa744cb1"
  end
  version "0.7.0"
  license "MIT"

  def install
    bin.install "coyote"
    ohai "You're done! Get started with \"coyote --help\""
  end
end
