class Inferstat < Formula
  desc "Agent-friendly CLI for inspecting llama.cpp/vLLM/Ollama inference servers"
  homepage "https://github.com/FactusConsulting/inferstat"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/FactusConsulting/inferstat/releases/download/v0.1.6/inferstat-osx-arm64.tar.gz"
      sha256 "75f6ce770385d188f60d8cfdc07049ac376b8c6452c5741f7a36a4dc0ed3ec47"
    end
    on_intel do
      url "https://github.com/FactusConsulting/inferstat/releases/download/v0.1.6/inferstat-osx-x64.tar.gz"
      sha256 "0ad83b85b9cd620f96401ce5b97d078dad086564530f5aecf124ffae767760bd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FactusConsulting/inferstat/releases/download/v0.1.6/inferstat-linux-arm64.tar.gz"
      sha256 "fb11a02d8c9ca70d334b1dd3b0e9c352a7e8255b6feb043b9943a2d204472aca"
    end
    on_intel do
      url "https://github.com/FactusConsulting/inferstat/releases/download/v0.1.6/inferstat-linux-x64.tar.gz"
      sha256 "3c87b0ab9cf5c2b8307d233b6be942122505da099e8f1f549ed6fef888ef849f"
    end
  end

  def install
    bin.install "inferstat"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/inferstat --version")
    assert_match "guidance for AI agents", shell_output("#{bin}/inferstat --help-ai")
  end
end
