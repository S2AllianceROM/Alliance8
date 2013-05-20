.class Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;
.super Landroid/os/AsyncTask;
.source "SmartSwitcherWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadSubSlideAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;


# direct methods
.method private constructor <init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)V
    .locals 0
    .parameter

    .prologue
    .line 775
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 775
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 775
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 26
    .parameter "params"

    .prologue
    .line 779
    const/4 v2, 0x4

    new-array v8, v2, [F

    fill-array-data v8, :array_0

    .line 781
    .local v8, bgColor:[F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    iget-object v2, v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    .line 783
    .local v9, display:Landroid/view/Display;
    invoke-virtual {v9}, Landroid/view/Display;->getWidth()I

    move-result v11

    .line 784
    .local v11, displayWidth:I
    invoke-virtual {v9}, Landroid/view/Display;->getHeight()I

    move-result v10

    .line 786
    .local v10, displayHeight:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    iget-object v2, v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0078

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v15, v2

    .line 787
    .local v15, reSizeWidth:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    iget-object v2, v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0079

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v14, v2

    .line 789
    .local v14, reSizeHeight:I
    int-to-float v2, v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F
    invoke-static {v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->access$100(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)F

    move-result v3

    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    add-float v19, v2, v3

    .line 790
    .local v19, slideWidth:F
    int-to-float v2, v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F
    invoke-static {v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->access$100(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)F

    move-result v3

    const/high16 v4, 0x4000

    mul-float/2addr v3, v4

    add-float v18, v2, v3

    .line 792
    .local v18, slideHeight:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-virtual {v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v13

    .line 793
    .local v13, mainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    invoke-virtual {v13}, Lcom/sec/android/samsunganimation/slide/SASlide;->getWidth()F

    move-result v25

    .line 795
    .local v25, width:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-virtual {v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getTotalCount()I

    move-result v24

    .line 796
    .local v24, totalCnt:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    iget-object v2, v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c006d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    .line 797
    .local v22, topPos:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    iget-object v2, v2, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0075

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    .line 798
    .local v17, slideGap:F
    const/high16 v2, 0x4080

    mul-float v2, v2, v17

    add-float v23, v22, v2

    .line 799
    .local v23, topThreshold:F
    const/16 v21, 0x3

    .line 800
    .local v21, temp:I
    const/4 v12, 0x1

    .local v12, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mVisibleSlideCount:I
    invoke-static {v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->access$200(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)I

    move-result v2

    if-ge v12, v2, :cond_7

    .line 801
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mRecentAppsList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->access$300(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/recent/TaskDescription;

    .line 803
    .local v20, td:Lcom/android/systemui/recent/TaskDescription;
    move/from16 v6, v19

    .line 804
    .local v6, scaledWidth:F
    move/from16 v7, v18

    .line 805
    .local v7, scaledHeight:F
    const/16 v16, 0x0

    .line 808
    .local v16, scale:F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mVisibleSlideCount:I
    invoke-static {v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->access$200(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v12, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mVisibleSlideCount:I
    invoke-static {v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->access$200(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    .line 809
    const v2, 0x3d4ccccd

    const/high16 v3, 0x4080

    mul-float v3, v3, v17

    sub-float v3, v23, v3

    sub-float v3, v23, v3

    mul-float/2addr v2, v3

    sub-float v3, v23, v22

    div-float v16, v2, v3

    .line 810
    const/high16 v2, 0x3f80

    sub-float v2, v2, v16

    mul-float/2addr v6, v2

    .line 811
    const/high16 v2, 0x3f80

    sub-float v2, v2, v16

    mul-float/2addr v7, v2

    .line 831
    :cond_0
    :goto_1
    new-instance v1, Lcom/sec/android/samsunganimation/slide/SASlide;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/samsunganimation/slide/SASlide;-><init>(IIFFFF[F)V

    .line 833
    .local v1, newSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    #calls: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->resetPivot(Lcom/sec/android/samsunganimation/slide/SASlide;)V
    invoke-static {v2, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->access$400(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 835
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    #calls: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->isPortraitMode()Z
    invoke-static {v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->access$500(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 836
    const/high16 v2, 0x3f00

    mul-float v2, v2, v25

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;
    invoke-static {v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->access$600(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mVisibleSlideCount:I
    invoke-static {v4}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->access$200(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)I

    move-result v4

    invoke-virtual {v3, v12, v4}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->getInitPos(II)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->setPosition(FF)V

    .line 841
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;
    invoke-static {v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->access$600(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    move-result-object v2

    invoke-virtual {v2, v12}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->getZPos(I)F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->setZPosition(F)V

    .line 843
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->setAntiAliasing(Z)V

    .line 844
    invoke-virtual {v13, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->addSlide(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 846
    const/4 v2, 0x5

    if-ge v12, v2, :cond_1

    .line 847
    if-eqz v20, :cond_1

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/recent/TaskDescription;->isLoaded()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 848
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-virtual {v2, v12}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->drawThumbnailAndIcon(I)V

    .line 800
    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 812
    .end local v1           #newSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mVisibleSlideCount:I
    invoke-static {v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->access$200(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    if-ne v12, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mVisibleSlideCount:I
    invoke-static {v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->access$200(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)I

    move-result v2

    const/4 v3, 0x6

    if-lt v2, v3, :cond_3

    .line 813
    const v2, 0x3d4ccccd

    const/high16 v3, 0x4040

    mul-float v3, v3, v17

    sub-float v3, v23, v3

    sub-float v3, v23, v3

    mul-float/2addr v2, v3

    sub-float v3, v23, v22

    div-float v16, v2, v3

    .line 814
    const/high16 v2, 0x3f80

    sub-float v2, v2, v16

    mul-float/2addr v6, v2

    .line 815
    const/high16 v2, 0x3f80

    sub-float v2, v2, v16

    mul-float/2addr v7, v2

    goto/16 :goto_1

    .line 816
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mVisibleSlideCount:I
    invoke-static {v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->access$200(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)I

    move-result v2

    add-int/lit8 v2, v2, -0x3

    if-ne v12, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mVisibleSlideCount:I
    invoke-static {v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->access$200(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)I

    move-result v2

    const/4 v3, 0x7

    if-lt v2, v3, :cond_4

    .line 817
    const v2, 0x3d4ccccd

    const/high16 v3, 0x4000

    mul-float v3, v3, v17

    sub-float v3, v23, v3

    sub-float v3, v23, v3

    mul-float/2addr v2, v3

    sub-float v3, v23, v22

    div-float v16, v2, v3

    .line 818
    const/high16 v2, 0x3f80

    sub-float v2, v2, v16

    mul-float/2addr v6, v2

    .line 819
    const/high16 v2, 0x3f80

    sub-float v2, v2, v16

    mul-float/2addr v7, v2

    goto/16 :goto_1

    .line 820
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mVisibleSlideCount:I
    invoke-static {v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->access$200(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    if-ne v12, v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mVisibleSlideCount:I
    invoke-static {v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->access$200(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)I

    move-result v2

    const/16 v3, 0x8

    if-lt v2, v3, :cond_5

    .line 821
    const v2, 0x3d4ccccd

    const/high16 v3, 0x3f80

    mul-float v3, v3, v17

    sub-float v3, v23, v3

    sub-float v3, v23, v3

    mul-float/2addr v2, v3

    sub-float v3, v23, v22

    div-float v16, v2, v3

    .line 822
    const/high16 v2, 0x3f80

    sub-float v2, v2, v16

    mul-float/2addr v6, v2

    .line 823
    const/high16 v2, 0x3f80

    sub-float v2, v2, v16

    mul-float/2addr v7, v2

    goto/16 :goto_1

    .line 824
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mVisibleSlideCount:I
    invoke-static {v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->access$200(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)I

    move-result v2

    add-int/lit8 v2, v2, -0x5

    if-ne v12, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mVisibleSlideCount:I
    invoke-static {v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->access$200(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)I

    move-result v2

    const/16 v3, 0x9

    if-lt v2, v3, :cond_0

    .line 825
    const v2, 0x3d4ccccd

    sub-float v3, v23, v23

    mul-float/2addr v2, v3

    sub-float v3, v23, v22

    div-float v16, v2, v3

    .line 826
    const/high16 v2, 0x3f80

    sub-float v2, v2, v16

    mul-float/2addr v6, v2

    .line 827
    const/high16 v2, 0x3f80

    sub-float v2, v2, v16

    mul-float/2addr v7, v2

    goto/16 :goto_1

    .line 838
    .restart local v1       #newSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;
    invoke-static {v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->access$600(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    #getter for: Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mVisibleSlideCount:I
    invoke-static {v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->access$200(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)I

    move-result v3

    invoke-virtual {v2, v12, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->getInitPos(II)F

    move-result v2

    int-to-float v3, v10

    const/high16 v4, 0x3f00

    mul-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->setPosition(FF)V

    goto/16 :goto_2

    .line 853
    .end local v1           #newSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v6           #scaledWidth:F
    .end local v7           #scaledHeight:F
    .end local v16           #scale:F
    .end local v20           #td:Lcom/android/systemui/recent/TaskDescription;
    :cond_7
    const/4 v2, 0x0

    return-object v2

    .line 779
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 775
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 858
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 860
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-virtual {v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->startAni()V

    .line 861
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->this$0:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-virtual {v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->updateThumbnailAndIconInBackground()V

    .line 862
    return-void
.end method
