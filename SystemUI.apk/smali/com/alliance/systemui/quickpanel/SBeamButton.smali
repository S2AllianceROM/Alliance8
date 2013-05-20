.class public Lcom/alliance/systemui/quickpanel/SBeamButton;
.super Lcom/alliance/systemui/quickpanel/PowerButton;
.source "SBeamButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alliance/systemui/quickpanel/SBeamButton$1;,
        Lcom/alliance/systemui/quickpanel/SBeamButton$SBeamStateTracker;
    }
.end annotation


# static fields
.field private static final OBSERVED_URIS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private static final sSBeamState:Lcom/alliance/systemui/quickpanel/StateTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Lcom/alliance/systemui/quickpanel/SBeamButton$SBeamStateTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alliance/systemui/quickpanel/SBeamButton$SBeamStateTracker;-><init>(Lcom/alliance/systemui/quickpanel/SBeamButton$1;)V

    sput-object v0, Lcom/alliance/systemui/quickpanel/SBeamButton;->sSBeamState:Lcom/alliance/systemui/quickpanel/StateTracker;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/alliance/systemui/quickpanel/SBeamButton;->OBSERVED_URIS:Ljava/util/List;

    .line 26
    sget-object v0, Lcom/alliance/systemui/quickpanel/SBeamButton;->OBSERVED_URIS:Ljava/util/List;

    const-string v1, "sbeam_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 91
    invoke-direct {p0}, Lcom/alliance/systemui/quickpanel/PowerButton;-><init>()V

    const-string v0, "toggleSBeam"

    iput-object v0, p0, Lcom/alliance/systemui/quickpanel/SBeamButton;->mType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getBroadcastIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 141
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 142
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    return-object v0
.end method

.method protected getObservedUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    sget-object v0, Lcom/alliance/systemui/quickpanel/SBeamButton;->OBSERVED_URIS:Ljava/util/List;

    return-object v0
.end method

.method protected getText()I
    .locals 1

    .prologue
    .line 147
    const v0, 0x509001a

    return v0
.end method

.method protected handleLongClick()Z
    .locals 3

    .prologue
    .line 123
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 124
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$SBeamSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 126
    iget-object v1, p0, Lcom/alliance/systemui/quickpanel/SBeamButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 128
    const/4 v1, 0x1

    return v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 132
    sget-object v0, Lcom/alliance/systemui/quickpanel/SBeamButton;->sSBeamState:Lcom/alliance/systemui/quickpanel/StateTracker;

    invoke-virtual {v0, p1, p2}, Lcom/alliance/systemui/quickpanel/StateTracker;->onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V

    .line 133
    return-void
.end method

.method protected toggleState()V
    .locals 2

    .prologue
    .line 118
    sget-object v0, Lcom/alliance/systemui/quickpanel/SBeamButton;->sSBeamState:Lcom/alliance/systemui/quickpanel/StateTracker;

    iget-object v1, p0, Lcom/alliance/systemui/quickpanel/SBeamButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alliance/systemui/quickpanel/StateTracker;->toggleState(Landroid/content/Context;)V

    .line 119
    invoke-virtual {p0}, Lcom/alliance/systemui/quickpanel/SBeamButton;->update()V

    .line 120
    return-void
.end method

.method protected updateState()V
    .locals 4

    .prologue
    const v3, 0x502007c

    const v2, 0x502007b

    .line 94
    sget-object v0, Lcom/alliance/systemui/quickpanel/SBeamButton;->sSBeamState:Lcom/alliance/systemui/quickpanel/StateTracker;

    iget-object v1, p0, Lcom/alliance/systemui/quickpanel/SBeamButton;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alliance/systemui/quickpanel/StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/alliance/systemui/quickpanel/SBeamButton;->mState:I

    .line 95
    iget v0, p0, Lcom/alliance/systemui/quickpanel/SBeamButton;->mState:I

    packed-switch v0, :pswitch_data_0

    .line 115
    :goto_0
    :pswitch_0
    return-void

    .line 97
    :pswitch_1
    iput v2, p0, Lcom/alliance/systemui/quickpanel/SBeamButton;->mIcon:I

    goto :goto_0

    .line 100
    :pswitch_2
    iput v3, p0, Lcom/alliance/systemui/quickpanel/SBeamButton;->mIcon:I

    goto :goto_0

    .line 108
    :pswitch_3
    sget-object v0, Lcom/alliance/systemui/quickpanel/SBeamButton;->sSBeamState:Lcom/alliance/systemui/quickpanel/StateTracker;

    invoke-virtual {v0}, Lcom/alliance/systemui/quickpanel/StateTracker;->isTurningOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iput v3, p0, Lcom/alliance/systemui/quickpanel/SBeamButton;->mIcon:I

    goto :goto_0

    .line 111
    :cond_0
    iput v2, p0, Lcom/alliance/systemui/quickpanel/SBeamButton;->mIcon:I

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
