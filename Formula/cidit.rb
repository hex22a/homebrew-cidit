class Cidit < Formula
  desc "CIDR Inspection Tool"
  homepage "https://github.com/hex22a/cidit"
  version "3.2.2"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hex22a/cidit/releases/download/v3.2.2/cidit-v3.2.2-aarch64-apple-darwin.tar.gz"
      sha256 "41c0b8416647ad1f55af6cfaf974fed95a3eaa52a5a31aa5fe2dafe013803021"
    else
      url "https://github.com/hex22a/cidit/releases/download/v3.2.2/cidit-v3.2.2-x86_64-apple-darwin.tar.gz"
      sha256 "4de6ab792bccaf06f6a6e25e43c0324829d26e7671e569255ecaa7feb853f060"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hex22a/cidit/releases/download/v3.2.2/cidit-v3.2.2-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a7cbdb7785b831097d29a570ed98669fa75e90718af33c6aeeb270a6351830c2"
    else
      url "https://github.com/hex22a/cidit/releases/download/v3.2.2/cidit-v3.2.2-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f922ef11798cb9803047aaa1f30e0c29a83dc4d42b31ac9e0df9dbcd53719d8f"
    end
  end

  def install
    bin.install "cidit"
  end
  
  test do
    assert_match "cidit", shell_output("#{bin}/cidit --help")
  end
end
