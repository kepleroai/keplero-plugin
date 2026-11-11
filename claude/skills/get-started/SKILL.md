---
name: get-started
description: Help a Keplero user get started after connecting the Keplero plugin - find their chatbots, pick the one to work on and show what they can ask.
---

# Get started with Keplero

The Keplero tools act for the signed-in Keplero user, only on the chatbots they own or belong to.

1. Call `list_chatbots`. If the user has none, explain that chatbots are created in the Keplero console (https://console.keplero.ai) and stop.
2. If there is more than one chatbot, use the favorite one (`isFavorite`) unless the user names another; tell the user which chatbot you are using.
3. Give a short overview of that chatbot with `get_chat_overview` for the last 7 days: conversations per channel and how many were handed to an operator.
4. Offer three things the user can ask next, picked from what this chatbot uses, for example:
   - "Show me the open conversations waiting for an operator."
   - "What appointments are booked for tomorrow?"
   - "Add a FAQ about our opening hours."
   - "Prepare a WhatsApp campaign for my contact list."

Before any change to the live agent, any message to a customer, any call or any campaign, show the user exactly what will happen and wait for their explicit yes. Purchases, plan changes, payment methods, passwords and two-factor authentication are managed only in the Keplero console.
