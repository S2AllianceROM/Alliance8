.class public Lcom/alliance/systemui/quickpanel/BluetoothButton;
.super Lcom/alliance/systemui/quickpanel/PowerButton;
.source "BluetoothButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alliance/systemui/quickpanel/BluetoothButton$1;,
        Lcom/alliance/systemui/quickpanel/BluetoothButton$BluetoothStateTracker;
    }
.end annotation


# static fields
.field private static final sBluetoothState:Lcom/alliance/systemui/quickpanel/StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/alliance/systemui/quickpanel/BluetoothButton$BluetoothStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alliance/systemui/quickpanel/BluetoothButton$BluetoothStateTracker;-><init>(Lcom/alliance/systemui/quickpanel/BluetoothButton$1;)V

    sput-object v0, Lcom/alliance/systemui/quickpanel/BluetoothButton;->sBluetoothState:Lcom/alliance/systemui/quickpanel/StateTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/alliance/systemui/quickpanel/PowerButton;-><init>()V

    const-string v0, "toggleBluetooth"

    iput-object v0, p0, Lcom/alliance/systemui/quickpanel/BluetoothButton;->mType:Ljava/lang/String;

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
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    return-object v0
.end method

.method protected getText()I
    .locals 1

    .prologue
    .line 136
    const v0, 0x509000d

    return v0
.end method

.method protected handleLongClick()Z
    .locals 2

    .prologue
    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 119
    iget-object v1, p0, Lcom/alliance/systemui/quickpanel/BluetoothButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 120
    const/4 v1, 0x1

    return v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 125
    sget-object v0, Lcom/alliance/systemui/quickpanel/BluetoothButton;->sBluetoothState:Lcom/alliance/systemui/quickpanel/StateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/alliance/systemui/quickpanel/StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 126
    return-void
.end method

.method protected toggleState()V
    .locals 2

    .prologue
    .line 111
    sget-object v0, Lcom/alliance/systemui/quickpanel/BluetoothButton;->sBluetoothState:Lcom/alliance/systemui/quickpanel/StateTracker;

    iget-object v1, p0, Lcom/alliance/systemui/quickpanel/BluetoothButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alliance/systemui/quickpanel/StateTracker;->toggleState(Landroid/content/Context;)V

    .line 112
    return-void
.end method

.method protected updateState()V
    .locals 4

    .prologue
    const v3, 0x502005c

    const v2, 0x502005b

    .line 86
    sget-object v0, Lcom/alliance/systemui/quickpanel/BluetoothButton;->sBluetoothState:Lcom/alliance/systemui/quickpanel/StateTracker;

    iget-object v1, p0, Lcom/alliance/systemui/quickpanel/BluetoothButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alliance/systemui/quickpanel/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/alliance/systemui/quickpanel/BluetoothButton;->mState:I

    .line 87
    iget v0, p0, Lcom/alliance/systemui/quickpanel/BluetoothButton;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 107
    :goto_0
    :pswitch_0
    return-void

    .line 89
    :pswitch_1
    iput v2, p0, Lcom/alliance/systemui/quickpanel/BluetoothButton;->mIcon:I

    goto :goto_0

    .line 92
    :pswitch_2
    iput v3, p0, Lcom/alliance/systemui/quickpanel/BluetoothButton;->mIcon:I

    goto :goto_0

    .line 100
    :pswitch_3
    sget-object v0, Lcom/alliance/systemui/quickpanel/BluetoothButton;->sBluetoothState:Lcom/alliance/systemui/quickpanel/StateTracker;

    invoke-virtual {v0}, Lcom/alliance/systemui/quickpanel/StateTracker;->isTurningOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iput v3, p0, Lcom/alliance/systemui/quickpanel/BluetoothButton;->mIcon:I

    goto :goto_0

    .line 103
    :cond_0
    iput v2, p0, Lcom/alliance/systemui/quickpanel/BluetoothButton;->mIcon:I

    goto :goto_0

    .line 87
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
