class Cidit < Formula
  desc "CIDR Inspection Tool"
  homepage "https://github.com/hex22a/cidit"
  version "2.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hex22a/cidit/releases/download/v2.0.0/cidit-v2.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "3dd6040b9da545ea90d417d8ac4a179bd17d87a21852448944c3d9678cde9681"
    else
      url "https://github.com/hex22a/cidit/releases/download/v2.0.0/cidit-v2.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "fcaa5ab6756ee9371056462b9177946ed5050bf07013a9559a7ebbdc50e326aa"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hex22a/cidit/releases/download/v2.0.0/cidit-v2.0.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d871ee99f5ebc7472fc76da050582cd9177b95aa7a9354c56364ce47776647b1"
    else
      url "https://github.com/hex22a/cidit/releases/download/v2.0.0/cidit-v2.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "87cc055934c91a9f9302f4c8d7dd4f557297db358687220803ce8ec5b8992435"
    end
  end

  def install
    bin.install "cidit"
  end
  
  test do
    assert_match "cidit", shell_output("#{bin}/cidit --help")
  end
end
