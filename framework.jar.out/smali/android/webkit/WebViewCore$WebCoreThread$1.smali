.class Landroid/webkit/WebViewCore$WebCoreThread$1;
.super Landroid/os/Handler;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/webkit/WebViewCore$WebCoreThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebViewCore$WebCoreThread;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewCore$WebCoreThread;)V
    .locals 0
    .parameter

    .prologue
    .line 749
    iput-object p1, p0, Landroid/webkit/WebViewCore$WebCoreThread$1;->this$0:Landroid/webkit/WebViewCore$WebCoreThread;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 752
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 827
    :cond_0
    :goto_0
    return-void

    .line 755
    :sswitch_0
    iget-object v2, p0, Landroid/webkit/WebViewCore$WebCoreThread$1;->this$0:Landroid/webkit/WebViewCore$WebCoreThread;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/webkit/WebViewCore;

    #setter for: Landroid/webkit/WebViewCore$WebCoreThread;->core:Landroid/webkit/WebViewCore;
    invoke-static {v2, v1}, Landroid/webkit/WebViewCore$WebCoreThread;->access$502(Landroid/webkit/WebViewCore$WebCoreThread;Landroid/webkit/WebViewCore;)Landroid/webkit/WebViewCore;

    .line 757
    iget-object v1, p0, Landroid/webkit/WebViewCore$WebCoreThread$1;->this$0:Landroid/webkit/WebViewCore$WebCoreThread;

    #getter for: Landroid/webkit/WebViewCore$WebCoreThread;->core:Landroid/webkit/WebViewCore;
    invoke-static {v1}, Landroid/webkit/WebViewCore$WebCoreThread;->access$500(Landroid/webkit/WebViewCore$WebCoreThread;)Landroid/webkit/WebViewCore;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore;->initialize()V
    invoke-static {v1}, Landroid/webkit/WebViewCore;->access$600(Landroid/webkit/WebViewCore;)V

    goto :goto_0

    .line 762
    :sswitch_1
    invoke-static {}, Landroid/webkit/WebViewCore;->access$400()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 763
    iget-object v1, p0, Landroid/webkit/WebViewCore$WebCoreThread$1;->this$0:Landroid/webkit/WebViewCore$WebCoreThread;

    #calls: Landroid/webkit/WebViewCore;->nativeGetTextureGeneratorThreadID()I
    invoke-static {}, Landroid/webkit/WebViewCore;->access$800()I

    move-result v2

    #setter for: Landroid/webkit/WebViewCore$WebCoreThread;->tid:I
    invoke-static {v1, v2}, Landroid/webkit/WebViewCore$WebCoreThread;->access$702(Landroid/webkit/WebViewCore$WebCoreThread;I)I

    .line 764
    iget-object v1, p0, Landroid/webkit/WebViewCore$WebCoreThread$1;->this$0:Landroid/webkit/WebViewCore$WebCoreThread;

    #getter for: Landroid/webkit/WebViewCore$WebCoreThread;->tid:I
    invoke-static {v1}, Landroid/webkit/WebViewCore$WebCoreThread;->access$700(Landroid/webkit/WebViewCore$WebCoreThread;)I

    move-result v1

    if-lez v1, :cond_1

    .line 766
    :try_start_0
    iget-object v1, p0, Landroid/webkit/WebViewCore$WebCoreThread$1;->this$0:Landroid/webkit/WebViewCore$WebCoreThread;

    #getter for: Landroid/webkit/WebViewCore$WebCoreThread;->tid:I
    invoke-static {v1}, Landroid/webkit/WebViewCore$WebCoreThread;->access$700(Landroid/webkit/WebViewCore$WebCoreThread;)I

    move-result v1

    const/4 v2, -0x2

    invoke-static {v1, v2}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    :cond_1
    :goto_1
    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 777
    invoke-static {}, Landroid/webkit/WebViewCore;->access$400()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    invoke-static {}, Landroid/webkit/WebViewCore;->access$900()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 767
    :catch_0
    move-exception v0

    .line 768
    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "webcore"

    const-string v2, "Thread does not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 784
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :sswitch_2
    iget-object v1, p0, Landroid/webkit/WebViewCore$WebCoreThread$1;->this$0:Landroid/webkit/WebViewCore$WebCoreThread;

    #calls: Landroid/webkit/WebViewCore;->nativeGetTextureGeneratorThreadID()I
    invoke-static {}, Landroid/webkit/WebViewCore;->access$800()I

    move-result v2

    #setter for: Landroid/webkit/WebViewCore$WebCoreThread;->tid:I
    invoke-static {v1, v2}, Landroid/webkit/WebViewCore$WebCoreThread;->access$702(Landroid/webkit/WebViewCore$WebCoreThread;I)I

    .line 785
    iget-object v1, p0, Landroid/webkit/WebViewCore$WebCoreThread$1;->this$0:Landroid/webkit/WebViewCore$WebCoreThread;

    #getter for: Landroid/webkit/WebViewCore$WebCoreThread;->tid:I
    invoke-static {v1}, Landroid/webkit/WebViewCore$WebCoreThread;->access$700(Landroid/webkit/WebViewCore$WebCoreThread;)I

    move-result v1

    if-lez v1, :cond_2

    .line 787
    :try_start_1
    iget-object v1, p0, Landroid/webkit/WebViewCore$WebCoreThread$1;->this$0:Landroid/webkit/WebViewCore$WebCoreThread;

    #getter for: Landroid/webkit/WebViewCore$WebCoreThread;->tid:I
    invoke-static {v1}, Landroid/webkit/WebViewCore$WebCoreThread;->access$700(Landroid/webkit/WebViewCore$WebCoreThread;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 793
    :cond_2
    :goto_2
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 796
    iget-object v1, p0, Landroid/webkit/WebViewCore$WebCoreThread$1;->this$0:Landroid/webkit/WebViewCore$WebCoreThread;

    #getter for: Landroid/webkit/WebViewCore$WebCoreThread;->core:Landroid/webkit/WebViewCore;
    invoke-static {v1}, Landroid/webkit/WebViewCore$WebCoreThread;->access$500(Landroid/webkit/WebViewCore$WebCoreThread;)Landroid/webkit/WebViewCore;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 798
    iget-object v1, p0, Landroid/webkit/WebViewCore$WebCoreThread$1;->this$0:Landroid/webkit/WebViewCore$WebCoreThread;

    #getter for: Landroid/webkit/WebViewCore$WebCoreThread;->core:Landroid/webkit/WebViewCore;
    invoke-static {v1}, Landroid/webkit/WebViewCore$WebCoreThread;->access$500(Landroid/webkit/WebViewCore$WebCoreThread;)Landroid/webkit/WebViewCore;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore;->sendPriorityMessageToWebView()V
    invoke-static {v1}, Landroid/webkit/WebViewCore;->access$1000(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 788
    :catch_1
    move-exception v0

    .line 789
    .restart local v0       #ex:Ljava/lang/IllegalArgumentException;
    const-string/jumbo v1, "webcore"

    const-string v2, "Thread does not exist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 804
    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :sswitch_3
    sget-object v1, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v1, :cond_3

    .line 805
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No WebView has been created in this process!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 808
    :cond_3
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/webkit/JWebCoreJavaBridge;->addPackageName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 812
    :sswitch_4
    sget-object v1, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v1, :cond_4

    .line 813
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No WebView has been created in this process!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 816
    :cond_4
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/webkit/JWebCoreJavaBridge;->removePackageName(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 820
    :sswitch_5
    sget-object v1, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v1, :cond_5

    .line 821
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No WebView has been created in this process!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 824
    :cond_5
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/ProxyProperties;

    invoke-virtual {v2, v1}, Landroid/webkit/JWebCoreJavaBridge;->updateProxy(Landroid/net/ProxyProperties;)V

    goto/16 :goto_0

    .line 752
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0xb9 -> :sswitch_3
        0xba -> :sswitch_4
        0xc1 -> :sswitch_5
    .end sparse-switch
.end method
