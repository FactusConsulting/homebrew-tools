# FactusConsulting Homebrew tap

[Homebrew](https://brew.sh) tap providing the three agent-friendly CLI tools from [ai-ops.dk](https://ai-ops.dk)'s blog post on agent-friendly CLI design.

Works on **Linux** (x64 + arm64) and **macOS** (x64 + arm64). Single-file self-contained binaries — no .NET runtime required on the target system.

## Install

```sh
brew tap FactusConsulting/tools
brew install llmprobe inferstat certwatch
```

Or install individually:

```sh
brew install FactusConsulting/tools/llmprobe
brew install FactusConsulting/tools/inferstat
brew install FactusConsulting/tools/certwatch
```

## The tools

| Tool | Purpose | Repo |
| ---- | ------- | ---- |
| **`llmprobe`** | Probe OpenAI-compatible LLM endpoints — ping, models, test, stream, capabilities | [FactusConsulting/llmprobe](https://github.com/FactusConsulting/llmprobe) |
| **`inferstat`** | Inspect llama.cpp / vLLM / Ollama inference servers — health, models, slots, metrics | [FactusConsulting/inferstat](https://github.com/FactusConsulting/inferstat) |
| **`certwatch`** | Monitor SSL/TLS certificate expiry across many hosts | [FactusConsulting/certwatch](https://github.com/FactusConsulting/certwatch) |

All three follow the agent-friendly CLI principles from [Hvorfor en god CLI ofte slår MCP for AI-agenter](https://ai-ops.dk/blog/cli-vs-mcp-for-ai-agenter): stable JSON output (`--json`), meaningful exit codes, `--help-ai` flag with agent-specific guidance, composable via pipes.

## Quick start

```sh
# Health-check an OpenAI-compatible endpoint
llmprobe ping http://localhost:11434

# List models with family + quantization detection
inferstat models http://infer:8001 --json | jq '.models[] | {id, family}'

# Cert expiry across many hosts, written to a Prometheus textfile collector
certwatch check --from-file domains.txt --prometheus > /var/lib/node_exporter/textfile_collector/certwatch.prom

# Agent-friendly guidance for any of the tools
llmprobe --help-ai
inferstat --help-ai
certwatch --help-ai
```

## Authentication

For endpoints behind a bearer token (vLLM with `--api-key`, secured gateways, OpenAI/Anthropic):

```sh
# Per-call flag
llmprobe stream http://infer:8000 -m gemma4-26b --api-key sk-...

# Or environment variable (recommended for scripts)
export OPENAI_API_KEY=sk-...
inferstat slots http://infer:8000
inferstat metrics http://infer:8000
```

The env var is generic — used as bearer token for any OpenAI-compatible endpoint, not OpenAI-specific.

## Versions

Current: **v0.1.5** (May 2026). All three tools are version-synced so the same tag covers all of them.

Updates land in this tap when new releases are tagged on the underlying repos.

```sh
# Upgrade to newest available
brew update
brew upgrade llmprobe inferstat certwatch
```

## Removing

```sh
brew uninstall llmprobe inferstat certwatch
brew untap FactusConsulting/tools
```

## License

The tap itself is MIT. Each tool's license is in its own repo (also MIT).

## Source

- llmprobe: <https://github.com/FactusConsulting/llmprobe>
- inferstat: <https://github.com/FactusConsulting/inferstat>
- certwatch: <https://github.com/FactusConsulting/certwatch>
- This tap: <https://github.com/FactusConsulting/homebrew-tools>
