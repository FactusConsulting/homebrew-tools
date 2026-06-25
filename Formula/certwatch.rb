class Certwatch < Formula
  desc "Agent-friendly CLI for monitoring SSL/TLS certificate expiry across hosts"
  homepage "https://github.com/FactusConsulting/certwatch"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/FactusConsulting/certwatch/releases/download/v0.1.6/certwatch-osx-arm64.tar.gz"
      sha256 "4dc5902295be462482dcd6be70da5315cd11eb1d50650bfbfe27fef9ea249f72"
    end
    on_intel do
      url "https://github.com/FactusConsulting/certwatch/releases/download/v0.1.6/certwatch-osx-x64.tar.gz"
      sha256 "32d2bca07d74cce55673f67a93d73aa4af86eee1efe84ec525401f73421f78af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FactusConsulting/certwatch/releases/download/v0.1.6/certwatch-linux-arm64.tar.gz"
      sha256 "210fe5fffb11d2c89de24f4b3c9b2207462a2be73210cd9984c467e3e7ef6d62"
    end
    on_intel do
      url "https://github.com/FactusConsulting/certwatch/releases/download/v0.1.6/certwatch-linux-x64.tar.gz"
      sha256 "57d74f17f98cfddb13890e1dfcde0638789ac8b32b814948a61b7a13bbdd201b"
    end
  end

  def install
    bin.install "certwatch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/certwatch --version")
    assert_match "guidance for AI agents", shell_output("#{bin}/certwatch --help-ai")
  end
end
