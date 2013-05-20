.class Lcom/alliance/systemui/quickpanel/Brightness$2;
.super Ljava/lang/Object;
.source "Brightness.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alliance/systemui/quickpanel/Brightness;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/alliance/systemui/quickpanel/Brightness;


# direct methods
.method constructor <init>(Lcom/alliance/systemui/quickpanel/Brightness;)V
    .locals 0
    .parameter

    .prologue
    .line 48
    iput-object p1, p0, Lcom/alliance/systemui/quickpanel/Brightness$2;->this$0:Lcom/alliance/systemui/quickpanel/Brightness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2
    .parameter "seek"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 50
    if-eqz p3, :cond_0

    .line 51
    iget-object v0, p0, Lcom/alliance/systemui/quickpanel/Brightness$2;->this$0:Lcom/alliance/systemui/quickpanel/Brightness;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lcom/alliance/systemui/quickpanel/Brightness;->adjustBrightness(IZ)V

    .line 53
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "seek"

    .prologue
    .line 56
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seek"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alliance/systemui/quickpanel/Brightness$2;->this$0:Lcom/alliance/systemui/quickpanel/Brightness;

    iget-object v1, p0, Lcom/alliance/systemui/quickpanel/Brightness$2;->this$0:Lcom/alliance/systemui/quickpanel/Brightness;

    #getter for: Lcom/alliance/systemui/quickpanel/Brightness;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v1}, Lcom/alliance/systemui/quickpanel/Brightness;->access$100(Lcom/alliance/systemui/quickpanel/Brightness;)Landroid/widget/SeekBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    iget-object v2, p0, Lcom/alliance/systemui/quickpanel/Brightness$2;->this$0:Lcom/alliance/systemui/quickpanel/Brightness;

    #getter for: Lcom/alliance/systemui/quickpanel/Brightness;->mAuto:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/alliance/systemui/quickpanel/Brightness;->access$000(Lcom/alliance/systemui/quickpanel/Brightness;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/alliance/systemui/quickpanel/Brightness;->adjustBrightness(IZZ)V

    .line 60
    return-void
.end method
