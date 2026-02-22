class Cidit < Formula
  desc "CIDR Inspection Tool"
  homepage "https://github.com/hex22a/cidit"
  version "3.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/hex22a/cidit/releases/download/v3.1.3/cidit-v3.1.3-aarch64-apple-darwin.tar.gz"
      sha256 "6ad801198bf3a96150ee5f98cbcf2314ff701a3571f7009e7f75b22a811ee935"
    else
      url "https://github.com/hex22a/cidit/releases/download/v3.1.3/cidit-v3.1.3-x86_64-apple-darwin.tar.gz"
      sha256 "1b16dc194f413740eecd3b7fc57cc8f362e0d215e8480d0ac30071fd345eb002"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/hex22a/cidit/releases/download/v3.1.3/cidit-v3.1.3-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "079da62282d8c0b236f4980ea581a53e6038cb5849348436f417ce6cbd38c1e0"
    else
      url "https://github.com/hex22a/cidit/releases/download/v3.1.3/cidit-v3.1.3-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "720a1f276a17268b40ba410396d4efddf2876e815cf37906e9e5aa134473b3de"
    end
  end

  def install
    bin.install "cidit"
  end
  
  test do
    assert_match "cidit", shell_output("#{bin}/cidit --help")
  end
end
