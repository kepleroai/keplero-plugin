![Keplero](assets/logo.png)

# Keplero

Keplero runs AI agents that answer customers on WhatsApp, web chat, email, Instagram, Messenger and phone. This plugin connects Claude, ChatGPT and Codex to your Keplero account, so you can manage your agents from the conversation:

- read and reply to conversations, take one over from the AI or hand it back, add labels, notes and reminders;
- see chat, voice, operator and campaign analytics over any period;
- manage contacts, contact lists and the lead pipeline;
- check calendars, book, move or cancel appointments;
- update the agent's knowledge base (FAQs, documents, websites) and its prompt;
- prepare, test and launch WhatsApp and phone campaigns.

## Requirements

A Keplero account (https://console.keplero.ai). The plugin reaches only the chatbots you own or belong to, with the permissions your team role grants.

## What the plugin contains

- **A remote MCP server**, `https://console.keplero.ai/mcp`, run by Keplero AI. It is the only service the plugin talks to. You sign in with your Keplero account through OAuth 2.1; the assistant receives a token limited to your account, which you can revoke from the Keplero console.
- **A skill**, `get-started`, that helps you find your chatbots and shows what you can ask.

The plugin runs nothing on your computer, installs no packages and reads no local files or environment variables.

## What data is sent

When you ask for something, the assistant sends Keplero the request for that tool (for example a chatbot id, a period, the text of a FAQ) and receives the data of your account needed to answer. Keplero does not receive your conversation with the assistant beyond what each tool call contains.

Changes to a live agent, messages to customers, calls and campaigns are shown to you first and wait for your confirmation. Purchases, plan changes, payment methods, passwords and two-factor authentication are managed only in the Keplero console.

## Privacy and terms

- Privacy policy: https://keplero.ai/privacy-policy
- Terms and conditions: https://keplero.ai/termini-e-condizioni
- Subprocessors: https://keplero.ai/subprocessors

## Support

support@keplero.ai · https://docs.keplero.ai
