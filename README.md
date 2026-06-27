# ⚰️ DEPRECATED — moved to FactusConsulting/homebrew-tap

> This tap is **archived** and no longer receives updates. All FactusConsulting
> Homebrew formulas now live in a single tap: **[FactusConsulting/homebrew-tap](https://github.com/FactusConsulting/homebrew-tap)**.

The formulas in this repo are frozen at their final pre-migration versions
(`llmprobe 0.2.2`, `inferstat 0.1.8`, `certwatch 0.1.7`). Newer releases land
**only** in `homebrew-tap`.

## Migrate (existing users)

Switch your tap once — your installs keep working and start getting updates again:

```sh
# Drop the old tap and add the consolidated one
brew untap factusconsulting/tools
brew tap factusconsulting/tap

# Re-point the installed tools at the new tap and update
brew upgrade llmprobe inferstat certwatch
```

## Install (new users)

```sh
brew tap factusconsulting/tap
brew install llmprobe inferstat certwatch
```

## The tools

| Tool | Purpose | Repo |
| ---- | ------- | ---- |
| **`llmprobe`** | Probe OpenAI-compatible LLM endpoints — ping, models, test, stream, capabilities | [FactusConsulting/llmprobe](https://github.com/FactusConsulting/llmprobe) |
| **`inferstat`** | Inspect llama.cpp / vLLM / Ollama inference servers — health, models, slots, metrics | [FactusConsulting/inferstat](https://github.com/FactusConsulting/inferstat) |
| **`certwatch`** | Monitor SSL/TLS certificate expiry across many hosts | [FactusConsulting/certwatch](https://github.com/FactusConsulting/certwatch) |

## Why the move

We previously had two taps (`homebrew-tap` for whisper-dictate, `homebrew-tools`
for these three). One tap is less friction for everyone — the repo name *is* the
tap, so everything consolidated into `homebrew-tap`.

See the tracking issues: FactusConsulting/{llmprobe,inferstat,certwatch}#2.
