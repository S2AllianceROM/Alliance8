.class final Lcom/alliance/systemui/quickpanel/AndroidBeamButton$AndroidBeamStateTracker;
.super Lcom/alliance/systemui/quickpanel/StateTracker;
.source "AndroidBeamButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alliance/systemui/quickpanel/AndroidBeamButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AndroidBeamStateTracker"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alliance/systemui/quickpanel/StateTracker;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alliance/systemui/quickpanel/AndroidBeamButton$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/alliance/systemui/quickpanel/AndroidBeamButton$AndroidBeamStateTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualState(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 24
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 25
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    const/4 v1, 0x1

    .line 34
    :goto_0
    return v1

    .line 30
    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    .line 34
    :cond_1
    const/4 v1, 0x6

    goto :goto_0
.end method

.method public onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 60
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    .line 65
    .local v1, adapter:Landroid/nfc/NfcAdapter;
    if-eqz v1, :cond_0

    .line 68
    const-string v3, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 70
    .local v2, nfcState:I
    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 71
    invoke-virtual {p0, p1, v4}, Lcom/alliance/systemui/quickpanel/AndroidBeamButton$AndroidBeamStateTracker;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_0

    .line 73
    :cond_2
    const/4 v3, 0x2

    invoke-virtual {p0, p1, v3}, Lcom/alliance/systemui/quickpanel/AndroidBeamButton$AndroidBeamStateTracker;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected requestStateChange(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "desiredState"

    .prologue
    const/4 v3, 0x2

    .line 39
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    .line 40
    .local v0, adapter:Landroid/nfc/NfcAdapter;
    if-nez v0, :cond_0

    .line 41
    const-string v2, "AndroidBeamButton"

    const-string v3, "No Nfc support."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    .line 46
    .local v1, nfcState:I
    if-eqz p2, :cond_2

    .line 47
    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    if-eq v1, v3, :cond_1

    .line 49
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 51
    :cond_1
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    .line 52
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/alliance/systemui/quickpanel/AndroidBeamButton$AndroidBeamStateTracker;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    .line 55
    invoke-virtual {p0, p1, v3}, Lcom/alliance/systemui/quickpanel/AndroidBeamButton$AndroidBeamStateTracker;->setCurrentState(Landroid/content/Context;I)V

    goto :goto_0
.end method
