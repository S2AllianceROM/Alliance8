.class final Lcom/alliance/systemui/quickpanel/WifiButton$WifiStateTracker;
.super Lcom/alliance/systemui/quickpanel/StateTracker;
.source "WifiButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alliance/systemui/quickpanel/WifiButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "WifiStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alliance/systemui/quickpanel/StateTracker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alliance/systemui/quickpanel/WifiButton$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/alliance/systemui/quickpanel/WifiButton$WifiStateTracker;-><init>()V

    return-void
.end method

.method private static wifiStateToFiveState(I)I
    .locals 1
    .parameter "wifiState"

    .prologue
    .line 99
    packed-switch p0, :pswitch_data_0

    .line 109
    const/4 v0, 0x6

    :goto_0
    return v0

    .line 101
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 103
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 105
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 107
    :pswitch_3
    const/4 v0, 0x3

    goto :goto_0

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 28
    const-string v1, "wifi"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 30
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    invoke-static {v1}, Lcom/alliance/systemui/quickpanel/WifiButton$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v1

    .line 33
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x6

    goto :goto_0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 84
    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 92
    :goto_0
    return-void

    .line 88
    :cond_0
    const-string v2, "wifi_state"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 90
    .local v1, wifiState:I
    invoke-static {v1}, Lcom/alliance/systemui/quickpanel/WifiButton$WifiStateTracker;->wifiStateToFiveState(I)I

    move-result v0

    .line 91
    .local v0, widgetState:I
    invoke-virtual {p0, p1, v0}, Lcom/alliance/systemui/quickpanel/WifiButton$WifiStateTracker;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 39
    move-object v0, p1

    .line 40
    .local v0, viewContext:Landroid/content/Context;
    const-string v2, "wifi"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 42
    .local v1, wifiManager:Landroid/net/wifi/WifiManager;
    if-nez v1, :cond_0

    .line 43
    const-string v2, "WifiButton"

    const-string v3, "No wifiManager."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :goto_0
    return-void

    .line 51
    :cond_0
    new-instance v2, Lcom/alliance/systemui/quickpanel/WifiButton$WifiStateTracker$1;

    invoke-direct {v2, p0, v1, p2, v0}, Lcom/alliance/systemui/quickpanel/WifiButton$WifiStateTracker$1;-><init>(Lcom/alliance/systemui/quickpanel/WifiButton$WifiStateTracker;Landroid/net/wifi/WifiManager;ZLandroid/content/Context;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/alliance/systemui/quickpanel/WifiButton$WifiStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
