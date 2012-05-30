.class Lcom/android/internal/telephony/UiccCard$1;
.super Ljava/lang/Object;
.source "UiccCard.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/UiccCard;->onIccSwap(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/UiccCard;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/UiccCard;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/internal/telephony/UiccCard$1;->this$0:Lcom/android/internal/telephony/UiccCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 183
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 184
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard$1;->this$0:Lcom/android/internal/telephony/UiccCard;

    const-string v2, "Reboot due to SIM swap"

    #calls: Lcom/android/internal/telephony/UiccCard;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/internal/telephony/UiccCard;->access$000(Lcom/android/internal/telephony/UiccCard;Ljava/lang/String;)V

    .line 185
    iget-object v1, p0, Lcom/android/internal/telephony/UiccCard$1;->this$0:Lcom/android/internal/telephony/UiccCard;

    #getter for: Lcom/android/internal/telephony/UiccCard;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/telephony/UiccCard;->access$100(Lcom/android/internal/telephony/UiccCard;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 187
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "SIM is added."

    invoke-virtual {v0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 189
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    return-void
.end method
