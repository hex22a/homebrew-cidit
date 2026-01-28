class Cidit < Formula
  desc "CIDR Inspection Tool"
  homepage "https://github.com/hex22a/cidit"
  version "0.0.16"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hex22a/cidit/releases/download/v0.0.16/cidit-v0.0.16-aarch64-apple-darwin.tar.gz"
      sha256 "9206c603cb85036d7516c51b08a33b9481192cae2d48b402fa822cd274c67914"
    else
      url "https://github.com/hex22a/cidit/releases/download/v0.0.16/cidit-v0.0.16-x86_64-apple-darwin.tar.gz"
      sha256 "40ebc30a06596e94e9a545f3f877738b5ebf8ac22c372e52b0ca5838089a5093"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hex22a/cidit/releases/download/v0.0.16/cidit-v0.0.16-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "564f355830e748a6216445b1fc114a9176216f32190a8463c55df2df575b57b3"
    else
      url "https://github.com/hex22a/cidit/releases/download/v0.0.16/cidit-v0.0.16-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4bae8b438dcca7380961289fd87682194b1b909b2a1d3c07992b7d821f2d997c"
    end
  end

  def install
    bin.install "cidit"
  end
end