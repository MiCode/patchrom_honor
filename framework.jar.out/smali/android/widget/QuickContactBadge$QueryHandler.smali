.class Landroid/widget/QuickContactBadge$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "QuickContactBadge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QuickContactBadge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/QuickContactBadge;


# direct methods
.method public constructor <init>(Landroid/widget/QuickContactBadge;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 248
    iput-object p1, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    .line 249
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 250
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 15
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 254
    const/4 v9, 0x0

    .line 255
    .local v9, lookupUri:Landroid/net/Uri;
    const/4 v5, 0x0

    .line 256
    .local v5, createUri:Landroid/net/Uri;
    const/4 v10, 0x0

    .line 259
    .local v10, trigger:Z
    packed-switch p1, :pswitch_data_0

    .line 296
    .end local p2
    :cond_0
    :goto_0
    if-eqz p3, :cond_1

    .line 297
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 301
    :cond_1
    iget-object v11, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    #setter for: Landroid/widget/QuickContactBadge;->mContactUri:Landroid/net/Uri;
    invoke-static {v11, v9}, Landroid/widget/QuickContactBadge;->access$002(Landroid/widget/QuickContactBadge;Landroid/net/Uri;)Landroid/net/Uri;

    .line 302
    iget-object v11, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    #calls: Landroid/widget/QuickContactBadge;->onContactUriChanged()V
    invoke-static {v11}, Landroid/widget/QuickContactBadge;->access$100(Landroid/widget/QuickContactBadge;)V

    .line 304
    if-eqz v10, :cond_4

    if-eqz v9, :cond_4

    .line 306
    iget-object v11, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v11}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v11

    iget-object v12, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    const/4 v13, 0x3

    iget-object v14, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    iget-object v14, v14, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    invoke-static {v11, v12, v9, v13, v14}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V

    .line 313
    :cond_2
    :goto_1
    return-void

    .line 261
    .restart local p2
    :pswitch_0
    const/4 v10, 0x1

    .line 262
    :try_start_0
    const-string/jumbo v12, "tel"

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    const/4 v13, 0x0

    invoke-static {v12, v11, v13}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 266
    :pswitch_1
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 268
    new-instance v2, Landroid/telephony/CallerInfoHW;

    invoke-direct {v2}, Landroid/telephony/CallerInfoHW;-><init>()V

    .line 269
    .local v2, callerInfoHW:Landroid/telephony/CallerInfoHW;
    check-cast p2, Ljava/lang/String;

    .end local p2
    const-string/jumbo v11, "number"

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1, v11}, Landroid/telephony/CallerInfoHW;->getCallerIndex(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 271
    .local v6, fixedIndex:I
    const/4 v11, -0x1

    if-eq v6, v11, :cond_0

    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 272
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 273
    .local v3, contactId:J
    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 274
    .local v8, lookupKey:Ljava/lang/String;
    invoke-static {v3, v4, v8}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    goto :goto_0

    .line 282
    .end local v2           #callerInfoHW:Landroid/telephony/CallerInfoHW;
    .end local v3           #contactId:J
    .end local v6           #fixedIndex:I
    .end local v8           #lookupKey:Ljava/lang/String;
    .restart local p2
    :pswitch_2
    const/4 v10, 0x1

    .line 283
    const-string/jumbo v11, "mailto"

    check-cast p2, Ljava/lang/String;

    .end local p2
    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-static {v11, v0, v12}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 287
    :pswitch_3
    if-eqz p3, :cond_0

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 288
    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 289
    .restart local v3       #contactId:J
    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 290
    .restart local v8       #lookupKey:Ljava/lang/String;
    invoke-static {v3, v4, v8}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    goto/16 :goto_0

    .line 296
    .end local v3           #contactId:J
    .end local v8           #lookupKey:Ljava/lang/String;
    :catchall_0
    move-exception v11

    if-eqz p3, :cond_3

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v11

    :cond_4
    if-eqz v5, :cond_2

    iget-object v6, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    invoke-virtual {v6}, Landroid/widget/QuickContactBadge;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    iget-object v8, p0, Landroid/widget/QuickContactBadge$QueryHandler;->this$0:Landroid/widget/QuickContactBadge;

    iget-object v8, v8, Landroid/widget/QuickContactBadge;->mExcludeMimes:[Ljava/lang/String;

    const/16 v9, 0x3
    
    invoke-static {v6, v7, v5, v9, v8}, Landroid/provider/ContactsContract$QuickContact;->showQuickContact(Landroid/content/Context;Landroid/view/View;Landroid/net/Uri;I[Ljava/lang/String;)V
    goto/16 :goto_1

    .line 259
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
