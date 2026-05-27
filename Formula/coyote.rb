# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Coyote < Formula
  desc "All-in-one, batteries included LLM CLI tool"
  homepage "https://github.com/Dark-Alex-17/coyote"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/coyote/releases/download/v0.5.0/coyote-aarch64-apple-darwin.tar.gz"
    sha256 "6150b280efed3213912df1de6c952f01935c224498a66944af60357440276289"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/coyote/releases/download/v0.5.0/coyote-x86_64-apple-darwin.tar.gz"
    sha256 "2c4956f55d7958700a73e6c636e61a6d03f39409c523850312a60d9eeb2516e2"
  else
    url "https://github.com/Dark-Alex-17/coyote/releases/download/v0.5.0/coyote-x86_64-unknown-linux-musl.tar.gz"
    sha256 "623e4a548cc83969cc9c8eed4e2acd79e0cf615b6482a72ba58b2f9090b0660d"
  end
  version "0.5.0"
  license "MIT"

  def install
    bin.install "coyote"
    ohai "You're done! Get started with \"coyote --help\""
  end
end
