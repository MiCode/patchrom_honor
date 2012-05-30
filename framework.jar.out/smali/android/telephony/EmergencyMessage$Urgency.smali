.class public final enum Landroid/telephony/EmergencyMessage$Urgency;
.super Ljava/lang/Enum;
.source "EmergencyMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/EmergencyMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Urgency"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/telephony/EmergencyMessage$Urgency;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/telephony/EmergencyMessage$Urgency;

.field public static final enum EXPECTED:Landroid/telephony/EmergencyMessage$Urgency;

.field public static final enum IMMEDIATE:Landroid/telephony/EmergencyMessage$Urgency;

.field public static final enum UNDEFINED:Landroid/telephony/EmergencyMessage$Urgency;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    new-instance v0, Landroid/telephony/EmergencyMessage$Urgency;

    const-string v1, "IMMEDIATE"

    invoke-direct {v0, v1, v2}, Landroid/telephony/EmergencyMessage$Urgency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/EmergencyMessage$Urgency;->IMMEDIATE:Landroid/telephony/EmergencyMessage$Urgency;

    .line 48
    new-instance v0, Landroid/telephony/EmergencyMessage$Urgency;

    const-string v1, "EXPECTED"

    invoke-direct {v0, v1, v3}, Landroid/telephony/EmergencyMessage$Urgency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/EmergencyMessage$Urgency;->EXPECTED:Landroid/telephony/EmergencyMessage$Urgency;

    .line 49
    new-instance v0, Landroid/telephony/EmergencyMessage$Urgency;

    const-string v1, "UNDEFINED"

    invoke-direct {v0, v1, v4}, Landroid/telephony/EmergencyMessage$Urgency;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/telephony/EmergencyMessage$Urgency;->UNDEFINED:Landroid/telephony/EmergencyMessage$Urgency;

    .line 46
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/telephony/EmergencyMessage$Urgency;

    sget-object v1, Landroid/telephony/EmergencyMessage$Urgency;->IMMEDIATE:Landroid/telephony/EmergencyMessage$Urgency;

    aput-object v1, v0, v2

    sget-object v1, Landroid/telephony/EmergencyMessage$Urgency;->EXPECTED:Landroid/telephony/EmergencyMessage$Urgency;

    aput-object v1, v0, v3

    sget-object v1, Landroid/telephony/EmergencyMessage$Urgency;->UNDEFINED:Landroid/telephony/EmergencyMessage$Urgency;

    aput-object v1, v0, v4

    sput-object v0, Landroid/telephony/EmergencyMessage$Urgency;->$VALUES:[Landroid/telephony/EmergencyMessage$Urgency;

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
    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/telephony/EmergencyMessage$Urgency;
    .locals 1
    .parameter "name"

    .prologue
    .line 46
    const-class v0, Landroid/telephony/EmergencyMessage$Urgency;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/telephony/EmergencyMessage$Urgency;

    return-object v0
.end method

.method public static values()[Landroid/telephony/EmergencyMessage$Urgency;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Landroid/telephony/EmergencyMessage$Urgency;->$VALUES:[Landroid/telephony/EmergencyMessage$Urgency;

    invoke-virtual {v0}, [Landroid/telephony/EmergencyMessage$Urgency;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/telephony/EmergencyMessage$Urgency;

    return-object v0
.end method
