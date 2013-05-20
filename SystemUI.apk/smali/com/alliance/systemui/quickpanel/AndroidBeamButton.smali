.class public Lcom/alliance/systemui/quickpanel/AndroidBeamButton;
.super Lcom/alliance/systemui/quickpanel/PowerButton;
.source "AndroidBeamButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alliance/systemui/quickpanel/AndroidBeamButton$1;,
        Lcom/alliance/systemui/quickpanel/AndroidBeamButton$AndroidBeamStateTracker;
    }
.end annotation


# static fields
.field private static final sState:Lcom/alliance/systemui/quickpanel/StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/alliance/systemui/quickpanel/AndroidBeamButton$AndroidBeamStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alliance/systemui/quickpanel/AndroidBeamButton$AndroidBeamStateTracker;-><init>(Lcom/alliance/systemui/quickpanel/AndroidBeamButton$1;)V

    sput-object v0, Lcom/alliance/systemui/quickpanel/AndroidBeamButton;->sState:Lcom/alliance/systemui/quickpanel/StateTracker;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/alliance/systemui/quickpanel/PowerButton;-><init>()V

    const-string v0, "toggleAndroidBeam"

    iput-object v0, p0, Lcom/alliance/systemui/quickpanel/AndroidBeamButton;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 122
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 123
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    return-object v0
.end method

.method protected getText()I
    .locals 1

    .prologue
    .line 128
    const v0, 0x5090019

    return v0
.end method

.method protected handleLongClick()Z
    .locals 2

    .prologue
    .line 109
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.NFCSHARING_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 112
    iget-object v1, p0, Lcom/alliance/systemui/quickpanel/AndroidBeamButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 114
    const/4 v1, 0x1

    return v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 118
    sget-object v0, Lcom/alliance/systemui/quickpanel/AndroidBeamButton;->sState:Lcom/alliance/systemui/quickpanel/StateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/alliance/systemui/quickpanel/StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 119
    return-void
.end method

.method protected toggleState()V
    .locals 2

    .prologue
    .line 104
    sget-object v0, Lcom/alliance/systemui/quickpanel/AndroidBeamButton;->sState:Lcom/alliance/systemui/quickpanel/StateTracker;

    iget-object v1, p0, Lcom/alliance/systemui/quickpanel/AndroidBeamButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alliance/systemui/quickpanel/StateTracker;->toggleState(Landroid/content/Context;)V

    .line 105
    invoke-virtual {p0}, Lcom/alliance/systemui/quickpanel/AndroidBeamButton;->update()V

    .line 106
    return-void
.end method

.method protected updateState()V
    .locals 4

    .prologue
    const v3, 0x5020057

    const v2, 0x5020056

    .line 80
    sget-object v0, Lcom/alliance/systemui/quickpanel/AndroidBeamButton;->sState:Lcom/alliance/systemui/quickpanel/StateTracker;

    iget-object v1, p0, Lcom/alliance/systemui/quickpanel/AndroidBeamButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alliance/systemui/quickpanel/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/alliance/systemui/quickpanel/AndroidBeamButton;->mState:I

    .line 81
    iget v0, p0, Lcom/alliance/systemui/quickpanel/AndroidBeamButton;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 101
    :goto_0
    :pswitch_0
    return-void

    .line 83
    :pswitch_1
    iput v2, p0, Lcom/alliance/systemui/quickpanel/AndroidBeamButton;->mIcon:I

    goto :goto_0

    .line 86
    :pswitch_2
    iput v3, p0, Lcom/alliance/systemui/quickpanel/AndroidBeamButton;->mIcon:I

    goto :goto_0

    .line 94
    :pswitch_3
    sget-object v0, Lcom/alliance/systemui/quickpanel/AndroidBeamButton;->sState:Lcom/alliance/systemui/quickpanel/StateTracker;

    invoke-virtual {v0}, Lcom/alliance/systemui/quickpanel/StateTracker;->isTurningOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iput v3, p0, Lcom/alliance/systemui/quickpanel/AndroidBeamButton;->mIcon:I

    goto :goto_0

    .line 97
    :cond_0
    iput v2, p0, Lcom/alliance/systemui/quickpanel/AndroidBeamButton;->mIcon:I

    goto :goto_0

    .line 81
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
