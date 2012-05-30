.class Lcom/android/server/HWDrmDialogsService$3;
.super Ljava/lang/Object;
.source "HWDrmDialogsService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/HWDrmDialogsService;->showDlg(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HWDrmDialogsService;


# direct methods
.method constructor <init>(Lcom/android/server/HWDrmDialogsService;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/server/HWDrmDialogsService$3;->this$0:Lcom/android/server/HWDrmDialogsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/server/HWDrmDialogsService$3;->this$0:Lcom/android/server/HWDrmDialogsService;

    #getter for: Lcom/android/server/HWDrmDialogsService;->mRightsIssuer:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/HWDrmDialogsService;->access$100(Lcom/android/server/HWDrmDialogsService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/HWDrmDialogsService$3;->this$0:Lcom/android/server/HWDrmDialogsService;

    #getter for: Lcom/android/server/HWDrmDialogsService;->mRightsIssuer:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/HWDrmDialogsService;->access$100(Lcom/android/server/HWDrmDialogsService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "https://.*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/server/HWDrmDialogsService$3;->this$0:Lcom/android/server/HWDrmDialogsService;

    iget-object v1, p0, Lcom/android/server/HWDrmDialogsService$3;->this$0:Lcom/android/server/HWDrmDialogsService;

    #getter for: Lcom/android/server/HWDrmDialogsService;->mRightsIssuer:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/HWDrmDialogsService;->access$100(Lcom/android/server/HWDrmDialogsService;)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/server/HWDrmDialogsService;->startBrowser(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/HWDrmDialogsService;->access$200(Lcom/android/server/HWDrmDialogsService;Ljava/lang/String;)V

    .line 128
    :goto_0
    return-void

    .line 119
    :cond_1
    iget-object v0, p0, Lcom/android/server/HWDrmDialogsService$3;->this$0:Lcom/android/server/HWDrmDialogsService;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/server/HWDrmDialogsService$3;->this$0:Lcom/android/server/HWDrmDialogsService;

    #getter for: Lcom/android/server/HWDrmDialogsService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/HWDrmDialogsService;->access$400(Lcom/android/server/HWDrmDialogsService;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1040014

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x2020069

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    new-instance v3, Lcom/android/server/HWDrmDialogsService$3$1;

    invoke-direct {v3, p0}, Lcom/android/server/HWDrmDialogsService$3$1;-><init>(Lcom/android/server/HWDrmDialogsService$3;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    #setter for: Lcom/android/server/HWDrmDialogsService;->mAlertDlg:Landroid/app/Dialog;
    invoke-static {v0, v1}, Lcom/android/server/HWDrmDialogsService;->access$302(Lcom/android/server/HWDrmDialogsService;Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0
.end method
