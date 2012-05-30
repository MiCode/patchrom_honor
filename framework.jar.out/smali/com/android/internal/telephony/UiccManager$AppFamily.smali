.class public final enum Lcom/android/internal/telephony/UiccManager$AppFamily;
.super Ljava/lang/Enum;
.source "UiccManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/UiccManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppFamily"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/UiccManager$AppFamily;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/UiccManager$AppFamily;

.field public static final enum APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

.field public static final enum APP_FAM_3GPP2:Lcom/android/internal/telephony/UiccManager$AppFamily;

.field public static final enum APP_FAM_IMS:Lcom/android/internal/telephony/UiccManager$AppFamily;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/android/internal/telephony/UiccManager$AppFamily;

    const-string v1, "APP_FAM_3GPP"

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/UiccManager$AppFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    .line 40
    new-instance v0, Lcom/android/internal/telephony/UiccManager$AppFamily;

    const-string v1, "APP_FAM_3GPP2"

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/UiccManager$AppFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP2:Lcom/android/internal/telephony/UiccManager$AppFamily;

    .line 41
    new-instance v0, Lcom/android/internal/telephony/UiccManager$AppFamily;

    const-string v1, "APP_FAM_IMS"

    invoke-direct {v0, v1, v4}, Lcom/android/internal/telephony/UiccManager$AppFamily;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_IMS:Lcom/android/internal/telephony/UiccManager$AppFamily;

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/internal/telephony/UiccManager$AppFamily;

    sget-object v1, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP2:Lcom/android/internal/telephony/UiccManager$AppFamily;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_IMS:Lcom/android/internal/telephony/UiccManager$AppFamily;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/internal/telephony/UiccManager$AppFamily;->$VALUES:[Lcom/android/internal/telephony/UiccManager$AppFamily;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/UiccManager$AppFamily;
    .locals 1
    .parameter "name"

    .prologue
    .line 38
    const-class v0, Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/UiccManager$AppFamily;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/UiccManager$AppFamily;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/internal/telephony/UiccManager$AppFamily;->$VALUES:[Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/UiccManager$AppFamily;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/UiccManager$AppFamily;

    return-object v0
.end method
