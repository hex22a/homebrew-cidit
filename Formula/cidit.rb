class Cidit < Formula
  desc "CIDR Inspection Tool"
  homepage "https://github.com/hex22a/cidit"
  version "3.2.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hex22a/cidit/releases/download/v3.2.3/cidit-v3.2.3-aarch64-apple-darwin.tar.gz"
      sha256 "a042e2e570bed5955a69529c26f0d37260c892fde8d9c38d628dabbdf4936d88"
    else
      url "https://github.com/hex22a/cidit/releases/download/v3.2.3/cidit-v3.2.3-x86_64-apple-darwin.tar.gz"
      sha256 "feb45cabee3d82b1e143266c28eafc8624fa1be27a0f8b3a885b5357f550f5de"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hex22a/cidit/releases/download/v3.2.3/cidit-v3.2.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "51c83ddfbb0690248ad7b031a4b2c52d989fd9c216e405783560f7cf92771d44"
    else
      url "https://github.com/hex22a/cidit/releases/download/v3.2.3/cidit-v3.2.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c3e70c54612b4b90995e3206d513ab8092df454848087ecbc4ee7278d846c79d"
    end
  end

  def install
    bin.install "cidit"
  end
  
  test do
    assert_match "cidit", shell_output("#{bin}/cidit --help")
  end
end
