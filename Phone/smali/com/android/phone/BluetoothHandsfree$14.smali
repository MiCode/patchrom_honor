.class Lcom/android/phone/BluetoothHandsfree$14;
.super Landroid/bluetooth/AtCommandHandler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/BluetoothHandsfree;->initializeHandsfreeAtParser()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;

.field final synthetic val$phone:Lcom/android/internal/telephony/Phone;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 2270
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$14;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iput-object p2, p0, Lcom/android/phone/BluetoothHandsfree$14;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0}, Landroid/bluetooth/AtCommandHandler;-><init>()V

    return-void
.end method

.method private isValidDtmf(C)Z
    .locals 3
    .parameter "c"

    .prologue
    const/4 v0, 0x1

    .line 2288
    sparse-switch p1, :sswitch_data_0

    .line 2293
    const/16 v1, 0xe

    invoke-static {p1, v1}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2296
    :goto_0
    :sswitch_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2288
    :sswitch_data_0
    .sparse-switch
        0x23 -> :sswitch_0
        0x2a -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;
    .locals 4
    .parameter "args"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2273
    array-length v1, p1

    if-lt v1, v3, :cond_1

    .line 2275
    aget-object v1, p1, v2

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 2276
    aget-object v1, p1, v2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 2280
    .local v0, c:C
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/phone/BluetoothHandsfree$14;->isValidDtmf(C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2281
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$14;->val$phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    .line 2282
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v2}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 2285
    .end local v0           #c:C
    :goto_1
    return-object v1

    .line 2278
    :cond_0
    aget-object v1, p1, v2

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .restart local v0       #c:C
    goto :goto_0

    .line 2285
    .end local v0           #c:C
    :cond_1
    new-instance v1, Landroid/bluetooth/AtCommandResult;

    invoke-direct {v1, v3}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_1
.end method
