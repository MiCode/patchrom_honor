.class Lcom/android/server/FmcComSend;
.super Lcom/android/server/FmcCom;
.source "FmcCom.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FmcComSend"


# direct methods
.method protected constructor <init>(Lcom/android/server/FmcStateMachine;Ljava/util/concurrent/BlockingQueue;)V
    .locals 2
    .parameter "callback"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/FmcStateMachine;",
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p2, sendQueue:Ljava/util/concurrent/BlockingQueue;,"Ljava/util/concurrent/BlockingQueue<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Lcom/android/server/FmcCom;-><init>()V

    .line 128
    const-string v0, "FmcComSend"

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iput-object p1, p0, Lcom/android/server/FmcComSend;->fsm:Lcom/android/server/FmcStateMachine;

    .line 131
    iput-object p2, p0, Lcom/android/server/FmcComSend;->receiveQueue:Ljava/util/concurrent/BlockingQueue;

    .line 132
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 136
    const-string v2, "FmcComSend"

    const-string v3, "run"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v0, 0x0

    .line 141
    .local v0, command:I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/FmcComSend;->receiveQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 142
    const-string v2, "FmcComSend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run received command="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {p0, v0}, Lcom/android/server/FmcComSend;->sendToDS(I)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 144
    :catch_0
    move-exception v1

    .line 145
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v2, "FmcComSend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run InterruptedException="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 147
    .local v1, e:Ljava/lang/Exception;
    const-string v2, "FmcComSend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run Exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method sendToDS(I)V
    .locals 6
    .parameter "command"

    .prologue
    const/4 v5, 0x0

    .line 153
    const-string v2, "FmcComSend"

    const-string v3, "sendToDS"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p0}, Lcom/android/server/FmcComSend;->establishSocket()Z

    move-result v2

    if-nez v2, :cond_0

    .line 156
    const-string v2, "FmcComSend"

    const-string v3, "sendToDS could not establish socket"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object v2, p0, Lcom/android/server/FmcComSend;->fsm:Lcom/android/server/FmcStateMachine;

    invoke-virtual {v2, v5}, Lcom/android/server/FmcStateMachine;->sendMessage(I)V

    .line 174
    :goto_0
    return-void

    .line 162
    :cond_0
    :try_start_0
    const-string v2, "FmcComSend"

    const-string v3, "sendToDS writing to OutputStream"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v2, 0x2

    new-array v0, v2, [B

    .line 165
    .local v0, b:[B
    const/4 v2, 0x0

    int-to-byte v3, p1

    aput-byte v3, v0, v2

    .line 166
    sget-object v2, Lcom/android/server/FmcComSend;->ds_sock:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    .line 168
    const-string v2, "FmcComSend"

    const-string v3, "sendToDS (exit)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    .end local v0           #b:[B
    :catch_0
    move-exception v1

    .line 172
    .local v1, e:Ljava/io/IOException;
    const-string v2, "FmcComSend"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendToDS IOException="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    iget-object v2, p0, Lcom/android/server/FmcComSend;->fsm:Lcom/android/server/FmcStateMachine;

    invoke-virtual {v2, v5}, Lcom/android/server/FmcStateMachine;->sendMessage(I)V

    goto :goto_0
.end method
