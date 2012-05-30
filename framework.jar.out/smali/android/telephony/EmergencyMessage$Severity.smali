.class public final enum Landroid/telephony/EmergencyMessage$Severity;
.super Ljava/lang/Enum;
.source "EmergencyMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/EmergencyMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Severity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/telephony/EmergencyMessage$Severity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/telephony/EmergencyMessage$Severity;

.field public static final enum EXTREME:Landroid/telephony/EmergencyMessage$Severity;

.field public static final enum SEVERE:Landroid/telephony/EmergencyMessage$Severity;

.field public static final enum UNDEFINED:Landroid/telephony/EmergencyMessage$Severity;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Landroid/telephony/EmergencyMessage$Severity;

    const-string v1, "EXTREME"

    invoke-direct {v0, v1, v2}, Landroid/telephony/EmergencyMessage$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/EmergencyMessage$Severity;->EXTREME:Landroid/telephony/EmergencyMessage$Severity;

    .line 42
    new-instance v0, Landroid/telephony/EmergencyMessage$Severity;

    const-string v1, "SEVERE"

    invoke-direct {v0, v1, v3}, Landroid/telephony/EmergencyMessage$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/EmergencyMessage$Severity;->SEVERE:Landroid/telephony/EmergencyMessage$Severity;

    .line 43
    new-instance v0, Landroid/telephony/EmergencyMessage$Severity;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v4}, Landroid/telephony/EmergencyMessage$Severity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/EmergencyMessage$Severity;->UNDEFINED:Landroid/telephony/EmergencyMessage$Severity;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/telephony/EmergencyMessage$Severity;

    sget-object v1, Landroid/telephony/EmergencyMessage$Severity;->EXTREME:Landroid/telephony/EmergencyMessage$Severity;

    aput-object v1, v0, v2

    sget-object v1, Landroid/telephony/EmergencyMessage$Severity;->SEVERE:Landroid/telephony/EmergencyMessage$Severity;

    aput-object v1, v0, v3

    sget-object v1, Landroid/telephony/EmergencyMessage$Severity;->UNDEFINED:Landroid/telephony/EmergencyMessage$Severity;

    aput-object v1, v0, v4

    sput-object v0, Landroid/telephony/EmergencyMessage$Severity;->$VALUES:[Landroid/telephony/EmergencyMessage$Severity;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/telephony/EmergencyMessage$Severity;
    .locals 1
    .parameter "name"

    .prologue
    .line 40
    const-class v0, Landroid/telephony/EmergencyMessage$Severity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/telephony/EmergencyMessage$Severity;

    return-object v0
.end method

.method public static values()[Landroid/telephony/EmergencyMessage$Severity;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Landroid/telephony/EmergencyMessage$Severity;->$VALUES:[Landroid/telephony/EmergencyMessage$Severity;

    invoke-virtual {v0}, [Landroid/telephony/EmergencyMessage$Severity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/EmergencyMessage$Severity;

    return-object v0
.end method
