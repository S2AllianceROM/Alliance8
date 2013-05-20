.class Lcom/android/systemui/multiwindow/CenterBarWindow$3;
.super Ljava/lang/Object;
.source "CenterBarWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/multiwindow/CenterBarWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/multiwindow/CenterBarWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 430
    iput-object p1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 432
    const-string v0, "FlashBarService"

    const-string v1, "centerBarWindow onTouch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    #getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mMode:I
    invoke-static {v0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$200(Lcom/android/systemui/multiwindow/CenterBarWindow;)I

    move-result v0

    sget v1, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->ARRANGE_SPLITED:I

    if-ne v0, v1, :cond_0

    .line 435
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    #getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$300(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/view/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 480
    :cond_0
    :goto_0
    return v5

    .line 439
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    #getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mDisplayOrientation:I
    invoke-static {v0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$400(Lcom/android/systemui/multiwindow/CenterBarWindow;)I

    move-result v0

    if-ne v0, v5, :cond_6

    .line 440
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    #getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchStartY:I
    invoke-static {v0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$500(Lcom/android/systemui/multiwindow/CenterBarWindow;)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    #getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarTouchApprovalDistance:I
    invoke-static {v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$600(Lcom/android/systemui/multiwindow/CenterBarWindow;)I

    move-result v1

    if-le v0, v1, :cond_2

    .line 441
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    #setter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I
    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$702(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I

    .line 442
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    #setter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I
    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$802(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I

    .line 443
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    #setter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchStartX:I
    invoke-static {v0, v4}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$902(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I

    .line 444
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    #setter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchStartY:I
    invoke-static {v0, v4}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$502(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I

    .line 455
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    const/4 v1, -0x1

    #setter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarDirection:I
    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1002(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I

    .line 456
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    #getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I
    invoke-static {v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$700(Lcom/android/systemui/multiwindow/CenterBarWindow;)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    #getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I
    invoke-static {v2}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1100(Lcom/android/systemui/multiwindow/CenterBarWindow;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    #getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I
    invoke-static {v2}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$800(Lcom/android/systemui/multiwindow/CenterBarWindow;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    #getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarSize:I
    invoke-static {v3}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1100(Lcom/android/systemui/multiwindow/CenterBarWindow;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/multiwindow/CenterBarWindow;->drawCenterBar(II)V

    .line 458
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 459
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    #getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1200(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 460
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    #getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1300(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 461
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    #setter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchStartX:I
    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$902(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I

    .line 462
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    #setter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchStartY:I
    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$502(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I

    .line 463
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    #getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1500(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/os/SystemVibrator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    #getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mIvt:[B
    invoke-static {v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1400(Lcom/android/systemui/multiwindow/CenterBarWindow;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    #getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v2}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1500(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/os/SystemVibrator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    .line 466
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v5, :cond_4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 467
    :cond_4
    const-string v0, "FlashBarService"

    const-string v1, "centerBarWindow onTouch : MotionEvent is ACTION_UP|ACTION_CANCEL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->centerControlBarDocking()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 470
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    #getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1500(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/os/SystemVibrator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    #getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mIvt:[B
    invoke-static {v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1400(Lcom/android/systemui/multiwindow/CenterBarWindow;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    #getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mVibrator:Landroid/os/SystemVibrator;
    invoke-static {v2}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1500(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/os/SystemVibrator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/SystemVibrator;->getMaxMagnitude()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/SystemVibrator;->vibrateImmVibe([BI)V

    .line 473
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    invoke-virtual {v0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->makeCenterBarRect()V

    .line 474
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    #calls: Lcom/android/systemui/multiwindow/CenterBarWindow;->updateCenterBarRect()V
    invoke-static {v0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1600(Lcom/android/systemui/multiwindow/CenterBarWindow;)V

    .line 475
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    #getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBar:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1200(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 476
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    #getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarArrow:Landroid/widget/ImageButton;
    invoke-static {v0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1300(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setPressed(Z)V

    .line 477
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    #getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1700(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    #getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarRectForSplit:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$1700(Lcom/android/systemui/multiwindow/CenterBarWindow;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/multiwindow/CenterBarWindow;->drawCenterBar(II)V

    goto/16 :goto_0

    .line 447
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    #getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchStartX:I
    invoke-static {v0}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$900(Lcom/android/systemui/multiwindow/CenterBarWindow;)I

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    #getter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mCenterBarTouchApprovalDistance:I
    invoke-static {v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$600(Lcom/android/systemui/multiwindow/CenterBarWindow;)I

    move-result v1

    if-le v0, v1, :cond_2

    .line 448
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    #setter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventX:I
    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$702(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I

    .line 449
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    #setter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchEventY:I
    invoke-static {v0, v1}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$802(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I

    .line 450
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    #setter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchStartX:I
    invoke-static {v0, v4}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$902(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I

    .line 451
    iget-object v0, p0, Lcom/android/systemui/multiwindow/CenterBarWindow$3;->this$0:Lcom/android/systemui/multiwindow/CenterBarWindow;

    #setter for: Lcom/android/systemui/multiwindow/CenterBarWindow;->mTouchStartY:I
    invoke-static {v0, v4}, Lcom/android/systemui/multiwindow/CenterBarWindow;->access$502(Lcom/android/systemui/multiwindow/CenterBarWindow;I)I

    goto/16 :goto_1
.end method
