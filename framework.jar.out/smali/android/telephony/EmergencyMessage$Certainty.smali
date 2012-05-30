.class public final enum Landroid/telephony/EmergencyMessage$Certainty;
.super Ljava/lang/Enum;
.source "EmergencyMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/EmergencyMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Certainty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/telephony/EmergencyMessage$Certainty;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/telephony/EmergencyMessage$Certainty;

.field public static final enum LIKELY:Landroid/telephony/EmergencyMessage$Certainty;

.field public static final enum OBSERVED:Landroid/telephony/EmergencyMessage$Certainty;

.field public static final enum UNDEFINED:Landroid/telephony/EmergencyMessage$Certainty;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Landroid/telephony/EmergencyMessage$Certainty;

    const-string v1, "OBSERVED"

    invoke-direct {v0, v1, v2}, Landroid/telephony/EmergencyMessage$Certainty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/EmergencyMessage$Certainty;->OBSERVED:Landroid/telephony/EmergencyMessage$Certainty;

    .line 54
    new-instance v0, Landroid/telephony/EmergencyMessage$Certainty;

    const-string v1, "LIKELY"

    invoke-direct {v0, v1, v3}, Landroid/telephony/EmergencyMessage$Certainty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/EmergencyMessage$Certainty;->LIKELY:Landroid/telephony/EmergencyMessage$Certainty;

    .line 55
    new-instance v0, Landroid/telephony/EmergencyMessage$Certainty;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v4}, Landroid/telephony/EmergencyMessage$Certainty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/EmergencyMessage$Certainty;->UNDEFINED:Landroid/telephony/EmergencyMessage$Certainty;

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/telephony/EmergencyMessage$Certainty;

    sget-object v1, Landroid/telephony/EmergencyMessage$Certainty;->OBSERVED:Landroid/telephony/EmergencyMessage$Certainty;

    aput-object v1, v0, v2

    sget-object v1, Landroid/telephony/EmergencyMessage$Certainty;->LIKELY:Landroid/telephony/EmergencyMessage$Certainty;

    aput-object v1, v0, v3

    sget-object v1, Landroid/telephony/EmergencyMessage$Certainty;->UNDEFINED:Landroid/telephony/EmergencyMessage$Certainty;

    aput-object v1, v0, v4

    sput-object v0, Landroid/telephony/EmergencyMessage$Certainty;->$VALUES:[Landroid/telephony/EmergencyMessage$Certainty;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/telephony/EmergencyMessage$Certainty;
    .locals 1
    .parameter "name"

    .prologue
    .line 52
    const-class v0, Landroid/telephony/EmergencyMessage$Certainty;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/telephony/EmergencyMessage$Certainty;

    return-object v0
.end method

.method public static values()[Landroid/telephony/EmergencyMessage$Certainty;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Landroid/telephony/EmergencyMessage$Certainty;->$VALUES:[Landroid/telephony/EmergencyMessage$Certainty;

    invoke-virtual {v0}, [Landroid/telephony/EmergencyMessage$Certainty;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/EmergencyMessage$Certainty;

    return-object v0
.end method
