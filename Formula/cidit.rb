class Cidit < Formula
  desc "CIDR Inspection Tool"
  homepage "https://github.com/hex22a/cidit"
  version "3.0.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hex22a/cidit/releases/download/v3.0.1/cidit-v3.0.1-aarch64-apple-darwin.tar.gz"
      sha256 "c4d395f73280ad0dff6f16f0692b92eb62d4ba34e5f16189084b3c3f3a606173"
    else
      url "https://github.com/hex22a/cidit/releases/download/v3.0.1/cidit-v3.0.1-x86_64-apple-darwin.tar.gz"
      sha256 "68e34417f4c249aaf38330cd8be331755592dab2eb1b7287877f3346513e592a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hex22a/cidit/releases/download/v3.0.1/cidit-v3.0.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2a873b460de6399aa22e66cf7400d209826e598cdc3af04e2969d6e6f4e1dbe3"
    else
      url "https://github.com/hex22a/cidit/releases/download/v3.0.1/cidit-v3.0.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ed9c7c3b61ec58f2eef148bd1d14ecdd92df1be93e900cd15d981ddb7343e6f8"
    end
  end

  def install
    bin.install "cidit"
  end
  
  test do
    assert_match "cidit", shell_output("#{bin}/cidit --help")
  end
end
