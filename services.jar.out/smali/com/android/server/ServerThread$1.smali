.class Lcom/android/server/ServerThread$1;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ServerThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServerThread;

.field final synthetic val$appWidgetF:Lcom/android/server/AppWidgetService;

.field final synthetic val$batteryF:Lcom/android/server/BatteryService;

.field final synthetic val$connectivityF:Lcom/android/server/ConnectivityService;

.field final synthetic val$contextF:Landroid/content/Context;

.field final synthetic val$countryDetectorF:Lcom/android/server/CountryDetectorService;

.field final synthetic val$dockF:Lcom/android/server/DockObserver;

.field final synthetic val$immF:Lcom/android/server/InputMethodManagerService;

.field final synthetic val$locationF:Lcom/android/server/LocationManagerService;

.field final synthetic val$networkManagementF:Lcom/android/server/NetworkManagementService;

.field final synthetic val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

.field final synthetic val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

.field final synthetic val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

.field final synthetic val$recognitionF:Lcom/android/server/RecognitionManagerService;

.field final synthetic val$safeMode:Z

.field final synthetic val$statusBarF:Lcom/android/server/StatusBarManagerService;

.field final synthetic val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

.field final synthetic val$throttleF:Lcom/android/server/ThrottleService;

.field final synthetic val$uiModeF:Lcom/android/server/UiModeManagerService;

.field final synthetic val$usbF:Lcom/android/server/usb/UsbService;

