class Certwatch < Formula
  desc "Agent-friendly CLI for monitoring SSL/TLS certificate expiry across hosts"
  homepage "https://github.com/FactusConsulting/certwatch"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/FactusConsulting/certwatch/releases/download/v0.1.5/certwatch-osx-arm64.tar.gz"
      sha256 "478f3db84615d9af4741c897c2539a6006b2a1fa0eea8ba47c19a44846742f6b"
    end
    on_intel do
      url "https://github.com/FactusConsulting/certwatch/releases/download/v0.1.5/certwatch-osx-x64.tar.gz"
      sha256 "d35e57fe3870fc872cf4cf0fc53e7d339e859b5fc3ce1c719eec7c6f68a502ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FactusConsulting/certwatch/releases/download/v0.1.5/certwatch-linux-arm64.tar.gz"
      sha256 "2a4ebd1712a9a875306b2d5473f4fb140e4ef41e710350966ac3196ac2463ceb"
    end
    on_intel do
      url "https://github.com/FactusConsulting/certwatch/releases/download/v0.1.5/certwatch-linux-x64.tar.gz"
      sha256 "6c362a0b2faad52b10d440d7b24927d520e4657a5936d9b6ea868723c3d4e914"
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
