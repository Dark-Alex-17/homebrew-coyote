# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Coyote < Formula
  desc "All-in-one, batteries included LLM CLI tool"
  homepage "https://github.com/Dark-Alex-17/coyote"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/coyote/releases/download/v0.7.1/coyote-aarch64-apple-darwin.tar.gz"
    sha256 "2d8ca9982af387b49e258ca66b95df1e16333f993b999ddb0c296dc150c10b07"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/coyote/releases/download/v0.7.1/coyote-x86_64-apple-darwin.tar.gz"
    sha256 "ae9cc9574e967d4b4d0aba75f5be5294698138ba38601b17b65a442d9c7dc4b2"
  else
    url "https://github.com/Dark-Alex-17/coyote/releases/download/v0.7.1/coyote-x86_64-unknown-linux-musl.tar.gz"
    sha256 "1a4d827b7f79f0eea4f8449d9f76c2f424b506a6744506acd71d1814d4e58705"
  end
  version "0.7.1"
  license "MIT"

  def install
    bin.install "coyote"
    ohai "You're done! Get started with \"coyote --help\""
  end
end
