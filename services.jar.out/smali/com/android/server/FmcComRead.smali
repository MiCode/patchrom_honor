.class Lcom/android/server/FmcComRead;
.super Lcom/android/server/FmcCom;
.source "FmcCom.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FmcComRead"


# direct methods
.method protected constructor <init>(Lcom/android/server/FmcStateMachine;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/android/server/FmcCom;-><init>()V

    .line 183
    const-string v0, "FmcComRead"

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iput-object p1, p0, Lcom/android/server/FmcComRead;->fsm:Lcom/android/server/FmcStateMachine;

    .line 186
    return-void
.end method


# virtual methods
.method readFromDS()Lcom/android/server/FmcCom$fmc_trigger_resp;
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/16 v9, 0x84

    const/4 v5, 0x0

    .line 230
    const-string v6, "FmcComRead"

    const-string v7, "readFromDS"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-virtual {p0}, Lcom/android/server/FmcComRead;->establishSocket()Z

    move-result v6

    if-nez v6, :cond_1

    .line 233
    const-string v6, "FmcComRead"

    const-string v7, "readFromDS could not establish socket"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 274
    :cond_0
    :goto_0
    return-object v4

    .line 237
    :cond_1
    new-array v0, v9, [B

    .line 238
    .local v0, buffer:[B
    new-instance v4, Lcom/android/server/FmcCom$fmc_trigger_resp;

    invoke-direct {v4}, Lcom/android/server/FmcCom$fmc_trigger_resp;-><init>()V

    .line 241
    .local v4, resp:Lcom/android/server/FmcCom$fmc_trigger_resp;
    :try_start_0
    const-string v6, "FmcComRead"

    const-string v7, "readFromDS waiting on InputStream "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    sget-object v6, Lcom/android/server/FmcComRead;->ds_sock:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x84

    invoke-virtual {v6, v0, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 244
    .local v3, len:I
    const-string v6, "FmcComRead"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readFromDS bytes="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    if-ge v3, v9, :cond_2

    .line 247
    const-string v6, "FmcComRead"

    const-string v7, "readFromDS closing socket"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    sget-object v6, Lcom/android/server/FmcComRead;->ds_sock:Landroid/net/LocalSocket;

    invoke-virtual {v6}, Landroid/net/LocalSocket;->close()V

    .line 249
    const/4 v6, 0x0

    sput-object v6, Lcom/android/server/FmcComRead;->ds_sock:Landroid/net/LocalSocket;

    move-object v4, v5

    .line 250
    goto :goto_0

    .line 252
    :cond_2
    const/4 v6, 0x0

    aget-byte v6, v0, v6

    iput v6, v4, Lcom/android/server/FmcCom$fmc_trigger_resp;->ds_fmc_app_fmc_bearer_status:I

    .line 253
    new-instance v6, Lcom/android/server/FmcCom$sockaddr_in;

    invoke-direct {v6}, Lcom/android/server/FmcCom$sockaddr_in;-><init>()V

    iput-object v6, v4, Lcom/android/server/FmcCom$fmc_trigger_resp;->tunnel_dest_ip:Lcom/android/server/FmcCom$sockaddr_in;

    .line 254
    iget-object v6, v4, Lcom/android/server/FmcCom$fmc_trigger_resp;->tunnel_dest_ip:Lcom/android/server/FmcCom$sockaddr_in;

    const/4 v7, 0x4

    new-array v7, v7, [B

    iput-object v7, v6, Lcom/android/server/FmcCom$sockaddr_in;->sin_addr:[B

    .line 255
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v10, :cond_0

    .line 256
    iget-object v6, v4, Lcom/android/server/FmcCom$fmc_trigger_resp;->tunnel_dest_ip:Lcom/android/server/FmcCom$sockaddr_in;

    iget-object v6, v6, Lcom/android/server/FmcCom$sockaddr_in;->sin_addr:[B

    add-int/lit8 v7, v2, 0x8

    aget-byte v7, v0, v7

    aput-byte v7, v6, v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 255
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 262
    .end local v2           #i:I
    .end local v3           #len:I
    :catch_0
    move-exception v1

    .line 263
    .local v1, e:Ljava/io/IOException;
    const-string v6, "FmcComRead"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readFromDS IOException="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    sput-object v5, Lcom/android/server/FmcComRead;->ds_sock:Landroid/net/LocalSocket;

    move-object v4, v5

    .line 266
    goto/16 :goto_0

    .line 267
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 268
    .local v1, e:Ljava/lang/NullPointerException;
    const-string v6, "FmcComRead"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readFromDS NullPointerException="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 270
    goto/16 :goto_0

    .line 271
    .end local v1           #e:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v1

    .line 272
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "FmcComRead"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "readFromDS Exception="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .line 274
    goto/16 :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    .line 190
    const-string v2, "FmcComRead"

    const-string v3, "run"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v1, Lcom/android/server/FmcCom$fmc_trigger_resp;

    invoke-direct {v1}, Lcom/android/server/FmcCom$fmc_trigger_resp;-><init>()V

    .line 195
    .local v1, resp:Lcom/android/server/FmcCom$fmc_trigger_resp;
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/FmcComRead;->readFromDS()Lcom/android/server/FmcCom$fmc_trigger_resp;

    move-result-object v1

    .line 196
    if-eqz v1, :cond_1

    .line 197
    iget-object v2, v1, Lcom/android/server/FmcCom$fmc_trigger_resp;->tunnel_dest_ip:Lcom/android/server/FmcCom$sockaddr_in;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/FmcCom$fmc_trigger_resp;->tunnel_dest_ip:Lcom/android/server/FmcCom$sockaddr_in;

    iget-object v2, v2, Lcom/android/server/FmcCom$sockaddr_in;->sin_addr:[B

    if-eqz v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/android/server/FmcComRead;->fsm:Lcom/android/server/FmcStateMachine;

    iget-object v3, v1, Lcom/android/server/FmcCom$fmc_trigger_resp;->tunnel_dest_ip:Lcom/android/server/FmcCom$sockaddr_in;

    iget-object v3, v3, Lcom/android/server/FmcCom$sockaddr_in;->sin_addr:[B

    invoke-virtual {v2, v3}, Lcom/android/server/FmcStateMachine;->setDestIp([B)V

    .line 200
    :cond_0
    iget v2, v1, Lcom/android/server/FmcCom$fmc_trigger_resp;->ds_fmc_app_fmc_bearer_status:I

    packed-switch v2, :pswitch_data_0

    .line 208
    const-string v2, "FmcComRead"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run unhandled resp from DS="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/server/FmcCom$fmc_trigger_resp;->ds_fmc_app_fmc_bearer_status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object v2, p0, Lcom/android/server/FmcComRead;->fsm:Lcom/android/server/FmcStateMachine;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/FmcStateMachine;->sendMessage(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FmcComRead"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run Exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 202
    .end local v0           #e:Ljava/lang/Exception;
    :pswitch_0
    :try_start_1
    iget-object v2, p0, Lcom/android/server/FmcComRead;->fsm:Lcom/android/server/FmcStateMachine;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/FmcStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 205
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/FmcComRead;->fsm:Lcom/android/server/FmcStateMachine;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/android/server/FmcStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 213
    :cond_1
    const-string v2, "FmcComRead"

    const-string v3, "run resp is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v2, p0, Lcom/android/server/FmcComRead;->fsm:Lcom/android/server/FmcStateMachine;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/FmcStateMachine;->sendMessage(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 218
    const-wide/16 v2, 0x3e8

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 219
    :catch_1
    move-exception v0

    .line 220
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v2, "FmcComRead"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run InterruptedException="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
