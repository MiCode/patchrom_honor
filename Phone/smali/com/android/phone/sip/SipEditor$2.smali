.class Lcom/android/phone/sip/SipEditor$2;
.super Ljava/lang/Object;
.source "SipEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/sip/SipEditor;->replaceProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/sip/SipEditor;

.field final synthetic val$newProfile:Landroid/net/sip/SipProfile;

.field final synthetic val$oldProfile:Landroid/net/sip/SipProfile;


# direct methods
.method constructor <init>(Lcom/android/phone/sip/SipEditor;Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/phone/sip/SipEditor$2;->this$0:Lcom/android/phone/sip/SipEditor;

    iput-object p2, p0, Lcom/android/phone/sip/SipEditor$2;->val$newProfile:Landroid/net/sip/SipProfile;

    iput-object p3, p0, Lcom/android/phone/sip/SipEditor$2;->val$oldProfile:Landroid/net/sip/SipProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 399
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor$2;->val$newProfile:Landroid/net/sip/SipProfile;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/sip/SipEditor$2;->this$0:Lcom/android/phone/sip/SipEditor;

    #getter for: Lcom/android/phone/sip/SipEditor;->mPrimaryAccountSelector:Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;
    invoke-static {v1}, Lcom/android/phone/sip/SipEditor;->access$300(Lcom/android/phone/sip/SipEditor;)Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 400
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor$2;->this$0:Lcom/android/phone/sip/SipEditor;

    #calls: Lcom/android/phone/sip/SipEditor;->unregisterOldPrimaryAccount()V
    invoke-static {v1}, Lcom/android/phone/sip/SipEditor;->access$400(Lcom/android/phone/sip/SipEditor;)V

    .line 403
    :cond_0
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor$2;->this$0:Lcom/android/phone/sip/SipEditor;

    #getter for: Lcom/android/phone/sip/SipEditor;->mPrimaryAccountSelector:Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;
    invoke-static {v1}, Lcom/android/phone/sip/SipEditor;->access$300(Lcom/android/phone/sip/SipEditor;)Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/sip/SipEditor$2;->val$newProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->commit(Landroid/net/sip/SipProfile;)V

    .line 404
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor$2;->this$0:Lcom/android/phone/sip/SipEditor;

    iget-object v2, p0, Lcom/android/phone/sip/SipEditor$2;->val$oldProfile:Landroid/net/sip/SipProfile;

    #calls: Lcom/android/phone/sip/SipEditor;->deleteAndUnregisterProfile(Landroid/net/sip/SipProfile;)V
    invoke-static {v1, v2}, Lcom/android/phone/sip/SipEditor;->access$500(Lcom/android/phone/sip/SipEditor;Landroid/net/sip/SipProfile;)V

    .line 405
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor$2;->this$0:Lcom/android/phone/sip/SipEditor;

    iget-object v2, p0, Lcom/android/phone/sip/SipEditor$2;->val$newProfile:Landroid/net/sip/SipProfile;

    #calls: Lcom/android/phone/sip/SipEditor;->saveAndRegisterProfile(Landroid/net/sip/SipProfile;)V
    invoke-static {v1, v2}, Lcom/android/phone/sip/SipEditor;->access$600(Lcom/android/phone/sip/SipEditor;Landroid/net/sip/SipProfile;)V

    .line 406
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor$2;->this$0:Lcom/android/phone/sip/SipEditor;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    :goto_0
    return-void

    .line 407
    :catch_0
    move-exception v0

    .line 408
    .local v0, e:Ljava/lang/Exception;
    invoke-static {}, Lcom/android/phone/sip/SipEditor;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Can not save/register new SipProfile"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 409
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor$2;->this$0:Lcom/android/phone/sip/SipEditor;

    #calls: Lcom/android/phone/sip/SipEditor;->showAlert(Ljava/lang/Throwable;)V
    invoke-static {v1, v0}, Lcom/android/phone/sip/SipEditor;->access$700(Lcom/android/phone/sip/SipEditor;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
