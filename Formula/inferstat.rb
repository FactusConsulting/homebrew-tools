class Inferstat < Formula
  desc "Agent-friendly CLI for inspecting llama.cpp/vLLM/Ollama inference servers"
  homepage "https://github.com/FactusConsulting/inferstat"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/FactusConsulting/inferstat/releases/download/v0.1.5/inferstat-osx-arm64.tar.gz"
      sha256 "811d4eba40a6a279e68ba3b4ffe0da9c645b8fb9a6aa4ed824c6cdee94271875"
    end
    on_intel do
      url "https://github.com/FactusConsulting/inferstat/releases/download/v0.1.5/inferstat-osx-x64.tar.gz"
      sha256 "448744bf6d310a06c5450a396ab126140be78255e3ad36102e0641bcfeef35ac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FactusConsulting/inferstat/releases/download/v0.1.5/inferstat-linux-arm64.tar.gz"
      sha256 "e01f8070205f882a8d70bf1e27d43594957d546611798f74ba917d1c79a9c059"
    end
    on_intel do
      url "https://github.com/FactusConsulting/inferstat/releases/download/v0.1.5/inferstat-linux-x64.tar.gz"
      sha256 "ba0755f3bd4ccb571b98f54acaa04134aae83f673c2072dde8a1e6b35536f28b"
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
