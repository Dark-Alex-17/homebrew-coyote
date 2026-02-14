# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Loki < Formula
  desc "All-in-one, batteries included LLM CLI tool"
  homepage "https://github.com/Dark-Alex-17/loki"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/loki/releases/download/v0.2.0/loki-aarch64-apple-darwin.tar.gz"
    sha256 "e332a199a916bb3503e8c307a0cadb3fa7f42afcc7b1296febe6bac6413acd9d"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/loki/releases/download/v0.2.0/loki-x86_64-apple-darwin.tar.gz"
    sha256 "43b5fdb26c3b353283b5e11184c89ef3d1bb0c9828fe621ccac1d92d76903aaf"
  else
    url "https://github.com/Dark-Alex-17/loki/releases/download/v0.2.0/loki-x86_64-unknown-linux-musl.tar.gz"
    sha256 "a5d3e442fa5918caca3d86414fdafa4a852977c673a6868206a4f1d254d8fc36"
  end
  version "0.2.0"
  license "MIT"

  def install
    bin.install "loki"
    ohai "You're done! Get started with \"loki --help\""
  end
end
