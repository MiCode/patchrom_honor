.class Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;
.super Landroid/os/Handler;
.source "CdmaVoicePrivacyCheckBoxPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;)V
    .locals 0
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;-><init>(Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;)V

    return-void
.end method

.method private handleGetVPResponse(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 79
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 81
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    .line 83
    iget-object v2, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;

    invoke-virtual {v2, v3}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->setEnabled(Z)V

    .line 92
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    aget v1, v2, v3

    .line 87
    .local v1, enable:I
    iget-object v4, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->setChecked(Z)V

    .line 89
    iget-object v2, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;

    invoke-virtual {v2}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enhanced_voice_privacy_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    move v2, v3

    .line 87
    goto :goto_1
.end method

.method private handleSetVPResponse(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 95
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 97
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->this$0:Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;

    iget-object v1, v1, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    .line 103
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 68
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 76
    :goto_0
    return-void

    .line 70
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->handleGetVPResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 73
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/CdmaVoicePrivacyCheckBoxPreference$MyHandler;->handleSetVPResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
