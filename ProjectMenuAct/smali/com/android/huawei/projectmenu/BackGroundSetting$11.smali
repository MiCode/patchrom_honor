.class Lcom/android/huawei/projectmenu/BackGroundSetting$11;
.super Ljava/lang/Object;
.source "BackGroundSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/huawei/projectmenu/BackGroundSetting;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;


# direct methods
.method constructor <init>(Lcom/android/huawei/projectmenu/BackGroundSetting;)V
    .locals 0
    .parameter

    .prologue
    .line 503
    iput-object p1, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$11;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 507
    packed-switch p2, :pswitch_data_0

    .line 520
    :goto_0
    return-void

    .line 510
    :pswitch_0
    iget-object v0, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$11;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    const/4 v1, 0x0

    #setter for: Lcom/android/huawei/projectmenu/BackGroundSetting;->mPhuLock:I
    invoke-static {v0, v1}, Lcom/android/huawei/projectmenu/BackGroundSetting;->access$202(Lcom/android/huawei/projectmenu/BackGroundSetting;I)I

    goto :goto_0

    .line 514
    :pswitch_1
    iget-object v0, p0, Lcom/android/huawei/projectmenu/BackGroundSetting$11;->this$0:Lcom/android/huawei/projectmenu/BackGroundSetting;

    const/4 v1, 0x1

    #setter for: Lcom/android/huawei/projectmenu/BackGroundSetting;->mPhuLock:I
    invoke-static {v0, v1}, Lcom/android/huawei/projectmenu/BackGroundSetting;->access$202(Lcom/android/huawei/projectmenu/BackGroundSetting;I)I

    goto :goto_0

    .line 507
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
