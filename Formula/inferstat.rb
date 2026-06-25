class Inferstat < Formula
  desc "Agent-friendly CLI for inspecting llama.cpp/vLLM/Ollama inference servers"
  homepage "https://github.com/FactusConsulting/inferstat"
  version "0.1.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/FactusConsulting/inferstat/releases/download/v0.1.7/inferstat-osx-arm64.tar.gz"
      sha256 "7dd51e0721f8f9dc06845074c5aaec376747c2d857e4fa5a95b61488f79e969b"
    end
    on_intel do
      url "https://github.com/FactusConsulting/inferstat/releases/download/v0.1.7/inferstat-osx-x64.tar.gz"
      sha256 "00b61234de71124fe127df1404292639978d3c6372f73976432b8eb2cbd6c149"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/FactusConsulting/inferstat/releases/download/v0.1.7/inferstat-linux-arm64.tar.gz"
      sha256 "7f3e012a55b0b12d4fe8c358056e555b6cdba68951b07507a15e68b07a47efa1"
    end
    on_intel do
      url "https://github.com/FactusConsulting/inferstat/releases/download/v0.1.7/inferstat-linux-x64.tar.gz"
      sha256 "0e22e978192b77085bf6ec618a09640379d68956b4f776f69e0729d660af5613"
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
