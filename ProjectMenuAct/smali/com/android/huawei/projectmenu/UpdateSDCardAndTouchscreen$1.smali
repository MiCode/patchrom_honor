.class Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen$1;
.super Ljava/lang/Object;
.source "UpdateSDCardAndTouchscreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;


# direct methods
.method constructor <init>(Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;)V
    .locals 0
    .parameter

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen$1;->this$0:Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 122
    invoke-static {}, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;->isHasCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lcom/android/huawei/projectmenu/ProjectMenu;->updateModemAndApp()Z

    .line 132
    :goto_0
    return-void

    .line 126
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen$1;->this$0:Lcom/android/huawei/projectmenu/UpdateSDCardAndTouchscreen;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060094

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060074

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
