# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Coyote < Formula
  desc "All-in-one, batteries included LLM CLI tool"
  homepage "https://github.com/Dark-Alex-17/coyote"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/coyote/releases/download/v0.7.4/coyote-aarch64-apple-darwin.tar.gz"
    sha256 "d64faa4000e6c503962532478a9c5bb0706fca7eb3e6bd6e36025b362516ec7a"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/coyote/releases/download/v0.7.4/coyote-x86_64-apple-darwin.tar.gz"
    sha256 "8b84627514019c6a3ca10ff5a21fd4f5dc09045762e45e5b9172e5b897d0dadd"
  else
    url "https://github.com/Dark-Alex-17/coyote/releases/download/v0.7.4/coyote-x86_64-unknown-linux-musl.tar.gz"
    sha256 "96727b43cea478b7c4f03ba2d35a99de1049b0634b22836b33a07555139a756c"
  end
  version "0.7.4"
  license "MIT"

  def install
    bin.install "coyote"
    ohai "You're done! Get started with \"coyote --help\""
  end
end
