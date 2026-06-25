class Llmprobe < Formula
  desc "Agent-friendly CLI for probing OpenAI-compatible LLM endpoints"
  homepage "https://github.com/FactusConsulting/llmprobe"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/FactusConsulting/llmprobe/releases/download/v0.2.0/llmprobe-osx-arm64.tar.gz"
      sha256 "27683046708176f8c22ffa94a1b2869ddb61a100a9e9db05e3bfb2ae581b1dc1"
    end
    on_intel do
      url "https://github.com/FactusConsulting/llmprobe/releases/download/v0.2.0/llmprobe-osx-x64.tar.gz"
      sha256 "ab4991cd47560850d8c85d740bef1eb91bd3ef49d22ad1133a186302d429dd3c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FactusConsulting/llmprobe/releases/download/v0.2.0/llmprobe-linux-arm64.tar.gz"
      sha256 "9568c60b81cd02365272377c89f8c90a129a773147ead362f31f6dcb4835d39e"
    end
    on_intel do
      url "https://github.com/FactusConsulting/llmprobe/releases/download/v0.2.0/llmprobe-linux-x64.tar.gz"
      sha256 "55d4d8af47406b7f2f45c5d74f8fbdb4eb07a41713b5b857893f7d73a895a083"
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
