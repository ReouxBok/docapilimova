#!/bin/bash

echo "🔄 Restructuration de la documentation selon le format Mintlify..."

# Déplacer les fichiers principaux
echo "📁 Déplacement des fichiers principaux..."
cp docs/introduction.mdx api-reference/
cp docs/quickstart.mdx api-reference/
cp docs/authentication.mdx api-reference/

# Agents
echo "🤖 Restructuration des agents..."
cp docs/agents/Agent_Create.mdx api-reference/agents/create.mdx
cp docs/agents/Agent_GetAll.mdx api-reference/agents/get-all.mdx
cp docs/agents/Agent_Update.mdx api-reference/agents/update.mdx
cp docs/agents/Agent_Delete.mdx api-reference/agents/delete.mdx
cp docs/agents/Agent_Desactivate.mdx api-reference/agents/desactivate.mdx
cp docs/agents/Agent_AddFiles.mdx api-reference/agents/add-files.mdx
cp docs/agents/Agent_RemoveFiles.mdx api-reference/agents/remove-files.mdx

# Conversations
echo "💬 Restructuration des conversations..."
cp docs/conversations/Agent_Conversation_GetByAgent.mdx api-reference/conversations/get-by-agent.mdx
cp docs/conversations/Agent_Conversation_Update.mdx api-reference/conversations/update.mdx
cp docs/conversations/Agent_Conversation_Delete.mdx api-reference/conversations/delete.mdx
cp docs/conversations/Agent_Conversation_ExportByAgent.mdx api-reference/conversations/export-by-agent.mdx
cp docs/conversations/Agent_Conversation_ExportByIds.mdx api-reference/conversations/export-by-ids.mdx

# Leads
echo "🎯 Restructuration des leads..."
cp docs/leads/Agent_Lead_Create.mdx api-reference/leads/create.mdx
cp docs/leads/Agent_Lead_GetAll.mdx api-reference/leads/get-all.mdx
cp docs/leads/Agent_Lead_GetById.mdx api-reference/leads/get-by-id.mdx
cp docs/leads/Agent_Lead_GetByConversationId.mdx api-reference/leads/get-by-conversation.mdx
cp docs/leads/Agent_Lead_Update.mdx api-reference/leads/update.mdx
cp docs/leads/Agent_Lead_UpdateStatus.mdx api-reference/leads/update-status.mdx
cp docs/leads/Agent_Lead_Delete.mdx api-reference/leads/delete.mdx

# Connecteurs
echo "🔗 Restructuration des connecteurs..."
cp docs/connectors/snippets/Agent_Connector_Snippet_Create.mdx api-reference/connectors/snippet-create.mdx
cp docs/connectors/snippets/Agent_Connector_Snippet_GetAll.mdx api-reference/connectors/snippet-get-all.mdx
cp docs/connectors/snippets/Agent_Connector_Snippet_GetByAgent.mdx api-reference/connectors/snippet-get-by-agent.mdx
cp docs/connectors/snippets/Agent_Connector_Snippet_Update.mdx api-reference/connectors/snippet-update.mdx
cp docs/connectors/snippets/Agent_Connector_Snippet_Delete.mdx api-reference/connectors/snippet-delete.mdx
cp docs/connectors/snippets/Agent_Connector_Snippet_GetHeads.mdx api-reference/connectors/snippet-get-heads.mdx
cp docs/connectors/snippets/Agent_Connector_Snippet_UploadHeads.mdx api-reference/connectors/snippet-upload-heads.mdx
cp docs/connectors/whatsapp/Agent_Connector_WhatsApp_GetFirstMessage.mdx api-reference/connectors/whatsapp-get-first-message.mdx
cp docs/connectors/whatsapp/Agent_Connector_WhatsApp_SetFirstMessage.mdx api-reference/connectors/whatsapp-set-first-message.mdx

# LIMOVA - Billing
echo "💰 Restructuration LIMOVA Billing..."
cp docs/limova/billing/LIMOVA_Billing_GetBills.mdx api-reference/limova/billing/get-bills.mdx
cp docs/limova/billing/LIMOVA_Billing_GetPaymentMethods.mdx api-reference/limova/billing/get-payment-methods.mdx
cp docs/limova/billing/LIMOVA_Billing_GetAllActiveUsers.mdx api-reference/limova/billing/get-all-active-users.mdx
cp docs/limova/billing/LIMOVA_Billing_GetBalance.mdx api-reference/limova/billing/get-balance.mdx
cp docs/limova/billing/LIMOVA_Billing_AddBalanceMoney.mdx api-reference/limova/billing/add-balance-money.mdx
cp docs/limova/billing/LIMOVA_Billing_UpsertAutoRefill.mdx api-reference/limova/billing/upsert-auto-refill.mdx
cp docs/limova/billing/LIMOVA_Billing_GetTokenBalance.mdx api-reference/limova/billing/get-token-balance.mdx
cp docs/limova/billing/LIMOVA_Billing_BuyTokenBalance.mdx api-reference/limova/billing/buy-token-balance.mdx

