.class Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;
.super Ljava/lang/Object;
.source "MiniModeAppsPanel.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/MiniModeAppsPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PanelEditContainerDragListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 2631
    iput-object p1, p0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Lcom/android/systemui/statusbar/MiniModeAppsPanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2631
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;-><init>(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 16
    .parameter "targetView"
    .parameter "event"

    .prologue
    .line 2636
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    .line 2639
    .local v1, action:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    move-object/from16 v0, p2

    #calls: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->isAcceptableDragEvent(Landroid/view/DragEvent;)Z
    invoke-static {v13, v0}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5200(Lcom/android/systemui/statusbar/MiniModeAppsPanel;Landroid/view/DragEvent;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 2640
    const/4 v13, 0x0

    .line 2723
    :goto_0
    return v13

    .line 2645
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mCurrentDraggingView:Landroid/view/View;
    invoke-static {v13}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/View;

    move-result-object v10

    .line 2646
    .local v10, sourceView:Landroid/view/View;
    if-nez v10, :cond_1

    .line 2648
    const/4 v13, 0x0

    goto :goto_0

    .line 2650
    :cond_1
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_2

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    if-nez v13, :cond_3

    .line 2653
    :cond_2
    const/4 v13, 0x0

    goto :goto_0

    .line 2655
    :cond_3
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;

    .line 2657
    .local v2, cd:Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;
    packed-switch v1, :pswitch_data_0

    .line 2723
    const/4 v13, 0x0

    goto :goto_0

    .line 2659
    :pswitch_0
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v14}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v14

    if-ne v13, v14, :cond_4

    .line 2664
    const/4 v13, 0x1

    goto :goto_0

    .line 2666
    :cond_4
    const/4 v13, 0x0

    goto :goto_0

    .line 2672
    :pswitch_1
    const/4 v13, 0x1

    goto :goto_0

    .line 2675
    :pswitch_2
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->isChosen()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 2677
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mRecentsContainer:Landroid/widget/LinearLayout;
    invoke-static {v13}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4100(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/LinearLayout;

    move-result-object v13

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getIconView()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 2680
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v13, v13, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

    if-eqz v13, :cond_5

    .line 2681
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getPreview()Landroid/view/View;

    move-result-object v13

    const v14, 0x7f0d0066

    invoke-virtual {v13, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 2682
    .local v8, previewIcon:Landroid/widget/ImageView;
    invoke-virtual {v8}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2683
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v13, v13, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 2684
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    iget-object v13, v13, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mPreviewAnimationSet:Landroid/view/animation/AnimationSet;

    invoke-virtual {v8, v13}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2689
    .end local v8           #previewIcon:Landroid/widget/ImageView;
    :cond_5
    invoke-static {}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$1100()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 2690
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;
    invoke-static {v13}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v13

    if-ge v6, v13, :cond_8

    .line 2691
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;
    invoke-static {v13}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 2692
    .local v5, containter:Landroid/view/ViewGroup;
    instance-of v13, v5, Landroid/widget/LinearLayout;

    if-eqz v13, :cond_6

    .line 2693
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getPreview()Landroid/view/View;

    move-result-object v13

    invoke-virtual {v5, v13}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v13

    if-ltz v13, :cond_6

    .line 2694
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;
    invoke-static {v13}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getHeight()I

    move-result v7

    .line 2695
    .local v7, previewHeight:I
    mul-int v12, v6, v7

    .line 2696
    .local v12, yOffsetAtTop:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;
    invoke-static {v13}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/FrameLayout;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v13

    sub-int/2addr v13, v7

    div-int/lit8 v4, v13, 0x2

    .line 2697
    .local v4, centerY:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;
    invoke-static {v13}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/FrameLayout;

    move-result-object v13

    instance-of v13, v13, Landroid/widget/ScrollView;

    if-eqz v13, :cond_6

    .line 2698
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;
    invoke-static {v13}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/FrameLayout;

    move-result-object v13

    check-cast v13, Landroid/widget/ScrollView;

    const/4 v14, 0x0

    sub-int v15, v12, v4

    invoke-virtual {v13, v14, v15}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 2690
    .end local v4           #centerY:I
    .end local v7           #previewHeight:I
    .end local v12           #yOffsetAtTop:I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2704
    .end local v5           #containter:Landroid/view/ViewGroup;
    .end local v6           #i:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;
    invoke-static {v13}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v13

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->getPreview()Landroid/view/View;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v6

    .line 2705
    .restart local v6       #i:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditContainer:Landroid/view/ViewGroup;
    invoke-static {v13}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5300(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/view/ViewGroup;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v9

    .line 2706
    .local v9, previewWidth:I
    mul-int v11, v6, v9

    .line 2707
    .local v11, xOffsetAtLeft:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;
    invoke-static {v13}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/FrameLayout;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v13

    sub-int/2addr v13, v9

    div-int/lit8 v3, v13, 0x2

    .line 2708
    .local v3, centerX:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;
    invoke-static {v13}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/FrameLayout;

    move-result-object v13

    instance-of v13, v13, Landroid/widget/HorizontalScrollView;

    if-eqz v13, :cond_8

    .line 2709
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mMiniAppsPanelEditScroller:Landroid/widget/FrameLayout;
    invoke-static {v13}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$5700(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/FrameLayout;

    move-result-object v13

    check-cast v13, Landroid/widget/HorizontalScrollView;

    sub-int v14, v11, v3

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    .line 2712
    .end local v3           #centerX:I
    .end local v9           #previewWidth:I
    .end local v11           #xOffsetAtLeft:I
    :cond_8
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->setChosen(Z)V

    .line 2713
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/MiniModeAppsPanel$ComponentDescription;->updatePreview()V

    .line 2715
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;
    invoke-static {v13}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;

    move-result-object v13

    const/high16 v14, 0x3f80

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setAlpha(F)V

    .line 2716
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/MiniModeAppsPanel$PanelEditContainerDragListener;->this$0:Lcom/android/systemui/statusbar/MiniModeAppsPanel;

    #getter for: Lcom/android/systemui/statusbar/MiniModeAppsPanel;->mDoneButton:Landroid/widget/Button;
    invoke-static {v13}, Lcom/android/systemui/statusbar/MiniModeAppsPanel;->access$4500(Lcom/android/systemui/statusbar/MiniModeAppsPanel;)Landroid/widget/Button;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2718
    const/4 v13, 0x1

    goto/16 :goto_0

    .line 2720
    .end local v6           #i:I
    :cond_9
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 2657
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
