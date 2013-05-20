.class public Lcom/alliance/systemui/quickpanel/NfcButton;
.super Lcom/alliance/systemui/quickpanel/PowerButton;
.source "NfcButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alliance/systemui/quickpanel/NfcButton$1;,
        Lcom/alliance/systemui/quickpanel/NfcButton$NfcStateTracker;
    }
.end annotation


# static fields
.field private static final sNfcState:Lcom/alliance/systemui/quickpanel/StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/alliance/systemui/quickpanel/NfcButton$NfcStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alliance/systemui/quickpanel/NfcButton$NfcStateTracker;-><init>(Lcom/alliance/systemui/quickpanel/NfcButton$1;)V

    sput-object v0, Lcom/alliance/systemui/quickpanel/NfcButton;->sNfcState:Lcom/alliance/systemui/quickpanel/StateTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/alliance/systemui/quickpanel/PowerButton;-><init>()V

    const-string v0, "toggleNfc"

    iput-object v0, p0, Lcom/alliance/systemui/quickpanel/NfcButton;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 130
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 131
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    return-object v0
.end method

.method protected getText()I
    .locals 1

    .prologue
    .line 136
    const v0, 0x5090018

    return v0
.end method

.method protected handleLongClick()Z
    .locals 2

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.NFC_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 120
    iget-object v1, p0, Lcom/alliance/systemui/quickpanel/NfcButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 122
    const/4 v1, 0x1

    return v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 126
    sget-object v0, Lcom/alliance/systemui/quickpanel/NfcButton;->sNfcState:Lcom/alliance/systemui/quickpanel/StateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/alliance/systemui/quickpanel/StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 127
    return-void
.end method

.method protected toggleState()V
    .locals 2

    .prologue
    .line 113
    sget-object v0, Lcom/alliance/systemui/quickpanel/NfcButton;->sNfcState:Lcom/alliance/systemui/quickpanel/StateTracker;

    iget-object v1, p0, Lcom/alliance/systemui/quickpanel/NfcButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alliance/systemui/quickpanel/StateTracker;->toggleState(Landroid/content/Context;)V

    .line 114
    return-void
.end method

.method protected updateState()V
    .locals 4

    .prologue
    const v3, 0x5020072

    const v2, 0x5020071

    .line 89
    sget-object v0, Lcom/alliance/systemui/quickpanel/NfcButton;->sNfcState:Lcom/alliance/systemui/quickpanel/StateTracker;

    iget-object v1, p0, Lcom/alliance/systemui/quickpanel/NfcButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alliance/systemui/quickpanel/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/alliance/systemui/quickpanel/NfcButton;->mState:I

    .line 90
    iget v0, p0, Lcom/alliance/systemui/quickpanel/NfcButton;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 110
    :goto_0
    :pswitch_0
    return-void

    .line 92
    :pswitch_1
    iput v2, p0, Lcom/alliance/systemui/quickpanel/NfcButton;->mIcon:I

    goto :goto_0

    .line 95
    :pswitch_2
    iput v3, p0, Lcom/alliance/systemui/quickpanel/NfcButton;->mIcon:I

    goto :goto_0

    .line 103
    :pswitch_3
    sget-object v0, Lcom/alliance/systemui/quickpanel/NfcButton;->sNfcState:Lcom/alliance/systemui/quickpanel/StateTracker;

    invoke-virtual {v0}, Lcom/alliance/systemui/quickpanel/StateTracker;->isTurningOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iput v3, p0, Lcom/alliance/systemui/quickpanel/NfcButton;->mIcon:I

    goto :goto_0

    .line 106
    :cond_0
    iput v2, p0, Lcom/alliance/systemui/quickpanel/NfcButton;->mIcon:I

    goto :goto_0

    .line 90
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
