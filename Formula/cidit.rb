class Cidit < Formula
  desc "CIDR Inspection Tool"
  homepage "https://github.com/hex22a/cidit"
  version "3.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hex22a/cidit/releases/download/v3.1.0/cidit-v3.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "486e50a7273ad04732ce29087253f62fb276ccd0ecb97853619a28103b5060a7"
    else
      url "https://github.com/hex22a/cidit/releases/download/v3.1.0/cidit-v3.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "9bb275c569699f4f0d315ef9354d444b671b8a9929ffc8e507bbfb19981f69e7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hex22a/cidit/releases/download/v3.1.0/cidit-v3.1.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "815c59c1639c101c0dff407fe4df949789f8b537966da6df4ed855be8dc0877e"
    else
      url "https://github.com/hex22a/cidit/releases/download/v3.1.0/cidit-v3.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7280551829dadb4afc67d154ecad0258c74eb45b17dabb1eca0d8370b8a6e186"
    end
  end

  def install
    bin.install "cidit"
  end
  
  test do
    assert_match "cidit", shell_output("#{bin}/cidit --help")
  end
end
