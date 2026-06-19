# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Coyote < Formula
  desc "All-in-one, batteries included LLM CLI tool"
  homepage "https://github.com/Dark-Alex-17/coyote"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/coyote/releases/download/v0.7.2/coyote-aarch64-apple-darwin.tar.gz"
    sha256 "4b12123143eeebe2dc4c147e3d28b610627e0c997a0647fafa1a66c57257c5fd"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/coyote/releases/download/v0.7.2/coyote-x86_64-apple-darwin.tar.gz"
    sha256 "16c6ff84a318dfb7a4070ce4460082837525f13bc43b965350e6a064c2311c12"
  else
    url "https://github.com/Dark-Alex-17/coyote/releases/download/v0.7.2/coyote-x86_64-unknown-linux-musl.tar.gz"
    sha256 "76bea9ce98bf501b8ace97024b62927bcc91fd833b3592dcebaba55541ae33ba"
  end
  version "0.7.2"
  license "MIT"

  def install
    bin.install "coyote"
    ohai "You're done! Get started with \"coyote --help\""
  end
end
