class Cidit < Formula
  desc "CIDR Inspection Tool"
  homepage "https://github.com/hex22a/cidit"
  version "0.0.22"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hex22a/cidit/releases/download/v0.0.22/cidit-v0.0.22-aarch64-apple-darwin.tar.gz"
      sha256 "d20c37f5214a69a7a9c2e21ef376c7a011a1316f3780cd535280fb646e8d8401"
    else
      url "https://github.com/hex22a/cidit/releases/download/v0.0.22/cidit-v0.0.22-x86_64-apple-darwin.tar.gz"
      sha256 "657c027181fe3dbb686bf56a6bcd129d9fcf9edd89e59f22316b1ce33c7729ca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hex22a/cidit/releases/download/v0.0.22/cidit-v0.0.22-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8e0ea89b8c544338d0b60b52dd27758df6c3d68888a9757590e2af39238fa537"
    else
      url "https://github.com/hex22a/cidit/releases/download/v0.0.22/cidit-v0.0.22-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "084f883f4a1d765d5b44f503fa860a976f19d7a9859a9aba54754db4606f4946"
    end
  end

  def install
    bin.install "cidit"
  end
end
