.class public final enum Lcom/android/phone/InCallUiState$ProgressIndicationType;
.super Ljava/lang/Enum;
.source "InCallUiState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallUiState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProgressIndicationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/InCallUiState$ProgressIndicationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/InCallUiState$ProgressIndicationType;

.field public static final enum NONE:Lcom/android/phone/InCallUiState$ProgressIndicationType;

.field public static final enum RETRYING:Lcom/android/phone/InCallUiState$ProgressIndicationType;

.field public static final enum TURNING_ON_RADIO:Lcom/android/phone/InCallUiState$ProgressIndicationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 288
    new-instance v0, Lcom/android/phone/InCallUiState$ProgressIndicationType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/InCallUiState$ProgressIndicationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallUiState$ProgressIndicationType;->NONE:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    .line 294
    new-instance v0, Lcom/android/phone/InCallUiState$ProgressIndicationType;

    const-string v1, "TURNING_ON_RADIO"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/InCallUiState$ProgressIndicationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallUiState$ProgressIndicationType;->TURNING_ON_RADIO:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    .line 301
    new-instance v0, Lcom/android/phone/InCallUiState$ProgressIndicationType;

    const-string v1, "RETRYING"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/InCallUiState$ProgressIndicationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/InCallUiState$ProgressIndicationType;->RETRYING:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    .line 284
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/InCallUiState$ProgressIndicationType;

    sget-object v1, Lcom/android/phone/InCallUiState$ProgressIndicationType;->NONE:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/InCallUiState$ProgressIndicationType;->TURNING_ON_RADIO:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/InCallUiState$ProgressIndicationType;->RETRYING:Lcom/android/phone/InCallUiState$ProgressIndicationType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/InCallUiState$ProgressIndicationType;->$VALUES:[Lcom/android/phone/InCallUiState$ProgressIndicationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 284
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/InCallUiState$ProgressIndicationType;
    .locals 1
    .parameter

    .prologue
    .line 284
    const-class v0, Lcom/android/phone/InCallUiState$ProgressIndicationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallUiState$ProgressIndicationType;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/InCallUiState$ProgressIndicationType;
    .locals 1

    .prologue
    .line 284
    sget-object v0, Lcom/android/phone/InCallUiState$ProgressIndicationType;->$VALUES:[Lcom/android/phone/InCallUiState$ProgressIndicationType;

    invoke-virtual {v0}, [Lcom/android/phone/InCallUiState$ProgressIndicationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/InCallUiState$ProgressIndicationType;

    return-object v0
.end method
