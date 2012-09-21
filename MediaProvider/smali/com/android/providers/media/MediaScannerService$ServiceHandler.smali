.class final Lcom/android/providers/media/MediaScannerService$ServiceHandler;
.super Landroid/os/Handler;
.source "MediaScannerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaScannerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaScannerService;


# direct methods
.method private constructor <init>(Lcom/android/providers/media/MediaScannerService;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/media/MediaScannerService;Lcom/android/providers/media/MediaScannerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/android/providers/media/MediaScannerService$ServiceHandler;-><init>(Lcom/android/providers/media/MediaScannerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .parameter "msg"

    .prologue
    .line 313
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/Bundle;

    .line 314
    .local v2, arguments:Landroid/os/Bundle;
    const-string v14, "filepath"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 317
    .local v6, filePath:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 318
    :try_start_0
    const-string v14, "listener"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getIBinder(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 319
    .local v3, binder:Landroid/os/IBinder;
    if-nez v3, :cond_1

    const/4 v9, 0x0

    .line 321
    .local v9, listener:Landroid/media/IMediaScannerListener;
    :goto_0
    const/4 v11, 0x0

    .line 323
    .local v11, uri:Landroid/net/Uri;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    const-string v15, "mimetype"

    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    #calls: Lcom/android/providers/media/MediaScannerService;->scanFile(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    invoke-static {v14, v6, v15}, Lcom/android/providers/media/MediaScannerService;->access$100(Lcom/android/providers/media/MediaScannerService;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v11

    .line 327
    :goto_1
    if-eqz v9, :cond_0

    .line 328
    :try_start_2
    invoke-interface {v9, v6, v11}, Landroid/media/IMediaScannerListener;->scanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 377
    .end local v3           #binder:Landroid/os/IBinder;
    .end local v9           #listener:Landroid/media/IMediaScannerListener;
    .end local v11           #uri:Landroid/net/Uri;
    :cond_0
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v0, p1

    iget v15, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v14, v15}, Lcom/android/providers/media/MediaScannerService;->stopSelf(I)V

    .line 378
    return-void

    .line 319
    .restart local v3       #binder:Landroid/os/IBinder;
    :cond_1
    :try_start_3
    invoke-static {v3}, Landroid/media/IMediaScannerListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IMediaScannerListener;

    move-result-object v9

    goto :goto_0

    .line 324
    .restart local v9       #listener:Landroid/media/IMediaScannerListener;
    .restart local v11       #uri:Landroid/net/Uri;
    :catch_0
    move-exception v5

    .line 325
    .local v5, e:Ljava/lang/Exception;
    const-string v14, "MediaScannerService"

    const-string v15, "Exception scanning file"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 373
    .end local v3           #binder:Landroid/os/IBinder;
    .end local v5           #e:Ljava/lang/Exception;
    .end local v9           #listener:Landroid/media/IMediaScannerListener;
    .end local v11           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v5

    .line 374
    .restart local v5       #e:Ljava/lang/Exception;
    const-string v14, "MediaScannerService"

    const-string v15, "Exception in handleMessage"

    invoke-static {v14, v15, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 331
    .end local v5           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_4
    const-string v14, "volume"

    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 332
    .local v12, volume:Ljava/lang/String;
    const/4 v4, 0x0

    .line 334
    .local v4, directories:[Ljava/lang/String;
    const-string v14, "internal"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 337
    const/4 v14, 0x2

    new-array v4, v14, [Ljava/lang/String;

    .end local v4           #directories:[Ljava/lang/String;
    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "/media"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v4, v14

    const/4 v14, 0x1

    const-string v15, "/data/cust/media"

    aput-object v15, v4, v14

    .line 348
    .restart local v4       #directories:[Ljava/lang/String;
    :cond_3
    :goto_3
    if-eqz v4, :cond_0

    .line 351
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    #calls: Lcom/android/providers/media/MediaScannerService;->scan([Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v14, v4, v12}, Lcom/android/providers/media/MediaScannerService;->access$300(Lcom/android/providers/media/MediaScannerService;[Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v14, "internal"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 355
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    #calls: Lcom/android/providers/media/MediaScannerService;->getAudioFilterConfig()Z
    invoke-static {v14}, Lcom/android/providers/media/MediaScannerService;->access$400(Lcom/android/providers/media/MediaScannerService;)Z

    move-result v7

    .line 356
    .local v7, isCust:Z
    if-eqz v7, :cond_0

    .line 358
    const-string v13, "_data=?"

    .line 359
    .local v13, where:Ljava/lang/String;
    invoke-static {v12}, Landroid/provider/MediaStore$Audio$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 360
    .local v10, mUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    invoke-virtual {v15}, Lcom/android/providers/media/MediaScannerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    const-string v16, "media"

    invoke-virtual/range {v15 .. v16}, Landroid/content/ContentResolver;->acquireProvider(Ljava/lang/String;)Landroid/content/IContentProvider;

    move-result-object v15

    #setter for: Lcom/android/providers/media/MediaScannerService;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v14, v15}, Lcom/android/providers/media/MediaScannerService;->access$502(Lcom/android/providers/media/MediaScannerService;Landroid/content/IContentProvider;)Landroid/content/IContentProvider;

    .line 361
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    #getter for: Lcom/android/providers/media/MediaScannerService;->mDelRingtonesList:Ljava/util/HashSet;
    invoke-static {v14}, Lcom/android/providers/media/MediaScannerService;->access$600(Lcom/android/providers/media/MediaScannerService;)Ljava/util/HashSet;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 363
    .local v8, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 364
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 365
    .local v1, argsSelection:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    #getter for: Lcom/android/providers/media/MediaScannerService;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static {v14}, Lcom/android/providers/media/MediaScannerService;->access$500(Lcom/android/providers/media/MediaScannerService;)Landroid/content/IContentProvider;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v1, v15, v16

    invoke-interface {v14, v10, v13, v15}, Landroid/content/IContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_4

    .line 343
    .end local v1           #argsSelection:Ljava/lang/String;
    .end local v7           #isCust:Z
    .end local v8           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v10           #mUri:Landroid/net/Uri;
    .end local v13           #where:Ljava/lang/String;
    :cond_4
    const-string v14, "external"

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 345
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/providers/media/MediaScannerService$ServiceHandler;->this$0:Lcom/android/providers/media/MediaScannerService;

    #getter for: Lcom/android/providers/media/MediaScannerService;->mExternalStoragePaths:[Ljava/lang/String;
    invoke-static {v14}, Lcom/android/providers/media/MediaScannerService;->access$200(Lcom/android/providers/media/MediaScannerService;)[Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v4

    goto :goto_3
.end method