# LIMOVA - Files
echo "📁 Restructuration LIMOVA Files..."
cp docs/limova/files/LIMOVA_FileManagement_AddClientFile.mdx api-reference/limova/files/add-client-file.mdx
cp docs/limova/files/LIMOVA_FileManagement_DeleteClientFile.mdx api-reference/limova/files/delete-client-file.mdx

# LIMOVA - Users
echo "👥 Restructuration LIMOVA Users..."
cp docs/limova/users/LIMOVA_Users_SearchByEmail.mdx api-reference/limova/users/search-by-email.mdx

# LIMOVA - SEO
echo "🔍 Restructuration LIMOVA SEO..."
cp docs/limova/seo/LIMOVA_SEO_CreateJob.mdx api-reference/limova/seo/create-job.mdx
cp docs/limova/seo/LIMOVA_SEO_GetJobs.mdx api-reference/limova/seo/get-jobs.mdx
cp docs/limova/seo/LIMOVA_SEO_GetJobById.mdx api-reference/limova/seo/get-job-by-id.mdx
cp docs/limova/seo/LIMOVA_SEO_UpdateJob.mdx api-reference/limova/seo/update-job.mdx
cp docs/limova/seo/LIMOVA_SEO_DeleteJob.mdx api-reference/limova/seo/delete-job.mdx
cp docs/limova/seo/LIMOVA_SEO_GenerateArticle.mdx api-reference/limova/seo/generate-article.mdx
cp docs/limova/seo/LIMOVA_SEO_GetArticles.mdx api-reference/limova/seo/get-articles.mdx
cp docs/limova/seo/LIMOVA_SEO_GetArticleById.mdx api-reference/limova/seo/get-article-by-id.mdx
cp docs/limova/seo/LIMOVA_SEO_DeleteArticle.mdx api-reference/limova/seo/delete-article.mdx
cp docs/limova/seo/LIMOVA_SEO_CreatePlatform.mdx api-reference/limova/seo/create-platform.mdx
cp docs/limova/seo/LIMOVA_SEO_GetPlatforms.mdx api-reference/limova/seo/get-platforms.mdx
cp docs/limova/seo/LIMOVA_SEO_UpdatePlatform.mdx api-reference/limova/seo/update-platform.mdx
cp docs/limova/seo/LIMOVA_SEO_DeletePlatform.mdx api-reference/limova/seo/delete-platform.mdx

# LIMOVA - Social Post
echo "📱 Restructuration LIMOVA Social Post..."
cp docs/limova/social-post/LIMOVA_SocialPost_CreatePost.mdx api-reference/limova/social-post/create-post.mdx
cp docs/limova/social-post/LIMOVA_SocialPost_GetPosts.mdx api-reference/limova/social-post/get-posts.mdx
cp docs/limova/social-post/LIMOVA_SocialPost_GetPostById.mdx api-reference/limova/social-post/get-post-by-id.mdx
cp docs/limova/social-post/LIMOVA_SocialPost_UpdatePost.mdx api-reference/limova/social-post/update-post.mdx
cp docs/limova/social-post/LIMOVA_SocialPost_DeletePost.mdx api-reference/limova/social-post/delete-post.mdx
cp docs/limova/social-post/LIMOVA_SocialPost_ShareNow.mdx api-reference/limova/social-post/share-now.mdx

# LIMOVA - LinkedIn Automation
echo "🔗 Restructuration LIMOVA LinkedIn Automation..."
cp docs/limova/linkedin-automation/LIMOVA_LinkedInAutomation_SearchProfiles.mdx api-reference/limova/linkedin-automation/search-profiles.mdx
cp docs/limova/linkedin-automation/LIMOVA_LinkedInAutomation_SearchCompanies.mdx api-reference/limova/linkedin-automation/search-companies.mdx
cp docs/limova/linkedin-automation/LIMOVA_LinkedInAutomation_GetProfileInfo.mdx api-reference/limova/linkedin-automation/get-profile-info.mdx
cp docs/limova/linkedin-automation/LIMOVA_LinkedInAutomation_GetCompanyInfo.mdx api-reference/limova/linkedin-automation/get-company-info.mdx
cp docs/limova/linkedin-automation/LIMOVA_LinkedInAutomation_SendConnectionRequest.mdx api-reference/limova/linkedin-automation/send-connection-request.mdx
cp docs/limova/linkedin-automation/LIMOVA_LinkedInAutomation_SendMessage.mdx api-reference/limova/linkedin-automation/send-message.mdx
cp docs/limova/linkedin-automation/LIMOVA_LinkedInAutomation_LikePost.mdx api-reference/limova/linkedin-automation/like-post.mdx
cp docs/limova/linkedin-automation/LIMOVA_LinkedInAutomation_CommentOnPost.mdx api-reference/limova/linkedin-automation/comment-on-post.mdx