.field final synthetic val$wallpaperF:Lcom/android/server/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/ServerThread;Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/TextServicesManagerService;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 719
    iput-object p1, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    iput-object p2, p0, Lcom/android/server/ServerThread$1;->val$contextF:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/ServerThread$1;->val$batteryF:Lcom/android/server/BatteryService;

    iput-object p4, p0, Lcom/android/server/ServerThread$1;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    iput-object p5, p0, Lcom/android/server/ServerThread$1;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    iput-object p6, p0, Lcom/android/server/ServerThread$1;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    iput-object p7, p0, Lcom/android/server/ServerThread$1;->val$connectivityF:Lcom/android/server/ConnectivityService;

    iput-object p8, p0, Lcom/android/server/ServerThread$1;->val$dockF:Lcom/android/server/DockObserver;

    iput-object p9, p0, Lcom/android/server/ServerThread$1;->val$usbF:Lcom/android/server/usb/UsbService;

    iput-object p10, p0, Lcom/android/server/ServerThread$1;->val$uiModeF:Lcom/android/server/UiModeManagerService;

    iput-object p11, p0, Lcom/android/server/ServerThread$1;->val$recognitionF:Lcom/android/server/RecognitionManagerService;

    iput-object p12, p0, Lcom/android/server/ServerThread$1;->val$appWidgetF:Lcom/android/server/AppWidgetService;

    iput-boolean p13, p0, Lcom/android/server/ServerThread$1;->val$safeMode:Z

    iput-object p14, p0, Lcom/android/server/ServerThread$1;->val$wallpaperF:Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/android/server/ServerThread$1;->val$immF:Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/android/server/ServerThread$1;->val$statusBarF:Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/android/server/ServerThread$1;->val$locationF:Lcom/android/server/LocationManagerService;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/android/server/ServerThread$1;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/android/server/ServerThread$1;->val$throttleF:Lcom/android/server/ThrottleService;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/android/server/ServerThread$1;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/android/server/ServerThread$1;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 721
    const-string v1, "SystemServer"

    const-string v2, "Making services ready"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v1, p0, Lcom/android/server/ServerThread$1;->val$contextF:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ServerThread;->startSystemUi(Landroid/content/Context;)V

    .line 725
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ServerThread$1;->val$batteryF:Lcom/android/server/BatteryService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/ServerThread$1;->val$batteryF:Lcom/android/server/BatteryService;

    invoke-virtual {v1}, Lcom/android/server/BatteryService;->systemReady()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 730
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/ServerThread$1;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/ServerThread$1;->val$networkManagementF:Lcom/android/server/NetworkManagementService;

    invoke-virtual {v1}, Lcom/android/server/NetworkManagementService;->systemReady()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 735
    :cond_1
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/android/server/ServerThread$1;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/ServerThread$1;->val$networkStatsF:Lcom/android/server/net/NetworkStatsService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkStatsService;->systemReady()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    .line 740
    :cond_2
    :goto_2
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ServerThread$1;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/ServerThread$1;->val$networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    .line 745
    :cond_3
    :goto_3
    :try_start_4
    iget-object v1, p0, Lcom/android/server/ServerThread$1;->val$connectivityF:Lcom/android/server/ConnectivityService;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/ServerThread$1;->val$connectivityF:Lcom/android/server/ConnectivityService;

    invoke-virtual {v1}, Lcom/android/server/ConnectivityService;->systemReady()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    .line 750
    :cond_4
    :goto_4
    :try_start_5
    iget-object v1, p0, Lcom/android/server/ServerThread$1;->val$dockF:Lcom/android/server/DockObserver;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/ServerThread$1;->val$dockF:Lcom/android/server/DockObserver;

    invoke-virtual {v1}, Lcom/android/server/DockObserver;->systemReady()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    .line 755
    :cond_5
    :goto_5
    :try_start_6
    iget-object v1, p0, Lcom/android/server/ServerThread$1;->val$usbF:Lcom/android/server/usb/UsbService;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/ServerThread$1;->val$usbF:Lcom/android/server/usb/UsbService;

    invoke-virtual {v1}, Lcom/android/server/usb/UsbService;->systemReady()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6

    .line 760
    :cond_6
    :goto_6
    :try_start_7
    iget-object v1, p0, Lcom/android/server/ServerThread$1;->val$uiModeF:Lcom/android/server/UiModeManagerService;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/ServerThread$1;->val$uiModeF:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v1}, Lcom/android/server/UiModeManagerService;->systemReady()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_7

    .line 765
    :cond_7
    :goto_7
    :try_start_8
    iget-object v1, p0, Lcom/android/server/ServerThread$1;->val$recognitionF:Lcom/android/server/RecognitionManagerService;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/ServerThread$1;->val$recognitionF:Lcom/android/server/RecognitionManagerService;

    invoke-virtual {v1}, Lcom/android/server/RecognitionManagerService;->systemReady()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_8

    .line 769
    :cond_8
    :goto_8
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/Watchdog;->start()V

    .line 775
    :try_start_9
    iget-object v1, p0, Lcom/android/server/ServerThread$1;->val$appWidgetF:Lcom/android/server/AppWidgetService;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/ServerThread$1;->val$appWidgetF:Lcom/android/server/AppWidgetService;

    iget-boolean v2, p0, Lcom/android/server/ServerThread$1;->val$safeMode:Z

    invoke-virtual {v1, v2}, Lcom/android/server/AppWidgetService;->systemReady(Z)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_9

    .line 780
    :cond_9
    :goto_9
    :try_start_a
    iget-object v1, p0, Lcom/android/server/ServerThread$1;->val$wallpaperF:Lcom/android/server/WallpaperManagerService;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/ServerThread$1;->val$wallpaperF:Lcom/android/server/WallpaperManagerService;

    invoke-virtual {v1}, Lcom/android/server/WallpaperManagerService;->systemReady()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_a

    .line 785
    :cond_a
    :goto_a
    :try_start_b
    iget-object v1, p0, Lcom/android/server/ServerThread$1;->val$immF:Lcom/android/server/InputMethodManagerService;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/server/ServerThread$1;->val$immF:Lcom/android/server/InputMethodManagerService;

    iget-object v2, p0, Lcom/android/server/ServerThread$1;->val$statusBarF:Lcom/android/server/StatusBarManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/InputMethodManagerService;->systemReady(Lcom/android/server/StatusBarManagerService;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_b

    .line 790
    :cond_b
    :goto_b
    :try_start_c
    iget-object v1, p0, Lcom/android/server/ServerThread$1;->val$locationF:Lcom/android/server/LocationManagerService;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/ServerThread$1;->val$locationF:Lcom/android/server/LocationManagerService;

    invoke-virtual {v1}, Lcom/android/server/LocationManagerService;->systemReady()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_c

    .line 795
    :cond_c
    :goto_c
    :try_start_d
    iget-object v1, p0, Lcom/android/server/ServerThread$1;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/ServerThread$1;->val$countryDetectorF:Lcom/android/server/CountryDetectorService;

    invoke-virtual {v1}, Lcom/android/server/CountryDetectorService;->systemReady()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_d

    .line 800
    :cond_d
    :goto_d
    :try_start_e
    iget-object v1, p0, Lcom/android/server/ServerThread$1;->val$throttleF:Lcom/android/server/ThrottleService;

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/server/ServerThread$1;->val$throttleF:Lcom/android/server/ThrottleService;

    invoke-virtual {v1}, Lcom/android/server/ThrottleService;->systemReady()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_e

    .line 805
    :cond_e
    :goto_e
    :try_start_f
    iget-object v1, p0, Lcom/android/server/ServerThread$1;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/ServerThread$1;->val$networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;

    invoke-virtual {v1}, Lcom/android/server/NetworkTimeUpdateService;->systemReady()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_f

    .line 810
    :cond_f
    :goto_f
    :try_start_10
    iget-object v1, p0, Lcom/android/server/ServerThread$1;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/server/ServerThread$1;->val$textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;

    invoke-virtual {v1}, Lcom/android/server/TextServicesManagerService;->systemReady()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_10

    .line 814
    :cond_10
    :goto_10
    return-void

    .line 726
    :catch_0
    move-exception v0

    .line 727
    .local v0, e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Battery Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 731
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_1
    move-exception v0

    .line 732
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Network Managment Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 736
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 737
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Network Stats Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 741
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_3
    move-exception v0

    .line 742
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Network Policy Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 746
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v0

    .line 747
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Connectivity Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_4

    .line 751
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v0

    .line 752
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Dock Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 756
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v0

    .line 757
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making USB Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 761
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v0

    .line 762
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making UI Mode Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 766
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v0

    .line 767
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Recognition Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 776
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v0

    .line 777
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making App Widget Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 781
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v0

    .line 782
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Wallpaper Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 786
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v0

    .line 787
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Input Method Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 791
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v0

    .line 792
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Location Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 796
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v0

    .line 797
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Country Detector Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 801
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v0

    .line 802
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Throttle Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 806
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v0

    .line 807
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Network Time Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 811
    .end local v0           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v0

    .line 812
    .restart local v0       #e:Ljava/lang/Throwable;
    iget-object v1, p0, Lcom/android/server/ServerThread$1;->this$0:Lcom/android/server/ServerThread;

    const-string v2, "making Text Services Manager Service ready"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10
.end method
