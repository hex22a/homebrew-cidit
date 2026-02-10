class Cidit < Formula
  desc "CIDR Inspection Tool"
  homepage "https://github.com/hex22a/cidit"
  version "3.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hex22a/cidit/releases/download/v3.0.0/cidit-v3.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "ebc07c5d91e37f61315d360582cbffe8d7f332a9243fa5f3474f24572a5359a3"
    else
      url "https://github.com/hex22a/cidit/releases/download/v3.0.0/cidit-v3.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "ff44d726057ebdd1f867ca5646308160641aae1a15c40588df6c635147899533"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hex22a/cidit/releases/download/v3.0.0/cidit-v3.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cd6e335f4299636afd957f4b41c0348d15478f71454d03dd4e4d9e1972c30fab"
    else
      url "https://github.com/hex22a/cidit/releases/download/v3.0.0/cidit-v3.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f985528c8033ab68d6a946773769d587bb8063f4b7ef7994629fa1ab96c07def"
    end
  end

  def install
    bin.install "cidit"
  end
  
  test do
    assert_match "cidit", shell_output("#{bin}/cidit --help")
  end
end
