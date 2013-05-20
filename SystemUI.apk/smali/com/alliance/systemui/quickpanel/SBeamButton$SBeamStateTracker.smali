.class final Lcom/alliance/systemui/quickpanel/SBeamButton$SBeamStateTracker;
.super Lcom/alliance/systemui/quickpanel/StateTracker;
.source "SBeamButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alliance/systemui/quickpanel/SBeamButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SBeamStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alliance/systemui/quickpanel/StateTracker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alliance/systemui/quickpanel/SBeamButton$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/alliance/systemui/quickpanel/SBeamButton$SBeamStateTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    .line 34
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 35
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "sbeam_mode"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 38
    .local v1, sbeamMode:I
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    if-ne v1, v2, :cond_0

    .line 46
    .end local v1           #sbeamMode:I
    :goto_0
    return v2

    .line 42
    .restart local v1       #sbeamMode:I
    :cond_0
    const/4 v2, 0x2

    goto :goto_0

    .line 46
    .end local v1           #sbeamMode:I
    :cond_1
    const/4 v2, 0x6

    goto :goto_0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, action:Ljava/lang/String;
    const-string v4, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 76
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 77
    .local v1, adapter:Landroid/nfc/NfcAdapter;
    if-nez v1, :cond_1

    .line 88
    .end local v1           #adapter:Landroid/nfc/NfcAdapter;
    :cond_0
    :goto_0
    return-void

    .line 80
    .restart local v1       #adapter:Landroid/nfc/NfcAdapter;
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sbeam_mode"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 81
    .local v3, sbeamMode:I
    const-string v4, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 83
    .local v2, nfcState:I
    if-ne v3, v7, :cond_2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2

    .line 84
    invoke-virtual {p0, p1, v7}, Lcom/alliance/systemui/quickpanel/SBeamButton$SBeamStateTracker;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_0

    .line 86
    :cond_2
    const/4 v4, 0x2

    invoke-virtual {p0, p1, v4}, Lcom/alliance/systemui/quickpanel/SBeamButton$SBeamStateTracker;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "desiredState"

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 51
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 52
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_0

    .line 53
    const-string v3, "SBeamButton"

    const-string v4, "No Nfc support."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :goto_0
    return-void

    .line 57
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.settings.action.SBEAM_STATE_UPDATED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 58
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    .line 59
    .local v2, nfcState:I
    if-eqz p2, :cond_2

    .line 60
    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    if-eq v2, v5, :cond_1

    .line 62
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 64
    :cond_1
    const-string v3, "turn_on"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 65
    invoke-virtual {p0, p1, v4}, Lcom/alliance/systemui/quickpanel/SBeamButton$SBeamStateTracker;->setCurrentState(Landroid/content/Context;I)V

    .line 70
    :goto_1
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 67
    :cond_2
    const-string v3, "turn_on"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, p1, v5}, Lcom/alliance/systemui/quickpanel/SBeamButton$SBeamStateTracker;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_1
.end method
