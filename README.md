# Social Growth AI

[](#social-growth-ai)

> Autonomous AI Agent for Social Media Growth - A multi-agent system that automates content creation, audience engagement, and performance analytics for social media marketing.

[![Python](https://img.shields.io/badge/Python-3.11+-blue.svg)](https://python.org)
[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Stars](https://img.shields.io/github/stars/Sarkar009765/MARK?style=social)](https://github.com/Sarkar009765/MARK/stargazers)
[![Forks](https://img.shields.io/github/forks/Sarkar009765/MARK?style=social)](https://github.com/Sarkar009765/MARK/network)

---

## What Is It?

[](#what-is-it)

**Social Growth AI** is an autonomous multi-agent system designed to automate your entire social media presence. Built with cutting-edge AI architecture, it combines 5 specialized agents that work collaboratively to:

- 🎯 **Analyze Trends** - Discover what's trending in your niche
- 📝 **Generate Content** - Create viral captions, hashtags, and image prompts
- 💪 **Engage Audience** - Auto-like, comment, follow, and send DMs
- 💬 **Reply Smartly** - AI-powered responses to comments and DMs
- 📊 **Optimize Performance** - Track metrics and self-improve

### Built With

- **OpenAgents Architecture** - Modular, extensible agent system
- **Hermes-style Function Calling** - Structured AI outputs
- **Paperclip Simplicity** - Lightweight, safety-first design
- **Kimi k2.6 (Moonshot AI)** - AI model powering the system

---

## Key Features

[](#key-features)

| Feature | Description |
|---------|-------------|
| 🤖 **5 AI Agents** | Strategy, Content, Growth, Reply, Analytics |
| 📱 **Multi-Platform** | Instagram, Facebook, Twitter/X support |
| 🎯 **Auto Content** | AI generates captions, hashtags, image prompts |
| 💪 **Smart Engagement** | Auto-like, comment, follow, DM |
| 💬 **AI Replies** | Context-aware comment/DM responses |
| 📊 **Analytics** | Performance tracking & self-optimization |
| 📅 **Scheduler** | Automated posting schedule |
| 🌐 **Web Dashboard** | Streamlit-based UI |
| 🔌 **REST API** | FastAPI endpoints |
| 🐳 **Docker** | Ready to deploy |
| 🛡️ **Safety First** | Built-in rate limits & spam protection |
| 🔄 **Mock Mode** | Test without API keys |

---

## How It Works

[](#how-it-works)

### Agent Pipeline

```
User Request / Scheduled Task
           │
           ▼
┌─────────────────────────┐
│   ORCHESTRATOR          │  ← Central brain that coordinates
│   (Main Controller)     │    all agents and manages context
└───────────┬─────────────┘
            │
     ┌──────┼──────┐
     ▼      ▼      ▼
┌─────────┐│     │┌─────────┐
│Strategy ││     ││Analytics│
│ Agent   ││     ││ Agent   │
└────┬────┘│     │└────┬────┘
     │     │     │     │
     ▼     │     │     ▼
┌─────────┐│     │┌─────────────────┐
│ Content ││     ││ Performance     │
│ Agent   ││     ││ Tracking        │
└────┬────┘│     │└────────┬────────┘
     │     │     │         │
     ▼     │     │         ▼
┌─────────┐▼     ▼┌─────────────────┐
│ Growth  ││    ││ Optimization    │
│ Agent   ││    ││ Recommendations │
└────┬────┘│     │└─────────────────┘
     │     │     │
     ▼     ▼     ▼
┌─────────────────────────────────┐
│      PLATFORM HANDLERS          │
│  Instagram │ Facebook │ Twitter │
└─────────────────────────────────┘
```

### Agent Details

#### 1. Strategy Agent
- Analyzes trending topics in your niche
- Monitors competitor content
- Plans content themes and posting schedule
- Determines optimal posting times

#### 2. Content Agent
- Generates viral captions with hooks
- Creates optimized hashtag sets
- Writes image/video prompts for AI generators
- Creates multiple content variations for A/B testing

#### 3. Growth Agent
- Auto-engages with target audience
- Smart commenting (non-spammy)
- Follow/unfollow strategy
- Welcome DM automation

#### 4. Reply Agent
- AI-powered comment replies
- Sentiment analysis (positive/negative/neutral)
- FAQ auto-responses
- Human escalation for complex issues

#### 5. Analytics Agent
- Tracks engagement metrics
- Identifies top-performing content
- Suggests optimizations
- Generates weekly reports

---

## Installation

[](#installation)

```bash
# Clone the project
git clone https://github.com/Sarkar009765/MARK.git
cd MARK

# Install dependencies
pip install -r requirements.txt

# Copy environment file
cp .env.example .env
```

---

## Quick Start

[](#quick-start)

### Test Without API Key (Mock Mode)

The system works out of the box without any API keys for testing:

```bash
# Check system status
python main.py status

# Run full AI cycle
python main.py full

# Generate content only
python main.py content --niche fitness

# Run engagement only
python main.py engage

# Quick post generation
python main.py quick --prompt "motivation tips"
```

### Run with Real AI

Add your OpenAI API key in `.env`:

```env
OPENAI_API_KEY=sk-your-key-here
AI_PROVIDER=openai
```

Then run:

```bash
python main.py full
```

---

## Web Dashboard

[](#web-dashboard)

Launch the visual dashboard:

```bash
streamlit run dashboard.py
```

Then open: http://localhost:8501

Features:
- Real-time agent status
- Content preview & approval
- Performance metrics
- Schedule management

---

## REST API

[](#rest-api)

Start the API server:

```bash
uvicorn server:app --reload
```

Then open: http://localhost:8000/docs

### API Endpoints

| Endpoint | Method | Description |
|----------|--------|-------------|
| `/status` | GET | System status |
| `/run-cycle` | POST | Run AI cycle |
| `/create-content` | POST | Generate content |
| `/publish` | POST | Publish post |
| `/schedule` | POST | Schedule post |
| `/platforms` | GET | Platform status |
| `/quick-post` | POST | Quick AI post |

---

## Configuration

[](#configuration)

### Environment Variables

Edit `.env` file:

```env
# AI Provider (openai, anthropic, ollama)
AI_PROVIDER=openai
OPENAI_API_KEY=your_key_here
ANTHROPIC_API_KEY=your_key_here

# Database
DATABASE_URL=sqlite:///social_growth.db

# Redis (for task queue)
REDIS_URL=redis://localhost:6379/0

# Default Niche
DEFAULT_NICHE=motivation

# Safety Limits
MAX_POSTS_PER_DAY=3
SAFETY_MODE=strict
ENGAGEMENT_ENABLED=true
AUTO_APPROVE_POSTS=false
```

### Platform Configuration

#### Instagram
```env
INSTAGRAM_USERNAME=your_username
INSTAGRAM_PASSWORD=your_password
```

#### Facebook
```env
FACEBOOK_ACCESS_TOKEN=your_token
FACEBOOK_PAGE_ID=your_page_id
```

#### Twitter/X
```env
TWITTER_API_KEY=xxx
TWITTER_API_SECRET=xxx
TWITTER_ACCESS_TOKEN=xxx
TWITTER_ACCESS_SECRET=xxx
```

---

## Usage Examples

[](#usage-examples)

### CLI Commands

```bash
# Full cycle - all agents run
python main.py full

# Content generation
python main.py content --niche fitness
python main.py content --niche tech
python main.py content --niche business

# Engagement
python main.py engage

# Analytics
python main.py analytics

# Schedule posts
python main.py schedule --times 08:00 12:30 19:00

# Test platform connection
python main.py test instagram

# Web dashboard
python main.py web --port 8501
```

### Programmatic Usage

```python
from agents.orchestrator import Orchestrator
from platforms.manager import PlatformManager

# Run AI cycle
orchestrator = Orchestrator(niche="motivation", platforms=["instagram"])
result = await orchestrator.run_cycle(mode="full")

# Publish to platforms
manager = PlatformManager(platforms=["instagram", "twitter"])
result = await manager.publish_everywhere({"caption": "Your post", "hashtags": ["#ai"]})
```

---

## Project Structure

[](#project-structure)

```
MARK/
├── main.py                    # CLI entry point
├── server.py                  # FastAPI REST API
├── dashboard.py              # Streamlit Web UI
├── db_init.py                # Database initialization
├── requirements.txt           # Python dependencies
├── Dockerfile                 # Docker container
├── docker-compose.yml         # Docker Compose
├── .env.example              # Environment template
├── .gitignore                 # Git ignore rules
│
├── agents/                    # AI Agents
│   ├── __init__.py
│   ├── base_agent.py         # Base class for all agents
│   ├── orchestrator.py       # Central coordination brain
│   ├── strategy_agent.py     # Trend analysis & planning
│   ├── content_agent.py      # Content generation
│   ├── growth_agent.py       # Audience growth & engagement
│   ├── reply_agent.py        # AI-powered replies
│   └── analytics_agent.py    # Performance tracking
│
├── platforms/                 # Platform Integrations
│   ├── __init__.py
│   ├── base_handler.py       # Abstract platform handler
│   ├── instagram.py          # Instagram (simulated)
│   ├── instagram_api.py      # Instagram (real API)
│   ├── facebook.py           # Facebook Graph API
│   ├── twitter.py            # Twitter API v2
│   └── manager.py            # Unified platform manager
│
├── core/                     # Core System
│   ├── __init__.py
│   ├── settings.py           # Configuration management
│   └── scheduler.py          # Post scheduling
│
├── database/                 # Database Layer
│   ├── __init__.py
│   └── models.py             # SQLAlchemy models
│
├── config/                   # Configuration Files
│   ├── __init__.py
│   ├── accounts.yaml         # Account configurations
│   └── prompts/              # AI prompt templates
│       ├── strategy.md
│       └── content.md
│
└── utils/                    # Utilities
    ├── __init__.py
    └── ai_client.py          # OpenAI/Anthropic/Ollama wrapper
```

---

## Demo Results

[](#demo-results)

```
==================================================
Cycle Results:
==================================================
  strategy: success
    Trends found: 2
    Themes: 3
  content: success
    Posts created: 3
  growth: success
    Engagement: 3
  reply: success
    Processed: 3
  analytics: success
    Engagement rate: 5.2%
==================================================
Cycle Complete!
==================================================
```

---

## Docker

[](#docker)

### Quick Docker Run

```bash
# Edit .env with your keys first
cp .env.example .env

# Build and start
docker-compose up -d

# View logs
docker-compose logs -f

# Stop
docker-compose down
```

### Manual Docker Build

```bash
docker build -t social-growth-ai .
docker run -p 8501:8501 social-growth-ai
```

---

## Safety & Ethics

[](#safety-ethics)

- ✅ Built-in rate limiting to prevent account restrictions
- ✅ Spam detection and prevention
- ✅ Content filtering for safety
- ✅ Manual approval option for all posts
- ✅ Transparency: can disclose "AI-managed" if required
- ⚠️ For legitimate growth only - not for spam

---

## Architecture Notes

[](#architecture-notes)

### Design Principles

1. **Modularity** - Each agent is independent and replaceable
2. **Extensibility** - Easy to add new platforms and features
3. **Safety First** - All actions have rate limits and checks
4. **Self-Optimizing** - Analytics agent learns from performance
5. **Human-in-the-loop** - Optional approval for important actions

### Technology Stack

- **Language**: Python 3.11+
- **AI**: OpenAI GPT-4, Anthropic Claude, or Ollama
- **Web**: FastAPI, Streamlit
- **Database**: SQLite (dev), PostgreSQL (prod)
- **Task Queue**: Celery + Redis

---

## Contributing

[](#contributing)

We welcome contributions! See [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

```bash
# Fork the repo
# Create a feature branch
# Make your changes
# Submit a PR
```

---

## License

[](#license)

[MIT License](LICENSE) - Feel free to use this for your projects!

---

## Thanks

[](#thanks)

- **Kimi k2.6** - AI model powering this project (Moonshot AI)
- **OpenAgents** - Architecture inspiration
- **DeepSeek-TUI** - README style reference
- **All contributors** - For making this project better

---

## Star History

[](#star-history)

[![Star History Chart](https://api.star-history.com/svg?repos=Sarkar009765/MARK&type=date)](https://star-history.com/#Sarkar009765/MARK)

---

## Resources

- 📖 [Full Documentation](#) - Coming soon
- 🐛 [Issue Tracker](https://github.com/Sarkar009765/MARK/issues)
- 💬 [Discussions](https://github.com/Sarkar009765/MARK/discussions)
- 📦 [Releases](https://github.com/Sarkar009765/MARK/releases)

---

**Built with ❤️ using Kimi k2.6**

*Note: This project is not affiliated with any social media platform.*