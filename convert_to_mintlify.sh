#!/bin/bash

# Script de conversion des fichiers Markdown vers Mintlify
echo "🚀 Conversion des fichiers vers Mintlify..."

# Fonction pour ajouter les métadonnées Mintlify
add_mintlify_metadata() {
    local file=$1
    local title=$(basename "$file" .md | sed 's/_/ /g' | sed 's/\b\w/\U&/g')
    local description="Documentation pour $title"
    
    # Créer le contenu avec métadonnées
    cat > "docs/temp_$(basename "$file")" << EOF
---
title: '$title'
description: '$description'
---

$(cat "$file")
EOF
}

# Créer les dossiers nécessaires
mkdir -p docs/agents
mkdir -p docs/conversations
mkdir -p docs/leads
mkdir -p docs/connectors/{snippets,whatsapp}
mkdir -p docs/limova/{billing,files,users,seo,social-post,linkedin-automation,instagram,facebook,tools}
mkdir -p docs/robotappel/calls
mkdir -p docs/chat
mkdir -p docs/bot

# Convertir les fichiers Agents
echo "📁 Conversion des fichiers Agents..."
for file in Agent_*.md; do
    if [ -f "$file" ]; then
        add_mintlify_metadata "$file"
        mv "docs/temp_$(basename "$file")" "docs/agents/$(basename "$file" .md).mdx"
        echo "✅ Converti: $file"
    fi
done

# Convertir les fichiers Conversations
echo "📁 Conversion des fichiers Conversations..."
for file in Agent_Conversation_*.md; do
    if [ -f "$file" ]; then
        add_mintlify_metadata "$file"
        mv "docs/temp_$(basename "$file")" "docs/conversations/$(basename "$file" .md).mdx"
        echo "✅ Converti: $file"
    fi
done

# Convertir les fichiers Leads
echo "📁 Conversion des fichiers Leads..."
for file in Agent_Lead_*.md; do
    if [ -f "$file" ]; then
        add_mintlify_metadata "$file"
        mv "docs/temp_$(basename "$file")" "docs/leads/$(basename "$file" .md).mdx"
        echo "✅ Converti: $file"
    fi
done

# Convertir les fichiers Connecteurs
echo "📁 Conversion des fichiers Connecteurs..."
for file in Agent_Connector_*.md; do
    if [ -f "$file" ]; then
        add_mintlify_metadata "$file"
        if [[ "$file" == *"Snippet"* ]]; then
            mv "docs/temp_$(basename "$file")" "docs/connectors/snippets/$(basename "$file" .md).mdx"
        elif [[ "$file" == *"WhatsApp"* ]]; then
            mv "docs/temp_$(basename "$file")" "docs/connectors/whatsapp/$(basename "$file" .md).mdx"
        else
            mv "docs/temp_$(basename "$file")" "docs/connectors/$(basename "$file" .md).mdx"
        fi
        echo "✅ Converti: $file"
    fi
done

# Convertir les fichiers LIMOVA Billing
echo "📁 Conversion des fichiers LIMOVA Billing..."
for file in LIMOVA_Billing_*.md; do
    if [ -f "$file" ]; then
        add_mintlify_metadata "$file"
        mv "docs/temp_$(basename "$file")" "docs/limova/billing/$(basename "$file" .md).mdx"
        echo "✅ Converti: $file"
    fi
done

# Convertir les fichiers LIMOVA Files
echo "📁 Conversion des fichiers LIMOVA Files..."
for file in LIMOVA_FileManagement_*.md; do
    if [ -f "$file" ]; then
        add_mintlify_metadata "$file"
        mv "docs/temp_$(basename "$file")" "docs/limova/files/$(basename "$file" .md).mdx"
        echo "✅ Converti: $file"
    fi
done

# Convertir les fichiers LIMOVA Users
echo "📁 Conversion des fichiers LIMOVA Users..."
for file in LIMOVA_Users_*.md; do
    if [ -f "$file" ]; then
        add_mintlify_metadata "$file"
        mv "docs/temp_$(basename "$file")" "docs/limova/users/$(basename "$file" .md).mdx"
        echo "✅ Converti: $file"
    fi
done

