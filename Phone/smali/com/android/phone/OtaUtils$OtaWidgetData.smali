.class Lcom/android/phone/OtaUtils$OtaWidgetData;
.super Ljava/lang/Object;
.source "OtaUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OtaUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OtaWidgetData"
.end annotation


# instance fields
.field public callCardOtaButtonsActivate:Landroid/view/View;

.field public callCardOtaButtonsFailSuccess:Landroid/view/View;

.field public callCardOtaButtonsListenProgress:Landroid/view/View;

.field public otaActivateButton:Landroid/widget/Button;

.field public otaDtmfDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

.field public otaEndButton:Landroid/widget/Button;

.field public otaFailureDialog:Landroid/app/AlertDialog;

.field public otaNextButton:Landroid/widget/Button;

.field public otaSkipButton:Landroid/widget/Button;

.field public otaSkipConfirmationDialog:Landroid/app/AlertDialog;

.field public otaSpeakerButton:Landroid/widget/ToggleButton;

.field public otaTextActivate:Landroid/widget/TextView;

.field public otaTextListenProgress:Landroid/widget/TextView;

.field public otaTextProgressBar:Landroid/widget/ProgressBar;

.field public otaTextSuccessFail:Landroid/widget/TextView;

.field public otaTitle:Landroid/widget/TextView;

.field public otaTryAgainButton:Landroid/widget/Button;

.field public otaUpperWidgets:Landroid/view/ViewGroup;

.field public spcErrorDialog:Landroid/app/AlertDialog;

.field final synthetic this$0:Lcom/android/phone/OtaUtils;


# direct methods
.method private constructor <init>(Lcom/android/phone/OtaUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/phone/OtaUtils$OtaWidgetData;->this$0:Lcom/android/phone/OtaUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/OtaUtils;Lcom/android/phone/OtaUtils$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 181
    invoke-direct {p0, p1}, Lcom/android/phone/OtaUtils$OtaWidgetData;-><init>(Lcom/android/phone/OtaUtils;)V

    return-void
.end method
