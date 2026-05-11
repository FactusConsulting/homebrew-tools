class Llmprobe < Formula
  desc "Agent-friendly CLI for probing OpenAI-compatible LLM endpoints"
  homepage "https://github.com/FactusConsulting/llmprobe"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/FactusConsulting/llmprobe/releases/download/v0.1.5/llmprobe-osx-arm64.tar.gz"
      sha256 "f051ca6d34ffaacf970fdac528168f023bbbb3f0067bd0cb1d9f0b74e52e9b1d"
    end
    on_intel do
      url "https://github.com/FactusConsulting/llmprobe/releases/download/v0.1.5/llmprobe-osx-x64.tar.gz"
      sha256 "cb4291678b28b3fbcdd7c869d0ea045e757639ffaff353d95afabbffd03b0447"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FactusConsulting/llmprobe/releases/download/v0.1.5/llmprobe-linux-arm64.tar.gz"
      sha256 "114d195a586a9b8e44842ae48cfd02ef51d01e71d12de718b452f4a24a7c0943"
    end
    on_intel do
      url "https://github.com/FactusConsulting/llmprobe/releases/download/v0.1.5/llmprobe-linux-x64.tar.gz"
      sha256 "7c2b9965c2bcaf3ff83fa58648b0c03ee6bce84a55ae6b7fce54d3c0bb59bdf2"
    end
  end

  def install
    bin.install "llmprobe"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/llmprobe --version")
    assert_match "guidance for AI agents", shell_output("#{bin}/llmprobe --help-ai")
  end
end
