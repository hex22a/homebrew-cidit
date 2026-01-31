class Cidit < Formula
  desc "CIDR Inspection Tool"
  homepage "https://github.com/hex22a/cidit"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hex22a/cidit/releases/download/v1.0.0/cidit-v1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "11479a417ac270ac405e4d971751b5c277b92e979a324eb44b35faec1e8e3efa"
    else
      url "https://github.com/hex22a/cidit/releases/download/v1.0.0/cidit-v1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "7c5dad6ebade1a2abe7807cb51049f752a4f0667baf51995344a87a6cd75d576"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hex22a/cidit/releases/download/v1.0.0/cidit-v1.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a6b063a74d6810223a673d0054714a2678a27f7aae8bd23b92205a7e274a64fb"
    else
      url "https://github.com/hex22a/cidit/releases/download/v1.0.0/cidit-v1.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2d13c869d5cc5598a860bba4aa4e9d23ce5017e0e93438e652add29412c3a20f"
    end
  end

  def install
    bin.install "cidit"
  end
end
