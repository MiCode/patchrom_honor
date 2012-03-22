.class Lcom/android/phone/CLIRListPreference$MyHandler;
.super Landroid/os/Handler;
.source "CLIRListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CLIRListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CLIRListPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CLIRListPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CLIRListPreference;Lcom/android/phone/CLIRListPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 107
    invoke-direct {p0, p1}, Lcom/android/phone/CLIRListPreference$MyHandler;-><init>(Lcom/android/phone/CLIRListPreference;)V

    return-void
.end method

.method private handleGetCLIRResponse(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/16 v5, 0x190

    const/4 v4, 0x1

    .line 124
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 126
    .local v0, ar:Landroid/os/AsyncResult;
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v4, :cond_0

    .line 127
    iget-object v2, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    iget-object v2, v2, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v3, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 131
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/phone/CLIRListPreference;->clirArray:[I

    .line 132
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 134
    iget-object v2, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    iget-object v3, v2, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v4, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-interface {v3, v4, v2}, Lcom/android/phone/TimeConsumingPreferenceListener;->onException(Landroid/preference/Preference;Lcom/android/internal/telephony/CommandException;)V

    .line 147
    :goto_1
    return-void

    .line 129
    :cond_0
    iget-object v2, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    iget-object v2, v2, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v3, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    invoke-interface {v2, v3, v4}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    goto :goto_0

    .line 135
    :cond_1
    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/Throwable;

    if-eqz v2, :cond_2

    .line 136
    iget-object v2, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    iget-object v2, v2, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v3, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    invoke-interface {v2, v3, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    .line 138
    :cond_2
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    move-object v1, v2

    check-cast v1, [I

    .line 139
    .local v1, clirArray:[I
    array-length v2, v1

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    .line 140
    iget-object v2, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    iget-object v2, v2, Lcom/android/phone/CLIRListPreference;->tcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;

    iget-object v3, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    invoke-interface {v2, v3, v5}, Lcom/android/phone/TimeConsumingPreferenceListener;->onError(Landroid/preference/Preference;I)V

    goto :goto_1

    .line 144
    :cond_3
    iget-object v2, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    invoke-virtual {v2, v1}, Lcom/android/phone/CLIRListPreference;->handleGetCLIRResult([I)V

    goto :goto_1
.end method

.method private handleSetCLIRResponse(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 150
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 152
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 158
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CLIRListPreference$MyHandler;->this$0:Lcom/android/phone/CLIRListPreference;

    iget-object v1, v1, Lcom/android/phone/CLIRListPreference;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p0, v2, v4, v4, v3}, Lcom/android/phone/CLIRListPreference$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getOutgoingCallerIdDisplay(Landroid/os/Message;)V

    .line 160
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 113
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 121
    :goto_0
    return-void

    .line 115
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CLIRListPreference$MyHandler;->handleGetCLIRResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 118
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CLIRListPreference$MyHandler;->handleSetCLIRResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
