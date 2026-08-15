class Cidit < Formula
  desc "CIDR Inspection Tool"
  homepage "https://github.com/hex22a/cidit"
  version "3.2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hex22a/cidit/releases/download/v3.2.0/cidit-v3.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "b7a27aa53dd8a73e98c2969cad5bcd273629e3c2327933ee45b64b1d5aea8740"
    else
      url "https://github.com/hex22a/cidit/releases/download/v3.2.0/cidit-v3.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "f9dac95881f7d75f0ce602fb39f5a41b725b525ce3813ea8af12ccc06fde3599"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hex22a/cidit/releases/download/v3.2.0/cidit-v3.2.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8271727e8c8e741ae9449c1ab87444858784e43a81f702429834187c427f28e0"
    else
      url "https://github.com/hex22a/cidit/releases/download/v3.2.0/cidit-v3.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "46ef348f29365ecfb0f22f4e747e4a095111ed7a153f6244504d9901a9547496"
    end
  end

  def install
    bin.install "cidit"
  end
  
  test do
    assert_match "cidit", shell_output("#{bin}/cidit --help")
  end
end
