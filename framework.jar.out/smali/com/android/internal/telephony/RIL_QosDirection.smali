.class Lcom/android/internal/telephony/RIL_QosDirection;
.super Ljava/lang/Object;
.source "QosSpec.java"


# static fields
.field public static final RIL_QOS_RX:I = 0x1

.field public static final RIL_QOS_TX:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getName(I)Ljava/lang/String;
    .locals 1
    .parameter "val"

    .prologue
    .line 76
    packed-switch p0, :pswitch_data_0

    .line 79
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 77
    :pswitch_0
    const-string v0, "RIL_QOS_TX"

    goto :goto_0

    .line 78
    :pswitch_1
    const-string v0, "RIL_QOS_RX"

    goto :goto_0

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