# LIMOVA - Instagram
echo "📸 Restructuration LIMOVA Instagram..."
cp docs/limova/instagram/LIMOVA_Instagram_CreateJob.mdx api-reference/limova/instagram/create-job.mdx
cp docs/limova/instagram/LIMOVA_Instagram_GetJobs.mdx api-reference/limova/instagram/get-jobs.mdx
cp docs/limova/instagram/LIMOVA_Instagram_GetJobById.mdx api-reference/limova/instagram/get-job-by-id.mdx
cp docs/limova/instagram/LIMOVA_Instagram_UpdateJob.mdx api-reference/limova/instagram/update-job.mdx
cp docs/limova/instagram/LIMOVA_Instagram_DeleteJob.mdx api-reference/limova/instagram/delete-job.mdx
cp docs/limova/instagram/LIMOVA_Instagram_Share.mdx api-reference/limova/instagram/share.mdx

# LIMOVA - Facebook
echo "📘 Restructuration LIMOVA Facebook..."
cp docs/limova/facebook/LIMOVA_Facebook_CreateJob.mdx api-reference/limova/facebook/create-job.mdx
cp docs/limova/facebook/LIMOVA_Facebook_GetJobs.mdx api-reference/limova/facebook/get-jobs.mdx
cp docs/limova/facebook/LIMOVA_Facebook_GetJobById.mdx api-reference/limova/facebook/get-job-by-id.mdx
cp docs/limova/facebook/LIMOVA_Facebook_UpdateJob.mdx api-reference/limova/facebook/update-job.mdx
cp docs/limova/facebook/LIMOVA_Facebook_DeleteJob.mdx api-reference/limova/facebook/delete-job.mdx
cp docs/limova/facebook/LIMOVA_Facebook_Share.mdx api-reference/limova/facebook/share.mdx

# LIMOVA - Tools
echo "🛠️ Restructuration LIMOVA Tools..."
cp docs/limova/tools/LIMOVA_Browser.mdx api-reference/limova/tools/browser.mdx
cp docs/limova/tools/LIMOVA_ImageGeneration_GetGenerationById.mdx api-reference/limova/tools/image-generation.mdx
cp docs/limova/tools/LIMOVA_SpeechToText_TranscribeAudio.mdx api-reference/limova/tools/speech-to-text.mdx
cp docs/limova/tools/LIMOVA_PdfManipulator.mdx api-reference/limova/tools/pdf-manipulator.mdx
cp docs/limova/tools/LIMOVA_SlidesGeneration_GenerateSlides.mdx api-reference/limova/tools/slides-generation.mdx

# RobotAppel
echo "📞 Restructuration RobotAppel..."
cp docs/robotappel/calls/RobotAppel_Call_Create.mdx api-reference/robotappel/create.mdx
cp docs/robotappel/calls/RobotAppel_Call_GetAll.mdx api-reference/robotappel/get-all.mdx
cp docs/robotappel/calls/RobotAppel_Call_GetById.mdx api-reference/robotappel/get-by-id.mdx
cp docs/robotappel/calls/RobotAppel_Call_Update.mdx api-reference/robotappel/update.mdx
cp docs/robotappel/calls/RobotAppel_Call_Delete.mdx api-reference/robotappel/delete.mdx
cp docs/robotappel/calls/RobotAppel_Call_Start.mdx api-reference/robotappel/start.mdx
cp docs/robotappel/calls/RobotAppel_Call_Stop.mdx api-reference/robotappel/stop.mdx

# Chat
echo "💬 Restructuration Chat..."
cp docs/chat/Chat_GetConversationsIds.mdx api-reference/chat/get-conversations-ids.mdx

# Bot
echo "🤖 Restructuration Bot..."
cp docs/bot/Bot_SetAgent.mdx api-reference/bot/set-agent.mdx

echo "✅ Restructuration terminée !" 