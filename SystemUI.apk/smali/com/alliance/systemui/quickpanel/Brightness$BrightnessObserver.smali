.class Lcom/alliance/systemui/quickpanel/Brightness$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "Brightness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alliance/systemui/quickpanel/Brightness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BrightnessObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alliance/systemui/quickpanel/Brightness;


# direct methods
.method public constructor <init>(Lcom/alliance/systemui/quickpanel/Brightness;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/alliance/systemui/quickpanel/Brightness$BrightnessObserver;->this$0:Lcom/alliance/systemui/quickpanel/Brightness;

    .line 71
    iget-object v0, p1, Lcom/alliance/systemui/quickpanel/Brightness;->mHandler:Landroid/os/Handler;

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 72
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .parameter "a"

    .prologue
    const/16 v5, 0x8

    const/4 v3, 0x0

    .line 75
    iget-object v4, p0, Lcom/alliance/systemui/quickpanel/Brightness$BrightnessObserver;->this$0:Lcom/alliance/systemui/quickpanel/Brightness;

    invoke-virtual {v4}, Lcom/alliance/systemui/quickpanel/Brightness;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/alliance/systemui/quickpanel/Brightness;->getShowBrightness(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 76
    iget-object v4, p0, Lcom/alliance/systemui/quickpanel/Brightness$BrightnessObserver;->this$0:Lcom/alliance/systemui/quickpanel/Brightness;

    invoke-virtual {v4, v5}, Lcom/alliance/systemui/quickpanel/Brightness;->setVisibility(I)V

    .line 82
    :goto_0
    iget-object v4, p0, Lcom/alliance/systemui/quickpanel/Brightness$BrightnessObserver;->this$0:Lcom/alliance/systemui/quickpanel/Brightness;

    invoke-virtual {v4}, Lcom/alliance/systemui/quickpanel/Brightness;->getContext()Landroid/content/Context;

    move-result-object v4

    #calls: Lcom/alliance/systemui/quickpanel/Brightness;->getBrightness(Landroid/content/Context;)I
    invoke-static {v4}, Lcom/alliance/systemui/quickpanel/Brightness;->access$200(Landroid/content/Context;)I

    move-result v1

    .line 83
    .local v1, brightness:I
    iget-object v4, p0, Lcom/alliance/systemui/quickpanel/Brightness$BrightnessObserver;->this$0:Lcom/alliance/systemui/quickpanel/Brightness;

    #calls: Lcom/alliance/systemui/quickpanel/Brightness;->isAutomaticModeSupported()Z
    invoke-static {v4}, Lcom/alliance/systemui/quickpanel/Brightness;->access$300(Lcom/alliance/systemui/quickpanel/Brightness;)Z

    move-result v2

    .line 84
    .local v2, supportAuto:Z
    iget-object v4, p0, Lcom/alliance/systemui/quickpanel/Brightness$BrightnessObserver;->this$0:Lcom/alliance/systemui/quickpanel/Brightness;

    #calls: Lcom/alliance/systemui/quickpanel/Brightness;->isBrightnessSetToAutomatic()Z
    invoke-static {v4}, Lcom/alliance/systemui/quickpanel/Brightness;->access$400(Lcom/alliance/systemui/quickpanel/Brightness;)Z

    move-result v0

    .line 86
    .local v0, auto:Z
    if-nez v2, :cond_2

    .line 87
    iget-object v4, p0, Lcom/alliance/systemui/quickpanel/Brightness$BrightnessObserver;->this$0:Lcom/alliance/systemui/quickpanel/Brightness;

    #getter for: Lcom/alliance/systemui/quickpanel/Brightness;->mAuto:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/alliance/systemui/quickpanel/Brightness;->access$000(Lcom/alliance/systemui/quickpanel/Brightness;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 93
    :goto_1
    iget-object v4, p0, Lcom/alliance/systemui/quickpanel/Brightness$BrightnessObserver;->this$0:Lcom/alliance/systemui/quickpanel/Brightness;

    #getter for: Lcom/alliance/systemui/quickpanel/Brightness;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/alliance/systemui/quickpanel/Brightness;->access$100(Lcom/alliance/systemui/quickpanel/Brightness;)Landroid/widget/SeekBar;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 94
    iget-object v4, p0, Lcom/alliance/systemui/quickpanel/Brightness$BrightnessObserver;->this$0:Lcom/alliance/systemui/quickpanel/Brightness;

    #getter for: Lcom/alliance/systemui/quickpanel/Brightness;->mAuto:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/alliance/systemui/quickpanel/Brightness;->access$000(Lcom/alliance/systemui/quickpanel/Brightness;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 95
    iget-object v4, p0, Lcom/alliance/systemui/quickpanel/Brightness$BrightnessObserver;->this$0:Lcom/alliance/systemui/quickpanel/Brightness;

    #getter for: Lcom/alliance/systemui/quickpanel/Brightness;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v4}, Lcom/alliance/systemui/quickpanel/Brightness;->access$100(Lcom/alliance/systemui/quickpanel/Brightness;)Landroid/widget/SeekBar;

    move-result-object v4

    if-nez v0, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-virtual {v4, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 96
    return-void

    .line 79
    .end local v0           #auto:Z
    .end local v1           #brightness:I
    .end local v2           #supportAuto:Z
    :cond_1
    iget-object v4, p0, Lcom/alliance/systemui/quickpanel/Brightness$BrightnessObserver;->this$0:Lcom/alliance/systemui/quickpanel/Brightness;

    invoke-virtual {v4, v3}, Lcom/alliance/systemui/quickpanel/Brightness;->setVisibility(I)V

    goto :goto_0

    .line 90
    .restart local v0       #auto:Z
    .restart local v1       #brightness:I
    .restart local v2       #supportAuto:Z
    :cond_2
    iget-object v4, p0, Lcom/alliance/systemui/quickpanel/Brightness$BrightnessObserver;->this$0:Lcom/alliance/systemui/quickpanel/Brightness;

    #getter for: Lcom/alliance/systemui/quickpanel/Brightness;->mAuto:Landroid/widget/CheckBox;
    invoke-static {v4}, Lcom/alliance/systemui/quickpanel/Brightness;->access$000(Lcom/alliance/systemui/quickpanel/Brightness;)Landroid/widget/CheckBox;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1
.end method
