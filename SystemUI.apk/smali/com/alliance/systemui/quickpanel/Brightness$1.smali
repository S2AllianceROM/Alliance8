.class Lcom/alliance/systemui/quickpanel/Brightness$1;
.super Ljava/lang/Object;
.source "Brightness.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 40
    iput-object p1, p0, Lcom/alliance/systemui/quickpanel/Brightness$1;->this$0:Lcom/alliance/systemui/quickpanel/Brightness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v1, 0x1

    .line 42
    iget-object v2, p0, Lcom/alliance/systemui/quickpanel/Brightness$1;->this$0:Lcom/alliance/systemui/quickpanel/Brightness;

    #getter for: Lcom/alliance/systemui/quickpanel/Brightness;->mAuto:Landroid/widget/CheckBox;
    invoke-static {v2}, Lcom/alliance/systemui/quickpanel/Brightness;->access$000(Lcom/alliance/systemui/quickpanel/Brightness;)Landroid/widget/CheckBox;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 43
    .local v0, checked:Z
    iget-object v2, p0, Lcom/alliance/systemui/quickpanel/Brightness$1;->this$0:Lcom/alliance/systemui/quickpanel/Brightness;

    iget-object v3, p0, Lcom/alliance/systemui/quickpanel/Brightness$1;->this$0:Lcom/alliance/systemui/quickpanel/Brightness;

    #getter for: Lcom/alliance/systemui/quickpanel/Brightness;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v3}, Lcom/alliance/systemui/quickpanel/Brightness;->access$100(Lcom/alliance/systemui/quickpanel/Brightness;)Landroid/widget/SeekBar;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/alliance/systemui/quickpanel/Brightness;->adjustBrightness(IZZ)V

    .line 44
    iget-object v2, p0, Lcom/alliance/systemui/quickpanel/Brightness$1;->this$0:Lcom/alliance/systemui/quickpanel/Brightness;

    #getter for: Lcom/alliance/systemui/quickpanel/Brightness;->mSeekBar:Landroid/widget/SeekBar;
    invoke-static {v2}, Lcom/alliance/systemui/quickpanel/Brightness;->access$100(Lcom/alliance/systemui/quickpanel/Brightness;)Landroid/widget/SeekBar;

    move-result-object v2

    if-nez v0, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 45
    return-void

    .line 44
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
