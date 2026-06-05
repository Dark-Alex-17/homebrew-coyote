# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Coyote < Formula
  desc "All-in-one, batteries included LLM CLI tool"
  homepage "https://github.com/Dark-Alex-17/coyote"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/Dark-Alex-17/coyote/releases/download/v0.6.0/coyote-aarch64-apple-darwin.tar.gz"
    sha256 "b9cda92716012127b8b5238150ff2fd137830e64039cc7970f62d6f34b577dd4"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/Dark-Alex-17/coyote/releases/download/v0.6.0/coyote-x86_64-apple-darwin.tar.gz"
    sha256 "a3ca2b104fe7b70107c64a077b28b7b6700dcd3e590876f70042bc5ddc2047dc"
  else
    url "https://github.com/Dark-Alex-17/coyote/releases/download/v0.6.0/coyote-x86_64-unknown-linux-musl.tar.gz"
    sha256 "67d8e7e4bda06de1819ad4a4b38a087ab9ad852afdd6d630607c0068981c74a3"
  end
  version "0.6.0"
  license "MIT"

  def install
    bin.install "coyote"
    ohai "You're done! Get started with \"coyote --help\""
  end
end
