.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/MiniModeAppsPanel;->refreshApplicationList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 1502
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 14
    .parameter "v"
    .parameter "event"

    .prologue
    .line 1505
    const-string v8, "MiniModeAppsPanel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mGuidelineView:onDrag() : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 1593
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v8, 0x1

    return v8

    .line 1510
    :pswitch_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v8, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTopGuideLine:Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1511
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v8, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBottomGuideLine:Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1513
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v8, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineViewParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v9, 0x0

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1514
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v8, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineViewParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v9, 0x0

    iput v9, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1515
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v9, v9, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineView:Landroid/view/View;

    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v10, v10, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mGuideLineViewParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v8, v9, v10}, Landroid/view/WindowManagerImpl;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1516
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDragItemDescription:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    goto :goto_0

    .line 1520
    :pswitch_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget v8, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentLaunchMode:I

    sget v9, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->ARRANGE_CASCADE:I

    if-ne v8, v9, :cond_1

    .line 1521
    new-instance v4, Landroid/graphics/Rect;

    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v8, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentAppRect:Landroid/graphics/Rect;

    invoke-direct {v4, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1522
    .local v4, offsetRect:Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v9, v9, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentAppRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget v10, v10, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mActionBarHeight:I

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    invoke-virtual {v4, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 1523
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v8, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTopGuideLine:Landroid/view/View;

    iget v9, v4, Landroid/graphics/Rect;->left:I

    iget v10, v4, Landroid/graphics/Rect;->top:I

    iget v11, v4, Landroid/graphics/Rect;->right:I

    iget v12, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 1524
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v8, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTopGuideLine:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1526
    .end local v4           #offsetRect:Landroid/graphics/Rect;
    :cond_1
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1527
    .local v1, displaySize:Landroid/graphics/Point;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1528
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v5, v8, Landroid/content/res/Configuration;->orientation:I

    .line 1531
    .local v5, orientation:I
    invoke-static {}, Lcom/android/systemui/multiwindow/MultiWindowReflector$MultiWindowManager;->getSplitRect()Landroid/graphics/Rect;

    move-result-object v7

    .line 1533
    .local v7, splitRect:Landroid/graphics/Rect;
    const/4 v8, 0x1

    if-eq v5, v8, :cond_2

    .line 1534
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v12

    iget v13, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTopGuideLineRect:Landroid/graphics/Rect;

    .line 1535
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    new-instance v9, Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v10

    const/4 v11, 0x0

    iget v12, v1, Landroid/graphics/Point;->x:I

    iget v13, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBottomGuideLineRect:Landroid/graphics/Rect;

    .line 1540
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v8, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTopGuideLine:Landroid/view/View;

    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v9, v9, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTopGuideLineRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v10, v10, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTopGuideLineRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v11, v11, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTopGuideLineRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget-object v12, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v12, v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTopGuideLineRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 1541
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v8, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBottomGuideLine:Landroid/view/View;

    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v9, v9, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBottomGuideLineRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v10, v10, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBottomGuideLineRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    iget-object v11, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v11, v11, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBottomGuideLineRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    iget-object v12, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v12, v12, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBottomGuideLineRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 1543
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v8, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTopGuideLineRect:Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1544
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v8, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTopGuideLine:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1545
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v8, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBottomGuideLine:Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1537
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTopGuideLineRect:Landroid/graphics/Rect;

    .line 1538
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v11

    iget v12, v1, Landroid/graphics/Point;->x:I

    iget v13, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v9, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v9, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBottomGuideLineRect:Landroid/graphics/Rect;

    goto/16 :goto_1

    .line 1547
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v8, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTopGuideLine:Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1548
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v8, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBottomGuideLine:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1553
    .end local v1           #displaySize:Landroid/graphics/Point;
    .end local v5           #orientation:I
    .end local v7           #splitRect:Landroid/graphics/Rect;
    :pswitch_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v8, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTopGuideLine:Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1554
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v8, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mBottomGuideLine:Landroid/view/View;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1557
    :pswitch_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v8, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDragItemDescription:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    if-eqz v8, :cond_0

    .line 1558
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v0, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDragItemDescription:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 1559
    .local v0, d:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDragItemDescription:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 1561
    const/4 v3, 0x0

    .line 1562
    .local v3, launchZone:I
    const/4 v6, 0x0

    .line 1563
    .local v6, position:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget v8, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentLaunchMode:I

    sget v9, Lcom/android/systemui/multiwindow/MultiWindowReflector$Configuration;->ARRANGE_CASCADE:I

    if-ne v8, v9, :cond_6

    .line 1564
    new-instance v6, Landroid/graphics/Rect;

    .end local v6           #position:Landroid/graphics/Rect;
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v8, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentAppRect:Landroid/graphics/Rect;

    invoke-direct {v6, v8}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1565
    .restart local v6       #position:Landroid/graphics/Rect;
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v9, v9, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentAppRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    sub-int/2addr v8, v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getY()F

    move-result v9

    float-to-int v9, v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget v10, v10, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mActionBarHeight:I

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    invoke-virtual {v6, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    .line 1575
    :goto_2
    new-instance v8, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->name:Landroid/content/ComponentName;
    invoke-static {v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->access$3700(Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;)Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 1576
    .local v2, intent:Landroid/content/Intent;
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1577
    const/high16 v8, 0x1020

    invoke-virtual {v2, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1578
    sget-object v8, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->EXTRA_WINDOW_MODE:Ljava/lang/String;

    sget v9, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_FREESTYLE:I

    or-int/2addr v9, v3

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1579
    if-eqz v6, :cond_4

    .line 1580
    sget-object v8, Lcom/android/systemui/multiwindow/MultiWindowReflector$Intent;->EXTRA_WINDOW_POSITION:Ljava/lang/String;

    invoke-virtual {v2, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1584
    :cond_4
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->SUPPORT_MULTIWINDOW_MULTIINSTANCE:Z
    invoke-static {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$3800(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1585
    const/high16 v8, 0x800

    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1588
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1567
    .end local v2           #intent:Landroid/content/Intent;
    :cond_6
    iget-object v8, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$13;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v8, v8, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mTopGuideLineRect:Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getX()F

    move-result v9

    float-to-int v9, v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getY()F

    move-result v10

    float-to-int v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1568
    sget v3, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_A:I

    goto :goto_2

    .line 1570
    :cond_7
    sget v3, Lcom/android/systemui/multiwindow/MultiWindowReflector$WindowManagerPolicy;->WINDOW_MODE_OPTION_SPLIT_ZONE_B:I

    goto :goto_2

    .line 1506
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
