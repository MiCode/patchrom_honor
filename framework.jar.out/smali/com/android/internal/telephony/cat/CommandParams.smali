.class Lcom/android/internal/telephony/cat/CommandParams;
.super Ljava/lang/Object;
.source "CommandParams.java"


# instance fields
.field cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

.field loadIconFailed:Z


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;)V
    .locals 1
    .parameter "cmdDet"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CommandParams;->loadIconFailed:Z

    .line 31
    iput-object p1, p0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 32
    return-void
.end method


# virtual methods
.method getCommandType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/internal/telephony/cat/CommandParams;->cmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget v0, v0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    return-object v0
.end method

.method setIcon(Landroid/graphics/Bitmap;)Z
    .locals 1
    .parameter "icon"

    .prologue
    .line 38
    const/4 v0, 0x1

    return v0
.end method
