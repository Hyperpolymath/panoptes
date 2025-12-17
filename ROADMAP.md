<!-- SPDX-License-Identifier: MIT -->
<!-- SPDX-FileCopyrightText: 2025 Jonathan D. A. Jewell <hyperpolymath> -->

# Panoptes Roadmap

This document outlines the planned development direction for Panoptes.

## Current Status: v3.0.0 (Stable)

Panoptes v3.0.0 includes comprehensive file analysis capabilities:

### Core Features (Completed)
- [x] **Image analysis & renaming** - JPG, PNG, WebP, GIF, BMP, TIFF
- [x] **Moondream vision model** - Local AI via Ollama (~1.6GB)
- [x] **Graceful operation** - Signal handling, health checks
- [x] **Undo support** - History log with `panoptes-undo` tool
- [x] **Dry-run mode** - Preview changes before committing
- [x] **RSR Gold compliance** - Full documentation suite
- [x] **Web UI** - `panoptes-web` binary for browser-based interface
- [x] **PDF processing** - Text extraction via `pdf-extract` and `lopdf`
- [x] **Audio metadata** - ID3 tags, MP3 metadata via `symphonia`
- [x] **Archive inspection** - ZIP, TAR, GZIP support
- [x] **Code analysis** - Tree-sitter parsing for Rust, Python, JavaScript
- [x] **Document parsing** - XML and Excel via `quick-xml` and `calamine`
- [x] **Deduplication** - BLAKE3 hashing for file deduplication
- [x] **SQLite database** - Tags and categories storage

## Immediate Fixes (v3.0.x)

### v3.0.1 - Polish
- [ ] Improve file stability detection (check file handle locks)
- [ ] Add retry logic for transient Ollama failures
- [ ] Systemd service file for daemon operation
- [ ] Man page generation

### v3.0.2 - Robustness
- [ ] Better handling of very large files
- [ ] Configurable debounce timing
- [ ] Log rotation support
- [ ] Prometheus metrics endpoint (optional)

## Short-term Goals (v3.x)

### v3.1.0 - Extended Image Formats
- [ ] HEIC/HEIF support (Apple photos)
- [ ] RAW format support (CR2, NEF, ARW, DNG)
- [ ] SVG thumbnail generation
- [ ] AVIF support

### v3.2.0 - Enhanced AI
- [ ] Multiple model support (LLaVA, BakLLaVA, Phi-3)
- [ ] Model auto-selection based on file size/type
- [ ] Custom prompt templates via config
- [ ] Confidence scoring (skip low-confidence renames)

### v3.3.0 - Audio Transcription
- [ ] Whisper integration for speech-to-text
- [ ] Audio file naming from transcription
- [ ] Podcast episode detection

### v3.4.0 - Video Support
- [ ] FFmpeg integration for keyframe extraction
- [ ] Video thumbnail analysis
- [ ] Audio track transcription
- [ ] Scene detection

## Medium-term Goals (v4.x)

### v4.0.0 - Plugin Architecture
- [ ] Trait-based analyzer plugins
- [ ] Dynamic plugin loading
- [ ] Plugin configuration schema
- [ ] Community plugin registry

### v4.1.0 - Multi-Directory & Remote
- [ ] Multiple watch directories
- [ ] Remote Ollama support (TLS)
- [ ] SSH tunnel support
- [ ] Configuration hot-reload

### v4.2.0 - Advanced Documents
- [ ] Office document deep extraction (DOCX, PPTX)
- [ ] Email file parsing (EML, MSG)
- [ ] More archive formats (7z, RAR)

## Long-term Vision (v5.x)

### v5.0.0 - Advanced Features
- [ ] Category-based organization (auto-folders)
- [ ] Advanced tagging system with hierarchies
- [ ] Semantic search over renamed files
- [ ] Machine learning model fine-tuning

### v5.1.0 - Sync & Distribution
- [ ] CRDT-based distributed state
- [ ] Multi-device synchronization
- [ ] Offline-first rename queue
- [ ] Conflict resolution UI

### v5.2.0 - Platform Expansion
- [ ] Native macOS app (FSEvents optimization)
- [ ] Windows service
- [ ] Mobile companion app
- [ ] NAS integration (Synology, QNAP)

## Non-Goals

The following are explicitly **out of scope**:

- **Cloud-required features** - Core functionality must work offline
- **Proprietary AI APIs** - No dependency on OpenAI, Anthropic, etc.
- **Telemetry** - No usage data collection, ever
- **Ads/Monetization** - Project remains free and open source
- **Breaking local-first** - Network features are always optional

## Extension Points

Panoptes is designed for extensibility:

| Extension | Method | Status |
|-----------|--------|--------|
| New image formats | Add to `process_file` match | Easy |
| New AI models | Ollama model swap | Easy |
| Custom prompts | Edit `config.json` | Easy |
| New file types | Implement `FileAnalyzer` trait | v2.0 |
| Custom post-processing | Plugin system | v2.0 |

## Contributing to the Roadmap

Have ideas? We welcome input:

1. Open a feature request issue
2. Discuss in existing roadmap issues
3. Submit implementation proposals
4. Vote on priorities with reactions

See [CONTRIBUTING.adoc](CONTRIBUTING.adoc) for guidelines.

## Version Support

| Version | Status | Support Until |
|---------|--------|---------------|
| 3.0.x | **Current** | Active development |
| 2.x | Maintenance | Security fixes only |
| 1.x | Legacy | Unsupported |
| 0.x | Legacy | Unsupported |

## Changelog

See [CHANGELOG.md](CHANGELOG.md) for detailed version history.

---

*Last updated: 2025-12-17*