# Convertir les fichiers LIMOVA SEO
echo "📁 Conversion des fichiers LIMOVA SEO..."
for file in LIMOVA_SEO_*.md; do
    if [ -f "$file" ]; then
        add_mintlify_metadata "$file"
        mv "docs/temp_$(basename "$file")" "docs/limova/seo/$(basename "$file" .md).mdx"
        echo "✅ Converti: $file"
    fi
done

# Convertir les fichiers LIMOVA Social Post
echo "📁 Conversion des fichiers LIMOVA Social Post..."
for file in LIMOVA_SocialPost_*.md; do
    if [ -f "$file" ]; then
        add_mintlify_metadata "$file"
        mv "docs/temp_$(basename "$file")" "docs/limova/social-post/$(basename "$file" .md).mdx"
        echo "✅ Converti: $file"
    fi
done

# Convertir les fichiers LIMOVA LinkedIn Automation
echo "📁 Conversion des fichiers LIMOVA LinkedIn Automation..."
for file in LIMOVA_LinkedInAutomation_*.md; do
    if [ -f "$file" ]; then
        add_mintlify_metadata "$file"
        mv "docs/temp_$(basename "$file")" "docs/limova/linkedin-automation/$(basename "$file" .md).mdx"
        echo "✅ Converti: $file"
    fi
done

# Convertir les fichiers LIMOVA Instagram
echo "📁 Conversion des fichiers LIMOVA Instagram..."
for file in LIMOVA_Instagram_*.md; do
    if [ -f "$file" ]; then
        add_mintlify_metadata "$file"
        mv "docs/temp_$(basename "$file")" "docs/limova/instagram/$(basename "$file" .md).mdx"
        echo "✅ Converti: $file"
    fi
done

# Convertir les fichiers LIMOVA Facebook
echo "📁 Conversion des fichiers LIMOVA Facebook..."
for file in LIMOVA_Facebook_*.md; do
    if [ -f "$file" ]; then
        add_mintlify_metadata "$file"
        mv "docs/temp_$(basename "$file")" "docs/limova/facebook/$(basename "$file" .md).mdx"
        echo "✅ Converti: $file"
    fi
done

# Convertir les fichiers LIMOVA Tools
echo "📁 Conversion des fichiers LIMOVA Tools..."
for file in LIMOVA_{Browser,ImageGeneration_*,SpeechToText_*,PdfManipulator,SlidesGeneration_*}.md; do
    if [ -f "$file" ]; then
        add_mintlify_metadata "$file"
        mv "docs/temp_$(basename "$file")" "docs/limova/tools/$(basename "$file" .md).mdx"
        echo "✅ Converti: $file"
    fi
done

# Convertir les fichiers RobotAppel
echo "📁 Conversion des fichiers RobotAppel..."
for file in RobotAppel_*.md; do
    if [ -f "$file" ]; then
        add_mintlify_metadata "$file"
        if [[ "$file" == *"Call_"* ]]; then
            mv "docs/temp_$(basename "$file")" "docs/robotappel/calls/$(basename "$file" .md).mdx"
        else
            mv "docs/temp_$(basename "$file")" "docs/robotappel/$(basename "$file" .md).mdx"
        fi
        echo "✅ Converti: $file"
    fi
done

# Convertir les fichiers Chat
echo "📁 Conversion des fichiers Chat..."
for file in Chat_*.md; do
    if [ -f "$file" ]; then
        add_mintlify_metadata "$file"
        mv "docs/temp_$(basename "$file")" "docs/chat/$(basename "$file" .md).mdx"
        echo "✅ Converti: $file"
    fi
done

# Convertir les fichiers Bot
echo "📁 Conversion des fichiers Bot..."
for file in Bot_*.md; do
    if [ -f "$file" ]; then
        add_mintlify_metadata "$file"
        mv "docs/temp_$(basename "$file")" "docs/bot/$(basename "$file" .md).mdx"
        echo "✅ Converti: $file"
    fi
done

echo "🎉 Conversion terminée !"
echo "📊 Statistiques :"
echo "   - Fichiers convertis : $(find docs -name "*.mdx" | wc -l)"
echo "   - Structure créée dans le dossier 'docs/'" 