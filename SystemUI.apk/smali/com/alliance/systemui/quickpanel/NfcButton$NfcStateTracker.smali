.class final Lcom/alliance/systemui/quickpanel/NfcButton$NfcStateTracker;
.super Lcom/alliance/systemui/quickpanel/StateTracker;
.source "NfcButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alliance/systemui/quickpanel/NfcButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NfcStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alliance/systemui/quickpanel/StateTracker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alliance/systemui/quickpanel/NfcButton$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alliance/systemui/quickpanel/NfcButton$NfcStateTracker;-><init>()V

    return-void
.end method

.method private static nfcStateToFiveState(I)I
    .locals 1
    .parameter "nfcState"

    .prologue
    .line 71
    packed-switch p0, :pswitch_data_0

    .line 81
    const/4 v0, 0x6

    :goto_0
    return v0

    .line 73
    :pswitch_0
    const/4 v0, 0x2

    goto :goto_0

    .line 75
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 77
    :pswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 79
    :pswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 24
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 25
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    invoke-static {v1}, Lcom/alliance/systemui/quickpanel/NfcButton$NfcStateTracker;->nfcStateToFiveState(I)I

    move-result v1

    .line 29
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x6

    goto :goto_0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    :goto_0
    return-void

    .line 61
    :cond_0
    const-string v3, "android.nfc.extra.ADAPTER_STATE"

    const/4 v4, 0x1

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 63
    .local v1, nfcState:I
    invoke-static {v1}, Lcom/alliance/systemui/quickpanel/NfcButton$NfcStateTracker;->nfcStateToFiveState(I)I

    move-result v2

    .line 64
    .local v2, widgetState:I
    invoke-virtual {p0, p1, v2}, Lcom/alliance/systemui/quickpanel/NfcButton$NfcStateTracker;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "desiredState"

    .prologue
    .line 34
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 35
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_0

    .line 36
    const-string v1, "NfcButton"

    const-string v2, "No Nfc support."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_0
    return-void

    .line 44
    :cond_0
    new-instance v1, Lcom/alliance/systemui/quickpanel/NfcButton$NfcStateTracker$1;

    invoke-direct {v1, p0, p2, v0}, Lcom/alliance/systemui/quickpanel/NfcButton$NfcStateTracker$1;-><init>(Lcom/alliance/systemui/quickpanel/NfcButton$NfcStateTracker;ZLandroid/nfc/NfcAdapter;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/alliance/systemui/quickpanel/NfcButton$NfcStateTracker$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
