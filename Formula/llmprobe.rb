class Llmprobe < Formula
  desc "Agent-friendly CLI for probing OpenAI-compatible LLM endpoints"
  homepage "https://github.com/FactusConsulting/llmprobe"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/FactusConsulting/llmprobe/releases/download/v0.2.1/llmprobe-osx-arm64.tar.gz"
      sha256 "e36a237bbbeee68af8bee5a837fe5b4070c52d1f2fea4007d299a3f0e81d0bb6"
    end
    on_intel do
      url "https://github.com/FactusConsulting/llmprobe/releases/download/v0.2.1/llmprobe-osx-x64.tar.gz"
      sha256 "e1d37ae049b6e9c8ba733954b081d364a8b71aac23a436d6c59f59ea917c095c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FactusConsulting/llmprobe/releases/download/v0.2.1/llmprobe-linux-arm64.tar.gz"
      sha256 "71b6e6cbe994de887d23e9a5f9a56da6cb4b501d1806ee7a6f8536fbc43160fc"
    end
    on_intel do
      url "https://github.com/FactusConsulting/llmprobe/releases/download/v0.2.1/llmprobe-linux-x64.tar.gz"
      sha256 "32568a117dda392488e23a68368b015b47c68d6e5a941c1994246bb89ad27681"
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
