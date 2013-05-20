.class public Lcom/alliance/systemui/quickpanel/FlashlightButton;
.super Lcom/alliance/systemui/quickpanel/PowerButton;
.source "FlashlightButton.java"


# instance fields
.field private mGotInfo:Z

.field private mIsFlashSupported:Z

.field private mLedController:Lcom/alliance/util/LedController;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/alliance/systemui/quickpanel/PowerButton;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alliance/systemui/quickpanel/FlashlightButton;->mGotInfo:Z

    invoke-static {}, Lcom/alliance/util/LedController;->getInstance()Lcom/alliance/util/LedController;

    move-result-object v0

    iput-object v0, p0, Lcom/alliance/systemui/quickpanel/FlashlightButton;->mLedController:Lcom/alliance/util/LedController;

    const-string v0, "toggleFlashlight"

    iput-object v0, p0, Lcom/alliance/systemui/quickpanel/FlashlightButton;->mType:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/alliance/systemui/quickpanel/FlashlightButton;->mState:I

    return-void
.end method


# virtual methods
.method protected getText()I
    .locals 1

    const v0, 0x5090015

    return v0
.end method

.method protected handleLongClick()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected toggleState()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/alliance/systemui/quickpanel/FlashlightButton;->mGotInfo:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alliance/systemui/quickpanel/FlashlightButton;->mLedController:Lcom/alliance/util/LedController;

    invoke-virtual {v0}, Lcom/alliance/util/LedController;->isFlashSupported()Z

    move-result v0

    iput-boolean v0, p0, Lcom/alliance/systemui/quickpanel/FlashlightButton;->mIsFlashSupported:Z

    iput-boolean v1, p0, Lcom/alliance/systemui/quickpanel/FlashlightButton;->mGotInfo:Z

    :cond_0
    iget-boolean v0, p0, Lcom/alliance/systemui/quickpanel/FlashlightButton;->mIsFlashSupported:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/alliance/systemui/quickpanel/FlashlightButton;->mState:I

    if-ne v0, v1, :cond_1

    iput v2, p0, Lcom/alliance/systemui/quickpanel/FlashlightButton;->mState:I

    iget-object v0, p0, Lcom/alliance/systemui/quickpanel/FlashlightButton;->mLedController:Lcom/alliance/util/LedController;

    invoke-virtual {v0}, Lcom/alliance/util/LedController;->off()V

    :goto_0
    invoke-virtual {p0}, Lcom/alliance/systemui/quickpanel/FlashlightButton;->update()V

    :goto_1
    return-void

    :cond_1
    iput v1, p0, Lcom/alliance/systemui/quickpanel/FlashlightButton;->mState:I

    iget-object v0, p0, Lcom/alliance/systemui/quickpanel/FlashlightButton;->mLedController:Lcom/alliance/util/LedController;

    invoke-virtual {v0}, Lcom/alliance/util/LedController;->on()V

    goto :goto_0

    :cond_2
    iput v2, p0, Lcom/alliance/systemui/quickpanel/FlashlightButton;->mState:I

    goto :goto_1
.end method

.method protected updateState()V
    .locals 1

    iget v0, p0, Lcom/alliance/systemui/quickpanel/FlashlightButton;->mState:I

    packed-switch v0, :pswitch_data_0

    const v0, 0x5020067

    iput v0, p0, Lcom/alliance/systemui/quickpanel/FlashlightButton;->mIcon:I

    :goto_0
    return-void

    :pswitch_0
    const v0, 0x5020068

    iput v0, p0, Lcom/alliance/systemui/quickpanel/FlashlightButton;->mIcon:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
