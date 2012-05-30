.class Lcom/android/internal/telephony/cat/SetEventListParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field eventInfo:[I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;[I)V
    .locals 0
    .parameter "cmdDet"
    .parameter "eventInfo"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 84
    iput-object p2, p0, Lcom/android/internal/telephony/cat/SetEventListParams;->eventInfo:[I

    .line 85
    return-void
.end method
