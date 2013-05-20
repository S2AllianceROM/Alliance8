.class public Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;
.super Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;
.source "SmartSwitcherVerticalSlideAnimator.java"

# interfaces
.implements Lcom/android/systemui/recent/smartswitcher/SmartSwitcherContants;
.implements Lcom/sec/android/samsunganimation/animation/SAAnimation$SAAnimationListener;


# static fields
.field private static mInstance:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;

    invoke-direct {v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;-><init>()V

    sput-object v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->mInstance:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;-><init>()V

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->mInstance:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;

    return-object v0
.end method

.method private initSwipeAni(F)V
    .locals 5
    .parameter "pos"

    .prologue
    const/4 v4, 0x0

    .line 135
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 139
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 141
    .local v1, displayWidth:I
    iput p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSwipeOriginPos:F

    .line 142
    int-to-float v2, v1

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastMovePos:F

    .line 144
    iput v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetX:F

    .line 145
    iput v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetY:F

    .line 146
    iput v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetZ:F

    .line 147
    return-void
.end method

.method private resetPivot(Lcom/sec/android/samsunganimation/slide/SASlide;)V
    .locals 3
    .parameter "slide"

    .prologue
    .line 874
    invoke-virtual {p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getPivotPoint()Lcom/sec/android/samsunganimation/basetype/SAPoint;

    move-result-object v0

    .line 875
    .local v0, pivot:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    iget v1, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->setPivotPoint(FF)V

    .line 876
    return-void
.end method


# virtual methods
.method public getMaxPos(I)F
    .locals 10
    .parameter "index"

    .prologue
    const/high16 v9, 0x41a0

    const/high16 v8, 0x4130

    const/4 v7, 0x1

    .line 96
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-virtual {v5}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getTotalCount()I

    move-result v4

    .line 97
    .local v4, totalCnt:I
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c006d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 99
    .local v1, minPos:F
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0075

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 100
    .local v2, slideGap:F
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c0079

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 101
    .local v3, slideHeight:F
    const/4 v0, 0x0

    .line 103
    .local v0, maxPos:F
    const/4 v5, 0x4

    if-ge p1, v5, :cond_0

    .line 104
    iget v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mCoverStopPos:F

    int-to-float v6, p1

    mul-float/2addr v6, v2

    sub-float v0, v5, v6

    .line 109
    :goto_0
    if-eq p1, v7, :cond_1

    add-int/lit8 v5, v4, -0x1

    if-ne p1, v5, :cond_1

    .line 126
    .end local v1           #minPos:F
    :goto_1
    return v1

    .line 106
    .restart local v1       #minPos:F
    :cond_0
    iget v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mCoverStopPos:F

    const/high16 v6, 0x4080

    mul-float/2addr v6, v2

    sub-float v0, v5, v6

    goto :goto_0

    .line 113
    :cond_1
    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    .line 114
    if-ne p1, v7, :cond_4

    .line 115
    const v5, 0x3f4ccccd

    mul-float/2addr v5, v3

    sub-float v1, v0, v5

    goto :goto_1

    .line 116
    :cond_2
    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 117
    if-ne p1, v7, :cond_4

    .line 118
    mul-float v5, v0, v8

    div-float v1, v5, v9

    goto :goto_1

    .line 121
    :cond_3
    add-int/lit8 v5, v4, -0x2

    if-ne p1, v5, :cond_4

    .line 122
    mul-float v5, v0, v8

    div-float v1, v5, v9

    goto :goto_1

    :cond_4
    move v1, v0

    .line 126
    goto :goto_1
.end method

.method public getMinPos(I)F
    .locals 8
    .parameter "index"

    .prologue
    .line 70
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-virtual {v6}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getTotalCount()I

    move-result v5

    .line 71
    .local v5, totalCnt:I
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mCoverStopPos:F

    .line 72
    .local v0, maxPos:F
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c006d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 73
    .local v4, topPos:F
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0075

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 74
    .local v2, slideGap:F
    const/high16 v6, 0x4080

    mul-float/2addr v6, v2

    add-float v1, v4, v6

    .line 76
    .local v1, minPos:F
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0079

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 79
    .local v3, slideHeight:F
    add-int/lit8 v6, v5, -0x4

    add-int/lit8 v6, v6, -0x1

    if-le p1, v6, :cond_0

    .line 80
    sub-int v6, v5, p1

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    mul-float/2addr v6, v2

    add-float v1, v4, v6

    .line 83
    :cond_0
    const/4 v6, 0x1

    if-ne p1, v6, :cond_1

    .line 84
    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    .line 85
    const v6, 0x3f4ccccd

    mul-float/2addr v6, v3

    sub-float v1, v0, v6

    .line 91
    .end local v1           #minPos:F
    :cond_1
    :goto_0
    return v1

    .line 87
    .restart local v1       #minPos:F
    :cond_2
    const/high16 v6, 0x4000

    mul-float/2addr v6, v0

    const/high16 v7, 0x40a0

    div-float v1, v6, v7

    goto :goto_0
.end method

.method public getScrollMode()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mScrollMode:I

    return v0
.end method

.method public getSwipeOriginPos()F
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSwipeOriginPos:F

    return v0
.end method

.method public getZPos(I)F
    .locals 1
    .parameter "index"

    .prologue
    .line 130
    sget-object v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->mScrollVal:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;->zPos:F

    return v0
.end method

.method public init(Landroid/content/Context;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)V
    .locals 6
    .parameter "context"
    .parameter "window"

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    .line 40
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sput-object v4, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->mScrollVal:Ljava/util/ArrayList;

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c007f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mMarginePos:F

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0080

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSlideVisibleLength:F

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0081

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mNotFollowDist:F

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0082

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mFollowDist:F

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0083

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSwipeMaxLength:F

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0066

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 49
    .local v1, footerHeight:F
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0064

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 50
    .local v3, slideTitleHeight:F
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0076

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 52
    .local v2, shadowBorder:F
    iget-object v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 54
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v1

    sub-float/2addr v4, v3

    sub-float/2addr v4, v2

    const/high16 v5, 0x4040

    add-float/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mCoverStopPos:F

    .line 55
    invoke-super {p0, p1, p2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->init(Landroid/content/Context;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)V

    .line 56
    return-void
.end method

.method public onAnimationEnd(Ljava/lang/String;)V
    .locals 11
    .parameter "tag"

    .prologue
    .line 880
    const-string v9, "SLIDE_FOLD"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 881
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v4

    .line 882
    .local v4, mainSilde:Lcom/sec/android/samsunganimation/slide/SASlide;
    invoke-virtual {v4}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlideCount()I

    move-result v5

    .line 884
    .local v5, slideCnt:I
    iget v9, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSelectedIndex:I

    add-int/lit8 v3, v9, 0x1

    .local v3, i:I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 885
    invoke-virtual {v4, v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v0

    .line 886
    .local v0, bottomSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    int-to-float v9, v3

    const/high16 v10, 0x3f00

    mul-float/2addr v9, v10

    const/16 v10, 0x32

    invoke-virtual {v0, v9, v10}, Lcom/sec/android/samsunganimation/slide/SASlide;->setZPosition(FI)V

    .line 884
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 888
    .end local v0           #bottomSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v3           #i:I
    .end local v4           #mainSilde:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v5           #slideCnt:I
    :cond_0
    const-string v9, "COVER_SLIDING"

    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 889
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v4

    .line 890
    .restart local v4       #mainSilde:Lcom/sec/android/samsunganimation/slide/SASlide;
    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v1

    .line 892
    .local v1, coverSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    if-eqz v1, :cond_1

    .line 893
    invoke-virtual {v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getRegion()Lcom/sec/android/samsunganimation/basetype/SARect;

    move-result-object v9

    iget-object v9, v9, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v7, v9, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    .line 894
    .local v7, x:F
    iget v8, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mCoverStopPos:F

    .line 895
    .local v8, y:F
    invoke-virtual {v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getRegion()Lcom/sec/android/samsunganimation/basetype/SARect;

    move-result-object v9

    iget-object v9, v9, Lcom/sec/android/samsunganimation/basetype/SARect;->mSize:Lcom/sec/android/samsunganimation/basetype/SASize;

    iget v6, v9, Lcom/sec/android/samsunganimation/basetype/SASize;->mWidth:F

    .line 896
    .local v6, w:F
    invoke-virtual {v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getRegion()Lcom/sec/android/samsunganimation/basetype/SARect;

    move-result-object v9

    iget-object v9, v9, Lcom/sec/android/samsunganimation/basetype/SARect;->mSize:Lcom/sec/android/samsunganimation/basetype/SASize;

    iget v2, v9, Lcom/sec/android/samsunganimation/basetype/SASize;->mHeight:F

    .line 898
    .local v2, h:F
    invoke-virtual {v1, v7, v8, v6, v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->setRegion(FFFF)V

    .line 902
    .end local v1           #coverSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v2           #h:F
    .end local v4           #mainSilde:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v6           #w:F
    .end local v7           #x:F
    .end local v8           #y:F
    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 908
    return-void
.end method

.method public onAnimationStart(Ljava/lang/String;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 914
    return-void
.end method

.method public removeSlideAni(I)V
    .locals 12
    .parameter "index"

    .prologue
    const/4 v11, 0x0

    .line 686
    const/16 v3, 0x12c

    .line 687
    .local v3, duration:I
    iget-object v9, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 691
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 693
    .local v2, displayWidth:I
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v6

    .line 694
    .local v6, slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    if-nez v6, :cond_0

    .line 711
    :goto_0
    return-void

    .line 698
    :cond_0
    new-instance v0, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;

    invoke-direct {v0, v3, v11, v11, v11}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;-><init>(IIZI)V

    .line 699
    .local v0, aniSet:Lcom/sec/android/samsunganimation/animation/SAAnimationSet;
    new-instance v5, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;

    const/16 v9, 0x9

    const/high16 v10, 0x3f80

    const/4 v11, 0x0

    invoke-direct {v5, v9, v10, v11}, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;-><init>(IFF)V

    .line 700
    .local v5, opacityAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    invoke-virtual {v0, v5}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->addAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)Z

    .line 702
    new-instance v4, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    div-int/lit8 v9, v2, 0x2

    int-to-float v9, v9

    invoke-virtual {v6}, Lcom/sec/android/samsunganimation/slide/SASlide;->getY()F

    move-result v10

    invoke-direct {v4, v9, v10}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 703
    .local v4, fromPos:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v7, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    neg-int v9, v2

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v6}, Lcom/sec/android/samsunganimation/slide/SASlide;->getY()F

    move-result v10

    invoke-direct {v7, v9, v10}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 705
    .local v7, toPos:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v8, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;

    const/4 v9, 0x3

    invoke-direct {v8, v9, v4, v7}, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;-><init>(ILcom/sec/android/samsunganimation/basetype/SAPoint;Lcom/sec/android/samsunganimation/basetype/SAPoint;)V

    .line 707
    .local v8, transAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    invoke-virtual {v0, v8}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->addAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)Z

    .line 708
    iget-object v9, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-virtual {v0, v9}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->setListener(Lcom/sec/android/samsunganimation/animation/SAAnimation$SAAnimationListener;)V

    .line 709
    const-string v9, "REMOVE"

    invoke-virtual {v0, v9}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->setTag(Ljava/lang/String;)V

    .line 710
    invoke-virtual {v6, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->startAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)V

    goto :goto_0
.end method

.method public restoreBoundAni()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 514
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v3

    .line 515
    .local v3, mainSilde:Lcom/sec/android/samsunganimation/slide/SASlide;
    invoke-virtual {v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlideCount()I

    move-result v7

    .line 517
    .local v7, slideCnt:I
    const v4, 0x3e4ccccd

    .line 518
    .local v4, pivot:F
    const/16 v0, 0xc8

    .line 520
    .local v0, duration:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v7, :cond_1

    .line 521
    invoke-virtual {v3, v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v6

    .line 522
    .local v6, saSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    iget v9, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetX:F

    cmpg-float v9, v9, v11

    if-gez v9, :cond_0

    .line 523
    const/high16 v4, 0x3f00

    .line 525
    :cond_0
    const/high16 v9, 0x3f00

    invoke-virtual {v6, v9, v4}, Lcom/sec/android/samsunganimation/slide/SASlide;->setPivotPoint(FF)V

    .line 527
    new-instance v1, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    iget v9, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetX:F

    iget v10, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetZ:F

    invoke-direct {v1, v9, v11, v10}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>(FFF)V

    .line 528
    .local v1, fromRotate:Lcom/sec/android/samsunganimation/basetype/SAVector3;
    new-instance v8, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    invoke-direct {v8, v11, v11, v11}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>(FFF)V

    .line 530
    .local v8, toRotate:Lcom/sec/android/samsunganimation/basetype/SAVector3;
    new-instance v5, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;

    const/4 v9, 0x6

    invoke-direct {v5, v9}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;-><init>(I)V

    .line 532
    .local v5, rotateAni:Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;
    invoke-virtual {v5, v0}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;->setDuration(I)V

    .line 534
    invoke-virtual {v5, v11, v1}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;->addKeyProperty(FLcom/sec/android/samsunganimation/basetype/SAVector3;)V

    .line 535
    const/high16 v9, 0x3f80

    invoke-virtual {v5, v9, v8}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;->addKeyProperty(FLcom/sec/android/samsunganimation/basetype/SAVector3;)V

    .line 536
    invoke-virtual {v6, v5}, Lcom/sec/android/samsunganimation/slide/SASlide;->startAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)V

    .line 520
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 539
    .end local v1           #fromRotate:Lcom/sec/android/samsunganimation/basetype/SAVector3;
    .end local v5           #rotateAni:Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;
    .end local v6           #saSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v8           #toRotate:Lcom/sec/android/samsunganimation/basetype/SAVector3;
    :cond_1
    iput v11, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetX:F

    .line 540
    iput v11, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetZ:F

    .line 541
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mBoundScrollDirection:I

    .line 542
    return-void
.end method

.method public restoreScrollMode()V
    .locals 17

    .prologue
    .line 714
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v12

    .line 715
    .local v12, mainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    const/16 v6, 0xc8

    .line 716
    .local v6, duration:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 720
    .local v7, display:Landroid/view/Display;
    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v8

    .line 722
    .local v8, displayWidth:I
    const/4 v3, -0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSelectedIndex:I

    .line 723
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0078

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v14, v3

    .line 724
    .local v14, reSizeWidth:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0079

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v13, v3

    .line 725
    .local v13, reSizeHeight:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0076

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v9, v3

    .line 726
    .local v9, frameBorder:I
    mul-int/lit8 v3, v9, 0x2

    add-int v16, v14, v3

    .line 727
    .local v16, width:I
    mul-int/lit8 v3, v9, 0x2

    add-int v10, v13, v3

    .line 728
    .local v10, height:I
    sub-int v3, v8, v16

    div-int/lit8 v3, v3, 0x2

    int-to-float v2, v3

    .line 730
    .local v2, slideX:F
    const/4 v11, 0x1

    .local v11, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-virtual {v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getVisibleSlideCount()I

    move-result v3

    if-ge v11, v3, :cond_0

    .line 731
    sget-object v3, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->mScrollVal:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;

    .line 732
    .local v15, sv:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;
    invoke-virtual {v12, v11}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v1

    .line 733
    .local v1, slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    iget v3, v15, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;->zPos:F

    invoke-virtual {v1, v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->setZPosition(F)V

    .line 734
    iget v3, v15, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;->curPos:F

    move/from16 v0, v16

    int-to-float v4, v0

    int-to-float v5, v10

    invoke-virtual/range {v1 .. v6}, Lcom/sec/android/samsunganimation/slide/SASlide;->setRegion(FFFFI)V

    .line 730
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 736
    .end local v1           #slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v15           #sv:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;
    :cond_0
    return-void
.end method

.method public restoreSwipeAni(I)V
    .locals 14
    .parameter "slideIdx"

    .prologue
    const/high16 v13, 0x3f80

    const/high16 v12, 0x3f00

    const/4 v11, 0x0

    .line 364
    const/16 v3, 0xc8

    .line 365
    .local v3, duration:I
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v9

    invoke-virtual {v9, p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v6

    .line 366
    .local v6, slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    if-nez v6, :cond_0

    .line 392
    :goto_0
    return-void

    .line 370
    :cond_0
    new-instance v0, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;

    invoke-direct {v0, v3, v11, v11, v11}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;-><init>(IIZI)V

    .line 371
    .local v0, aniset:Lcom/sec/android/samsunganimation/animation/SAAnimationSet;
    new-instance v5, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;

    const/16 v9, 0x9

    iget v10, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOpacity:F

    invoke-direct {v5, v9, v10, v13}, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;-><init>(IFF)V

    .line 373
    .local v5, opacityAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    invoke-virtual {v0, v5}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->addAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)Z

    .line 375
    iget-object v9, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 379
    .local v1, display:Landroid/view/Display;
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 381
    .local v2, displayWidth:I
    new-instance v4, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v9, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastMovePos:F

    invoke-virtual {v6}, Lcom/sec/android/samsunganimation/slide/SASlide;->getY()F

    move-result v10

    invoke-direct {v4, v9, v10}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 382
    .local v4, fromPos:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v7, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    int-to-float v9, v2

    mul-float/2addr v9, v12

    invoke-virtual {v6}, Lcom/sec/android/samsunganimation/slide/SASlide;->getY()F

    move-result v10

    invoke-direct {v7, v9, v10}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 383
    .local v7, toPos:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v8, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;

    const/4 v9, 0x3

    invoke-direct {v8, v9, v4, v7}, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;-><init>(ILcom/sec/android/samsunganimation/basetype/SAPoint;Lcom/sec/android/samsunganimation/basetype/SAPoint;)V

    .line 385
    .local v8, transAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    invoke-virtual {v0, v8}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->addAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)Z

    .line 386
    const-string v9, "RESTORE_SWIFE"

    invoke-virtual {v0, v9}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->setTag(Ljava/lang/String;)V

    .line 387
    iget-object v9, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-virtual {v0, v9}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->setListener(Lcom/sec/android/samsunganimation/animation/SAAnimation$SAAnimationListener;)V

    .line 388
    invoke-virtual {v6, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->startAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)V

    .line 389
    iput v11, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mScrollMode:I

    .line 390
    iput v13, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOpacity:F

    .line 391
    int-to-float v9, v2

    mul-float/2addr v9, v12

    iput v9, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastMovePos:F

    goto :goto_0
.end method

.method protected scrollSlides(F)V
    .locals 41
    .parameter "scroll"

    .prologue
    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v12

    .line 178
    .local v12, mainSilde:Lcom/sec/android/samsunganimation/slide/SASlide;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getVisibleSlideCount()I

    move-result v30

    .line 179
    .local v30, slideCnt:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 180
    .local v8, displayMatrix:Landroid/util/DisplayMetrics;
    iget v13, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 181
    .local v13, maxHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getTotalCount()I

    move-result v38

    .line 182
    .local v38, totalCnt:I
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mIsScrolling:Z

    .line 183
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastVelocity:F

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    const-string v40, "window"

    invoke-virtual/range {v39 .. v40}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/view/WindowManager;

    invoke-interface/range {v39 .. v39}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    .line 189
    .local v7, display:Landroid/view/Display;
    invoke-virtual {v7}, Landroid/view/Display;->getWidth()I

    move-result v9

    .line 191
    .local v9, displayWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0c006d

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v36

    .line 192
    .local v36, topPos:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0c0075

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v31

    .line 193
    .local v31, slideGap:F
    const/high16 v39, 0x4080

    mul-float v39, v39, v31

    add-float v37, v36, v39

    .line 194
    .local v37, topThreshold:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mCoverStopPos:F

    move/from16 v39, v0

    const/high16 v40, 0x4080

    mul-float v40, v40, v31

    sub-float v5, v39, v40

    .line 195
    .local v5, bottomThreshold:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0c0076

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    .line 197
    .local v10, frameBorder:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0c0078

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    .line 198
    .local v23, reSizeWidth:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v40, 0x7f0c0079

    invoke-virtual/range {v39 .. v40}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    .line 199
    .local v22, reSizeHeight:F
    const/high16 v39, 0x4000

    mul-float v39, v39, v10

    add-float v33, v23, v39

    .line 200
    .local v33, slideWidth:F
    const/high16 v39, 0x4000

    mul-float v39, v39, v10

    add-float v32, v22, v39

    .line 202
    .local v32, slideHeight:F
    int-to-float v0, v9

    move/from16 v39, v0

    sub-float v39, v39, v33

    const/high16 v40, 0x4000

    div-float v34, v39, v40

    .line 204
    .local v34, slideX:F
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mIsSliding:Z

    .line 205
    const/4 v11, 0x1

    .local v11, i:I
    :goto_0
    move/from16 v0, v30

    if-ge v11, v0, :cond_b

    .line 206
    invoke-virtual {v12, v11}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v29

    .line 207
    .local v29, slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    sget-object v39, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->mScrollVal:Ljava/util/ArrayList;

    move-object/from16 v0, v39

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;

    .line 208
    .local v35, sv:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMaxPos(I)F

    move-result v14

    .line 209
    .local v14, maxPos:F
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMinPos(I)F

    move-result v15

    .line 211
    .local v15, minPos:F
    invoke-virtual/range {v29 .. v29}, Lcom/sec/android/samsunganimation/slide/SASlide;->getRegion()Lcom/sec/android/samsunganimation/basetype/SARect;

    move-result-object v24

    .line 212
    .local v24, region:Lcom/sec/android/samsunganimation/basetype/SARect;
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    move/from16 v39, v0

    add-float v16, v39, p1

    .line 213
    .local v16, mySlideY:F
    add-float v19, v16, p1

    .line 215
    .local v19, nextY:F
    cmpl-float v39, v19, v14

    if-lez v39, :cond_5

    .line 216
    const/16 v39, 0x1

    move/from16 v0, v39

    if-ne v11, v0, :cond_4

    const/16 v39, 0x2

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_4

    .line 217
    move/from16 v19, v15

    .line 254
    :cond_0
    :goto_1
    move-object/from16 v0, v35

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;->curPos:F

    move/from16 v39, v0

    cmpl-float v39, v39, v19

    if-eqz v39, :cond_1

    .line 255
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mIsSliding:Z

    .line 257
    :cond_1
    move/from16 v0, v19

    move-object/from16 v1, v35

    iput v0, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;->curPos:F

    .line 282
    move/from16 v27, v33

    .line 283
    .local v27, scaledWidth:F
    move/from16 v26, v32

    .line 284
    .local v26, scaledHeight:F
    move/from16 v28, v34

    .line 285
    .local v28, scaledX:F
    cmpg-float v39, v19, v37

    if-gez v39, :cond_a

    .line 286
    const v39, 0x3d4ccccd

    sub-float v40, v37, v19

    mul-float v39, v39, v40

    sub-float v40, v37, v36

    div-float v25, v39, v40

    .line 287
    .local v25, scale:F
    const/high16 v39, 0x3f80

    sub-float v39, v39, v25

    mul-float v27, v27, v39

    .line 288
    const/high16 v39, 0x3f80

    sub-float v39, v39, v25

    mul-float v26, v26, v39

    .line 290
    sub-float v39, v33, v27

    const/high16 v40, 0x3f00

    mul-float v39, v39, v40

    add-float v28, v28, v39

    .line 299
    .end local v25           #scale:F
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mScrollMode:I

    move/from16 v39, v0

    const/16 v40, 0x3

    move/from16 v0, v39

    move/from16 v1, v40

    if-eq v0, v1, :cond_3

    .line 300
    move-object/from16 v0, v29

    move/from16 v1, v28

    move/from16 v2, v19

    move/from16 v3, v27

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sec/android/samsunganimation/slide/SASlide;->setRegion(FFFF)V

    .line 205
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 219
    .end local v26           #scaledHeight:F
    .end local v27           #scaledWidth:F
    .end local v28           #scaledX:F
    :cond_4
    move/from16 v19, v14

    goto :goto_1

    .line 221
    :cond_5
    cmpg-float v39, v19, v15

    if-gtz v39, :cond_6

    .line 222
    move/from16 v19, v15

    goto :goto_1

    .line 224
    :cond_6
    const/16 v39, 0x0

    cmpl-float v39, p1, v39

    if-lez v39, :cond_8

    .line 225
    const v21, 0x461c4000

    .line 226
    .local v21, prevSlideY:F
    add-int/lit8 v39, v11, -0x1

    move/from16 v0, v39

    invoke-virtual {v12, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v20

    .line 227
    .local v20, prevSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/samsunganimation/slide/SASlide;->getRegion()Lcom/sec/android/samsunganimation/basetype/SARect;

    move-result-object v39

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    move/from16 v21, v0

    .line 228
    sub-float v6, v21, v16

    .line 230
    .local v6, disBtwSlides:F
    cmpg-float v39, v21, v14

    if-gez v39, :cond_0

    .line 231
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mNotFollowDist:F

    move/from16 v39, v0

    cmpg-float v39, v6, v39

    if-gtz v39, :cond_7

    .line 232
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    move/from16 v19, v0

    goto/16 :goto_1

    .line 233
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mNotFollowDist:F

    move/from16 v39, v0

    cmpl-float v39, v6, v39

    if-lez v39, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mFollowDist:F

    move/from16 v39, v0

    cmpg-float v39, v6, v39

    if-gez v39, :cond_0

    .line 234
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mFollowDist:F

    move/from16 v39, v0

    div-float v39, v6, v39

    mul-float v39, v39, p1

    add-float v19, v16, v39

    goto/16 :goto_1

    .line 237
    .end local v6           #disBtwSlides:F
    .end local v20           #prevSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v21           #prevSlideY:F
    :cond_8
    const/16 v39, 0x0

    cmpg-float v39, p1, v39

    if-gez v39, :cond_0

    add-int/lit8 v39, v30, -0x1

    move/from16 v0, v39

    if-ge v11, v0, :cond_0

    .line 238
    const v18, 0x461c4000

    .line 239
    .local v18, nextSlideY:F
    add-int/lit8 v39, v11, 0x1

    move/from16 v0, v39

    invoke-virtual {v12, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v17

    .line 240
    .local v17, nextSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/samsunganimation/slide/SASlide;->getRegion()Lcom/sec/android/samsunganimation/basetype/SARect;

    move-result-object v39

    move-object/from16 v0, v39

    iget-object v0, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    move/from16 v18, v0

    .line 241
    sub-float v6, v16, v18

    .line 243
    .restart local v6       #disBtwSlides:F
    add-int/lit8 v39, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMinPos(I)F

    move-result v39

    cmpl-float v39, v18, v39

    if-lez v39, :cond_0

    .line 244
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mNotFollowDist:F

    move/from16 v39, v0

    cmpg-float v39, v6, v39

    if-gtz v39, :cond_9

    .line 245
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    move/from16 v19, v0

    goto/16 :goto_1

    .line 246
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mNotFollowDist:F

    move/from16 v39, v0

    cmpl-float v39, v6, v39

    if-lez v39, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mFollowDist:F

    move/from16 v39, v0

    cmpg-float v39, v6, v39

    if-gez v39, :cond_0

    .line 247
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mFollowDist:F

    move/from16 v39, v0

    div-float v39, v6, v39

    mul-float v39, v39, p1

    add-float v19, v16, v39

    goto/16 :goto_1

    .line 291
    .end local v6           #disBtwSlides:F
    .end local v17           #nextSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v18           #nextSlideY:F
    .restart local v26       #scaledHeight:F
    .restart local v27       #scaledWidth:F
    .restart local v28       #scaledX:F
    :cond_a
    cmpg-float v39, v5, v19

    if-gez v39, :cond_2

    .line 292
    const v39, 0x3d4ccccd

    sub-float v40, v19, v5

    mul-float v39, v39, v40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mCoverStopPos:F

    move/from16 v40, v0

    sub-float v40, v40, v5

    div-float v25, v39, v40

    .line 293
    .restart local v25       #scale:F
    const/high16 v39, 0x3f80

    add-float v39, v39, v25

    mul-float v27, v27, v39

    .line 294
    const/high16 v39, 0x3f80

    add-float v39, v39, v25

    mul-float v26, v26, v39

    .line 296
    sub-float v39, v27, v33

    const/high16 v40, 0x3f00

    mul-float v39, v39, v40

    sub-float v28, v28, v39

    goto/16 :goto_2

    .line 303
    .end local v14           #maxPos:F
    .end local v15           #minPos:F
    .end local v16           #mySlideY:F
    .end local v19           #nextY:F
    .end local v24           #region:Lcom/sec/android/samsunganimation/basetype/SARect;
    .end local v25           #scale:F
    .end local v26           #scaledHeight:F
    .end local v27           #scaledWidth:F
    .end local v28           #scaledX:F
    .end local v29           #slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v35           #sv:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator$ScrollValue;
    :cond_b
    return-void
.end method

.method public setScrollDirection(I)V
    .locals 0
    .parameter "scrollDirection"

    .prologue
    .line 314
    iput p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mScrollDirection:I

    .line 315
    return-void
.end method

.method public setScrollMode(I)V
    .locals 0
    .parameter "scrollMode"

    .prologue
    .line 310
    iput p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mScrollMode:I

    .line 311
    return-void
.end method

.method public setTouchDownPos(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mAutoScrollHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 60
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->initSwipeAni(F)V

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastVelocity:F

    .line 62
    return-void
.end method

.method public setTouchUpPos(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 65
    const/high16 v0, -0x4080

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSwipeOriginPos:F

    .line 66
    const/high16 v0, -0x3b86

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mPrevNextY:F

    .line 67
    return-void
.end method

.method public slideReArrangeAni(I)V
    .locals 33
    .parameter "removeIdx"

    .prologue
    .line 797
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-virtual {v8}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getTotalCount()I

    move-result v32

    .line 798
    .local v32, totalCount:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v21

    .line 800
    .local v21, mainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    add-int/lit8 v29, p1, 0x2

    .line 801
    .local v29, topIndex:I
    add-int/lit8 v8, v32, -0x1

    move/from16 v0, v29

    if-le v0, v8, :cond_0

    .line 802
    add-int/lit8 v29, v32, -0x1

    .line 805
    :cond_0
    add-int/lit8 v14, v29, -0x3

    .line 806
    .local v14, bottomIndex:I
    const/4 v8, 0x1

    if-ge v14, v8, :cond_1

    .line 807
    const/4 v14, 0x1

    .line 810
    :cond_1
    const/16 v20, 0x1

    .line 811
    .local v20, index:I
    const-string v8, "FlashBoard"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bottomIndex = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  topIndex = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v29

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    const-string v9, "window"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/WindowManager;

    invoke-interface {v8}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v16

    .line 818
    .local v16, display:Landroid/view/Display;
    invoke-virtual/range {v16 .. v16}, Landroid/view/Display;->getWidth()I

    move-result v17

    .line 819
    .local v17, displayWidth:I
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c006d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v30

    .line 820
    .local v30, topPos:F
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0075

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    .line 821
    .local v25, slideGap:F
    const/high16 v8, 0x4080

    mul-float v8, v8, v25

    add-float v31, v30, v8

    .line 822
    .local v31, topThreshold:F
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mCoverStopPos:F

    const/high16 v9, 0x4080

    mul-float v9, v9, v25

    sub-float v15, v8, v9

    .line 823
    .local v15, bottomThreshold:F
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0076

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v18

    .line 825
    .local v18, frameBorder:F
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0078

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v23

    .line 826
    .local v23, reSizeWidth:F
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0079

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    .line 827
    .local v22, reSizeHeight:F
    const/high16 v8, 0x4000

    mul-float v8, v8, v18

    add-float v27, v23, v8

    .line 828
    .local v27, slideWidth:F
    const/high16 v8, 0x4000

    mul-float v8, v8, v18

    add-float v26, v22, v8

    .line 830
    .local v26, slideHeight:F
    move/from16 v0, v17

    int-to-float v8, v0

    sub-float v8, v8, v27

    const/high16 v9, 0x4000

    div-float v28, v8, v9

    .line 833
    .local v28, slideX:F
    move/from16 v19, v14

    .local v19, i:I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, v29

    if-gt v0, v1, :cond_4

    .line 834
    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v3

    .line 835
    .local v3, slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    const/4 v5, 0x0

    .line 836
    .local v5, y:F
    move/from16 v0, v19

    move/from16 v1, v29

    if-ne v0, v1, :cond_3

    .line 837
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMinPos(I)F

    move-result v5

    .line 843
    :goto_1
    move/from16 v6, v27

    .line 844
    .local v6, scaledWidth:F
    move/from16 v7, v26

    .line 845
    .local v7, scaledHeight:F
    move/from16 v4, v28

    .line 846
    .local v4, scaledX:F
    cmpg-float v8, v5, v31

    if-gez v8, :cond_2

    .line 847
    const v8, 0x3d4ccccd

    sub-float v9, v31, v5

    mul-float/2addr v8, v9

    sub-float v9, v31, v30

    div-float v24, v8, v9

    .line 848
    .local v24, scale:F
    const/high16 v8, 0x3f80

    sub-float v8, v8, v24

    mul-float/2addr v6, v8

    .line 849
    const/high16 v8, 0x3f80

    sub-float v8, v8, v24

    mul-float/2addr v7, v8

    .line 851
    sub-float v8, v27, v6

    const/high16 v9, 0x3f00

    mul-float/2addr v8, v9

    add-float/2addr v4, v8

    .line 854
    .end local v24           #scale:F
    :cond_2
    const-string v8, "FlashBoard"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "index = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  y = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const/16 v8, 0xc8

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/samsunganimation/slide/SASlide;->setRegion(FFFFI)V

    .line 859
    add-int/lit8 v20, v20, 0x1

    .line 833
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 839
    .end local v4           #scaledX:F
    .end local v6           #scaledWidth:F
    .end local v7           #scaledHeight:F
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getInitPos(II)F

    move-result v5

    goto :goto_1

    .line 862
    .end local v3           #slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v5           #y:F
    :cond_4
    const/16 v19, 0x1

    :goto_2
    move/from16 v0, v19

    if-ge v0, v14, :cond_5

    .line 863
    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v3

    .line 864
    .restart local v3       #slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    const/4 v5, 0x0

    .line 865
    .restart local v5       #y:F
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMaxPos(I)F

    move-result v5

    .line 867
    invoke-virtual {v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->getRegion()Lcom/sec/android/samsunganimation/basetype/SARect;

    move-result-object v8

    iget-object v8, v8, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v9, v8, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    invoke-virtual {v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->getWidth()F

    move-result v11

    invoke-virtual {v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->getHeight()F

    move-result v12

    const/16 v13, 0xc8

    move-object v8, v3

    move v10, v5

    invoke-virtual/range {v8 .. v13}, Lcom/sec/android/samsunganimation/slide/SASlide;->setRegion(FFFFI)V

    .line 862
    add-int/lit8 v19, v19, 0x1

    goto :goto_2

    .line 871
    .end local v3           #slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v5           #y:F
    :cond_5
    return-void
.end method

.method public slideSelectAni1(ILandroid/graphics/Bitmap;)V
    .locals 31
    .parameter "slideIdx"
    .parameter "slideImage"

    .prologue
    .line 547
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlideCount()I

    move-result v26

    .line 548
    .local v26, slideCnt:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v20

    .line 549
    .local v20, mainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    .line 553
    .local v14, display:Landroid/view/Display;
    invoke-virtual {v14}, Landroid/view/Display;->getWidth()I

    move-result v16

    .line 555
    .local v16, displayWidth:I
    invoke-virtual {v14}, Landroid/view/Display;->getHeight()I

    move-result v15

    .line 557
    .local v15, displayHeight:I
    move/from16 v0, v16

    int-to-float v4, v0

    const/high16 v5, 0x3f00

    mul-float v27, v4, v5

    .line 558
    .local v27, slideX:F
    const/16 v17, 0x64

    .line 559
    .local v17, duration:I
    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v25

    .line 560
    .local v25, slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->resetPivot(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 562
    const/4 v4, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-static {v0, v1, v15, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v24

    .line 565
    .local v24, resized:Landroid/graphics/Bitmap;
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v16

    invoke-static {v0, v15, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSlideBitmap:Landroid/graphics/Bitmap;

    .line 568
    new-instance v12, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSlideBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v12, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 570
    .local v12, canvas:Landroid/graphics/Canvas;
    new-instance v23, Landroid/graphics/Paint;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Paint;-><init>()V

    .line 572
    .local v23, pnt:Landroid/graphics/Paint;
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v12, v0, v4, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 573
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSlideBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/sec/android/samsunganimation/slide/SASlide;->setImage(Landroid/graphics/Bitmap;)V

    .line 575
    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/samsunganimation/slide/SASlide;->getY()F

    move-result v13

    .line 576
    .local v13, currentY:F
    new-instance v9, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v17

    invoke-direct {v9, v0, v4, v5, v6}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;-><init>(IIZI)V

    .line 578
    .local v9, aniset:Lcom/sec/android/samsunganimation/animation/SAAnimationSet;
    new-instance v21, Lcom/sec/android/samsunganimation/basetype/SARect;

    const/4 v4, 0x0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/samsunganimation/slide/SASlide;->getWidth()F

    move-result v5

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/samsunganimation/slide/SASlide;->getHeight()F

    move-result v6

    move-object/from16 v0, v21

    invoke-direct {v0, v4, v13, v5, v6}, Lcom/sec/android/samsunganimation/basetype/SARect;-><init>(FFFF)V

    .line 579
    .local v21, movefrom:Lcom/sec/android/samsunganimation/basetype/SARect;
    new-instance v22, Lcom/sec/android/samsunganimation/basetype/SARect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v0, v16

    int-to-float v6, v0

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/samsunganimation/slide/SASlide;->getHeight()F

    move-result v7

    add-int/lit8 v8, v16, 0xa

    int-to-float v8, v8

    mul-float/2addr v7, v8

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/samsunganimation/slide/SASlide;->getWidth()F

    move-result v8

    div-float/2addr v7, v8

    move-object/from16 v0, v22

    invoke-direct {v0, v4, v5, v6, v7}, Lcom/sec/android/samsunganimation/basetype/SARect;-><init>(FFFF)V

    .line 581
    .local v22, moveto:Lcom/sec/android/samsunganimation/basetype/SARect;
    new-instance v30, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;

    const/4 v4, 0x1

    move-object/from16 v0, v30

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v4, v1, v2}, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;-><init>(ILcom/sec/android/samsunganimation/basetype/SARect;Lcom/sec/android/samsunganimation/basetype/SARect;)V

    .line 584
    .local v30, transAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    move-object/from16 v0, v30

    invoke-virtual {v9, v0}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->addAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)Z

    .line 585
    const-string v4, "SELECT"

    invoke-virtual {v9, v4}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->setTag(Ljava/lang/String;)V

    .line 586
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-virtual {v9, v4}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->setListener(Lcom/sec/android/samsunganimation/animation/SAAnimation$SAAnimationListener;)V

    .line 588
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v4, v5}, Lcom/sec/android/samsunganimation/slide/SASlide;->setZPosition(FI)V

    .line 589
    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Lcom/sec/android/samsunganimation/slide/SASlide;->startAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)V

    .line 591
    const/16 v19, 0x0

    .local v19, i:I
    :goto_0
    move/from16 v0, v19

    move/from16 v1, p1

    if-ge v0, v1, :cond_0

    .line 592
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v3

    .line 593
    .local v3, upperSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->resetPivot(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 594
    const/high16 v4, 0x4120

    invoke-virtual {v3, v4}, Lcom/sec/android/samsunganimation/slide/SASlide;->setZPosition(F)V

    .line 595
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->getWidth()F

    move-result v6

    invoke-virtual {v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->getHeight()F

    move-result v7

    const/16 v8, 0xc8

    invoke-virtual/range {v3 .. v8}, Lcom/sec/android/samsunganimation/slide/SASlide;->setRegion(FFFFI)V

    .line 591
    add-int/lit8 v19, v19, 0x1

    goto :goto_0

    .line 598
    .end local v3           #upperSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    :cond_0
    add-int/lit8 v19, p1, 0x1

    :goto_1
    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_1

    .line 599
    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v11

    .line 600
    .local v11, bottomSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->resetPivot(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 601
    new-instance v18, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    invoke-virtual {v11}, Lcom/sec/android/samsunganimation/slide/SASlide;->getY()F

    move-result v4

    move-object/from16 v0, v18

    move/from16 v1, v27

    invoke-direct {v0, v1, v4}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 602
    .local v18, fromPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v28, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    int-to-float v4, v15

    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-direct {v0, v1, v4}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 603
    .local v28, toPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v10, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;

    const/16 v4, 0x64

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct {v10, v4, v5, v6, v7}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;-><init>(IIZI)V

    .line 604
    .local v10, as:Lcom/sec/android/samsunganimation/animation/SAAnimationSet;
    new-instance v29, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;

    const/4 v4, 0x3

    move-object/from16 v0, v29

    move-object/from16 v1, v18

    move-object/from16 v2, v28

    invoke-direct {v0, v4, v1, v2}, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;-><init>(ILcom/sec/android/samsunganimation/basetype/SAPoint;Lcom/sec/android/samsunganimation/basetype/SAPoint;)V

    .line 606
    .local v29, tranAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->addAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)Z

    .line 607
    invoke-virtual {v11, v10}, Lcom/sec/android/samsunganimation/slide/SASlide;->startAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)V

    .line 598
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 609
    .end local v10           #as:Lcom/sec/android/samsunganimation/animation/SAAnimationSet;
    .end local v11           #bottomSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v18           #fromPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    .end local v28           #toPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    .end local v29           #tranAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSlideBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    .line 610
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSlideBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 611
    :cond_2
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSlideBitmap:Landroid/graphics/Bitmap;

    .line 612
    return-void
.end method

.method public slideSelectAni2(I)V
    .locals 30
    .parameter "slideIdx"

    .prologue
    .line 615
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlideCount()I

    move-result v21

    .line 616
    .local v21, slideCnt:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v16

    .line 617
    .local v16, mainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    const-string v27, "window"

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/view/WindowManager;

    invoke-interface/range {v26 .. v26}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v10

    .line 621
    .local v10, display:Landroid/view/Display;
    invoke-virtual {v10}, Landroid/view/Display;->getWidth()I

    move-result v12

    .line 623
    .local v12, displayWidth:I
    invoke-virtual {v10}, Landroid/view/Display;->getHeight()I

    move-result v11

    .line 625
    .local v11, displayHeight:I
    const/16 v13, 0xc8

    .line 626
    .local v13, duration:I
    move-object/from16 v0, v16

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v20

    .line 628
    .local v20, slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->resetPivot(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 629
    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/samsunganimation/slide/SASlide;->getX()F

    move-result v8

    .line 630
    .local v8, currentX:F
    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/samsunganimation/slide/SASlide;->getY()F

    move-result v9

    .line 631
    .local v9, currentY:F
    int-to-float v0, v11

    move/from16 v26, v0

    invoke-virtual/range {v20 .. v20}, Lcom/sec/android/samsunganimation/slide/SASlide;->getHeight()F

    move-result v27

    sub-float v26, v26, v27

    const/high16 v27, 0x4000

    div-float v26, v26, v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mMarginePos:F

    move/from16 v27, v0

    add-float v19, v26, v27

    .line 632
    .local v19, selectedSlideY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const v27, 0x7f0c0079

    invoke-virtual/range {v26 .. v27}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v26

    add-float v7, v19, v26

    .line 635
    .local v7, bottomSlidesY:F
    new-instance v4, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v4, v13, v0, v1, v2}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;-><init>(IIZI)V

    .line 637
    .local v4, aniset:Lcom/sec/android/samsunganimation/animation/SAAnimationSet;
    new-instance v17, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    move-object/from16 v0, v17

    invoke-direct {v0, v8, v9}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 638
    .local v17, movefrom:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v18, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-direct {v0, v8, v1}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 640
    .local v18, moveto:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v24, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;

    const/16 v26, 0x3

    move-object/from16 v0, v24

    move/from16 v1, v26

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;-><init>(ILcom/sec/android/samsunganimation/basetype/SAPoint;Lcom/sec/android/samsunganimation/basetype/SAPoint;)V

    .line 643
    .local v24, transAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->addAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)Z

    .line 644
    const-string v26, "SELECT"

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->setTag(Ljava/lang/String;)V

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->setListener(Lcom/sec/android/samsunganimation/animation/SAAnimation$SAAnimationListener;)V

    .line 647
    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Lcom/sec/android/samsunganimation/slide/SASlide;->startAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)V

    .line 649
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    move/from16 v0, p1

    if-ge v15, v0, :cond_0

    .line 650
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v25

    .line 651
    .local v25, upperSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->resetPivot(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 653
    new-instance v14, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/samsunganimation/slide/SASlide;->getX()F

    move-result v26

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/samsunganimation/slide/SASlide;->getY()F

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v14, v0, v1}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 654
    .local v14, fromPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v22, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    invoke-virtual/range {v25 .. v25}, Lcom/sec/android/samsunganimation/slide/SASlide;->getX()F

    move-result v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mMarginePos:F

    move/from16 v27, v0

    move-object/from16 v0, v22

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 655
    .local v22, toPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v5, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v5, v13, v0, v1, v2}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;-><init>(IIZI)V

    .line 656
    .local v5, as:Lcom/sec/android/samsunganimation/animation/SAAnimationSet;
    new-instance v23, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;

    const/16 v26, 0x3

    move-object/from16 v0, v23

    move/from16 v1, v26

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v14, v2}, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;-><init>(ILcom/sec/android/samsunganimation/basetype/SAPoint;Lcom/sec/android/samsunganimation/basetype/SAPoint;)V

    .line 658
    .local v23, tranAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->addAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)Z

    .line 659
    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/sec/android/samsunganimation/slide/SASlide;->startAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)V

    .line 649
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 662
    .end local v5           #as:Lcom/sec/android/samsunganimation/animation/SAAnimationSet;
    .end local v14           #fromPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    .end local v22           #toPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    .end local v23           #tranAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    .end local v25           #upperSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    :cond_0
    add-int/lit8 v15, p1, 0x1

    :goto_1
    move/from16 v0, v21

    if-ge v15, v0, :cond_1

    .line 663
    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v6

    .line 665
    .local v6, bottomSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->resetPivot(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 666
    new-instance v14, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    invoke-virtual {v6}, Lcom/sec/android/samsunganimation/slide/SASlide;->getX()F

    move-result v26

    invoke-virtual {v6}, Lcom/sec/android/samsunganimation/slide/SASlide;->getY()F

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v14, v0, v1}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 667
    .restart local v14       #fromPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v22, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    invoke-virtual {v6}, Lcom/sec/android/samsunganimation/slide/SASlide;->getX()F

    move-result v26

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-direct {v0, v1, v7}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 668
    .restart local v22       #toPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v5, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;

    const/16 v26, 0x96

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-direct {v5, v0, v1, v2, v3}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;-><init>(IIZI)V

    .line 669
    .restart local v5       #as:Lcom/sec/android/samsunganimation/animation/SAAnimationSet;
    new-instance v23, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;

    const/16 v26, 0x3

    move-object/from16 v0, v23

    move/from16 v1, v26

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v14, v2}, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;-><init>(ILcom/sec/android/samsunganimation/basetype/SAPoint;Lcom/sec/android/samsunganimation/basetype/SAPoint;)V

    .line 671
    .restart local v23       #tranAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->addAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)Z

    .line 672
    const-string v26, "SLIDE_FOLD"

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->setTag(Ljava/lang/String;)V

    .line 673
    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->setListener(Lcom/sec/android/samsunganimation/animation/SAAnimation$SAAnimationListener;)V

    .line 676
    invoke-virtual {v6, v5}, Lcom/sec/android/samsunganimation/slide/SASlide;->startAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)V

    .line 662
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 678
    .end local v5           #as:Lcom/sec/android/samsunganimation/animation/SAAnimationSet;
    .end local v6           #bottomSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v14           #fromPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    .end local v22           #toPoint:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    .end local v23           #tranAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSlideBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSlideBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/Bitmap;->recycle()V

    .line 680
    :cond_2
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSlideBitmap:Landroid/graphics/Bitmap;

    .line 682
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSelectedIndex:I

    .line 683
    return-void
.end method

.method public slideSetFocusAni(I)V
    .locals 13
    .parameter "focusedIdx"

    .prologue
    const/16 v5, 0xc8

    const/4 v12, 0x1

    .line 739
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mWindow:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;

    invoke-virtual {v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getTotalCount()I

    move-result v11

    .line 740
    .local v11, totalCount:I
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v9

    .line 742
    .local v9, mainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    add-int/lit8 v10, p1, 0x2

    .line 744
    .local v10, topIndex:I
    if-gt p1, v12, :cond_0

    .line 745
    const/4 v10, 0x4

    .line 748
    :cond_0
    add-int/lit8 v1, v11, -0x1

    if-le v10, v1, :cond_1

    .line 749
    add-int/lit8 v10, v11, -0x1

    .line 752
    :cond_1
    add-int/lit8 v6, v10, -0x3

    .line 753
    .local v6, bottomIndex:I
    if-ge v6, v12, :cond_2

    .line 754
    const/4 v6, 0x1

    .line 757
    :cond_2
    const/4 v8, 0x1

    .line 759
    .local v8, index:I
    move v7, v6

    .local v7, i:I
    :goto_0
    if-gt v7, v10, :cond_8

    .line 760
    invoke-virtual {v9, v7}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v0

    .line 761
    .local v0, slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    invoke-virtual {v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->getRegion()Lcom/sec/android/samsunganimation/basetype/SARect;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v2, v1, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    .line 763
    .local v2, y:F
    if-ne v7, v10, :cond_4

    .line 764
    invoke-virtual {p0, v7}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMinPos(I)F

    move-result v2

    .line 780
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->getRegion()Lcom/sec/android/samsunganimation/basetype/SARect;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    invoke-virtual {v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->getWidth()F

    move-result v3

    invoke-virtual {v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->getHeight()F

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/samsunganimation/slide/SASlide;->setRegion(FFFFI)V

    .line 782
    add-int/lit8 v8, v8, 0x1

    .line 759
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 766
    :cond_4
    const/4 v1, 0x3

    if-le v11, v1, :cond_7

    add-int/lit8 v1, v10, -0x1

    if-lt p1, v1, :cond_7

    .line 767
    add-int/lit8 v1, v10, -0x1

    if-ne v7, v1, :cond_5

    .line 768
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v11}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getInitPos(II)F

    move-result v2

    goto :goto_1

    .line 769
    :cond_5
    add-int/lit8 v1, v10, -0x2

    if-ne v7, v1, :cond_6

    .line 770
    invoke-virtual {p0, v12, v11}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getInitPos(II)F

    move-result v2

    goto :goto_1

    .line 771
    :cond_6
    add-int/lit8 v1, v10, -0x3

    if-ne v7, v1, :cond_3

    .line 772
    invoke-virtual {p0, v7}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMaxPos(I)F

    move-result v2

    goto :goto_1

    .line 775
    :cond_7
    invoke-virtual {p0, v8, v11}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getInitPos(II)F

    move-result v2

    goto :goto_1

    .line 785
    .end local v0           #slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v2           #y:F
    :cond_8
    const/4 v7, 0x1

    :goto_2
    if-ge v7, v6, :cond_9

    .line 786
    invoke-virtual {v9, v7}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v0

    .line 787
    .restart local v0       #slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    const/4 v2, 0x0

    .line 788
    .restart local v2       #y:F
    invoke-virtual {p0, v7}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMaxPos(I)F

    move-result v2

    .line 790
    invoke-virtual {v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->getRegion()Lcom/sec/android/samsunganimation/basetype/SARect;

    move-result-object v1

    iget-object v1, v1, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v1, v1, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    invoke-virtual {v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->getWidth()F

    move-result v3

    invoke-virtual {v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->getHeight()F

    move-result v4

    invoke-virtual/range {v0 .. v5}, Lcom/sec/android/samsunganimation/slide/SASlide;->setRegion(FFFFI)V

    .line 785
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 794
    .end local v0           #slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v2           #y:F
    :cond_9
    return-void
.end method

.method public startBoundAni(F)V
    .locals 21
    .parameter "scroll"

    .prologue
    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v7

    .line 433
    .local v7, mainSilde:Lcom/sec/android/samsunganimation/slide/SASlide;
    invoke-virtual {v7}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlideCount()I

    move-result v15

    .line 434
    .local v15, slideCnt:I
    const/4 v10, 0x0

    .line 435
    .local v10, offsetX:F
    const/4 v11, 0x0

    .line 436
    .local v11, offsetZ:F
    const v12, 0x3e4ccccd

    .line 437
    .local v12, pivot:F
    const/16 v17, 0x0

    .line 438
    .local v17, weight:F
    const/16 v3, 0xc8

    .line 439
    .local v3, duration:I
    const/4 v8, 0x0

    .line 440
    .local v8, nextOffsetX:F
    const/4 v9, 0x0

    .line 441
    .local v9, nextOffsetZ:F
    const/4 v6, 0x0

    .line 443
    .local v6, length:F
    const-string v18, "FlashBoard"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "scroll="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v18

    const/high16 v19, 0x40a0

    cmpl-float v18, v18, v19

    if-lez v18, :cond_0

    const/high16 v6, 0x40a0

    .line 446
    :goto_0
    const/high16 v18, 0x4040

    div-float v17, v6, v18

    .line 448
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mBoundScrollDirection:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 449
    const v12, 0x3e4ccccd

    .line 450
    const/16 v18, 0x0

    cmpl-float v18, p1, v18

    if-lez v18, :cond_1

    .line 451
    const/high16 v18, 0x40a0

    mul-float v10, v18, v17

    .line 452
    const v11, -0x42333333

    .line 457
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetX:F

    move/from16 v18, v0

    add-float v18, v18, v10

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_2

    .line 458
    const/4 v8, 0x0

    .line 459
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetZ:F

    .line 460
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mScrollMode:I

    .line 461
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mBoundScrollDirection:I

    .line 491
    :goto_2
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    if-ge v5, v15, :cond_8

    .line 492
    invoke-virtual {v7, v5}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v14

    .line 493
    .local v14, saSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    const/high16 v18, 0x3f00

    move/from16 v0, v18

    invoke-virtual {v14, v0, v12}, Lcom/sec/android/samsunganimation/slide/SASlide;->setPivotPoint(FF)V

    .line 495
    new-instance v4, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetX:F

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetZ:F

    move/from16 v20, v0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v4, v0, v1, v2}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>(FFF)V

    .line 496
    .local v4, fromRotate:Lcom/sec/android/samsunganimation/basetype/SAVector3;
    new-instance v16, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-direct {v0, v8, v1, v9}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>(FFF)V

    .line 498
    .local v16, toRotate:Lcom/sec/android/samsunganimation/basetype/SAVector3;
    new-instance v13, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;

    const/16 v18, 0x6

    move/from16 v0, v18

    invoke-direct {v13, v0}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;-><init>(I)V

    .line 500
    .local v13, rotateAni:Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;
    invoke-virtual {v13, v3}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;->setDuration(I)V

    .line 502
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v0, v4}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;->addKeyProperty(FLcom/sec/android/samsunganimation/basetype/SAVector3;)V

    .line 503
    const/high16 v18, 0x3f80

    move/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v13, v0, v1}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;->addKeyProperty(FLcom/sec/android/samsunganimation/basetype/SAVector3;)V

    .line 505
    invoke-virtual {v14, v13}, Lcom/sec/android/samsunganimation/slide/SASlide;->startAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)V

    .line 491
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 445
    .end local v4           #fromRotate:Lcom/sec/android/samsunganimation/basetype/SAVector3;
    .end local v5           #i:I
    .end local v13           #rotateAni:Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;
    .end local v14           #saSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v16           #toRotate:Lcom/sec/android/samsunganimation/basetype/SAVector3;
    :cond_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    goto/16 :goto_0

    .line 454
    :cond_1
    const/high16 v18, -0x3f60

    mul-float v10, v18, v17

    goto/16 :goto_1

    .line 462
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetX:F

    move/from16 v18, v0

    add-float v18, v18, v10

    const/high16 v19, 0x4150

    cmpg-float v18, v18, v19

    if-gez v18, :cond_3

    .line 463
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetX:F

    move/from16 v18, v0

    add-float v8, v18, v10

    .line 464
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetZ:F

    move/from16 v18, v0

    add-float v9, v18, v11

    goto :goto_2

    .line 466
    :cond_3
    const/high16 v8, 0x4150

    .line 467
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetZ:F

    goto/16 :goto_2

    .line 470
    :cond_4
    const/high16 v12, 0x3f00

    .line 472
    const/16 v18, 0x0

    cmpl-float v18, p1, v18

    if-lez v18, :cond_5

    .line 473
    const/high16 v18, 0x4040

    mul-float v10, v18, v17

    .line 478
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetX:F

    move/from16 v18, v0

    add-float v18, v18, v10

    const/high16 v19, -0x3f40

    cmpg-float v18, v18, v19

    if-gez v18, :cond_6

    .line 479
    const/high16 v8, -0x3f40

    .line 480
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetZ:F

    goto/16 :goto_2

    .line 475
    :cond_5
    const/high16 v18, -0x3fc0

    mul-float v10, v18, v17

    goto :goto_4

    .line 481
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetX:F

    move/from16 v18, v0

    add-float v18, v18, v10

    const/16 v19, 0x0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_7

    .line 482
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetX:F

    move/from16 v18, v0

    add-float v8, v18, v10

    .line 483
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetZ:F

    move/from16 v18, v0

    add-float v9, v18, v11

    goto/16 :goto_2

    .line 485
    :cond_7
    const/4 v8, 0x0

    .line 486
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetZ:F

    .line 487
    const/16 v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mScrollMode:I

    .line 488
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mBoundScrollDirection:I

    goto/16 :goto_2

    .line 508
    .restart local v5       #i:I
    :cond_8
    move-object/from16 v0, p0

    iput v8, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetX:F

    .line 509
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOffsetZ:F

    .line 511
    return-void
.end method

.method public startBoundAni(IF)V
    .locals 16
    .parameter "scrollAction"
    .parameter "velocity"

    .prologue
    .line 396
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v4

    .line 397
    .local v4, mainSilde:Lcom/sec/android/samsunganimation/slide/SASlide;
    invoke-virtual {v4}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlideCount()I

    move-result v10

    .line 398
    .local v10, slideCnt:I
    const/4 v5, 0x0

    .line 399
    .local v5, offsetX:F
    const/4 v6, 0x0

    .line 400
    .local v6, offsetZ:F
    const v7, 0x3e4ccccd

    .line 401
    .local v7, pivot:F
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/high16 v14, 0x42c8

    cmpl-float v13, v13, v14

    if-lez v13, :cond_0

    const/high16 v12, 0x3f80

    .line 402
    .local v12, weight:F
    :goto_0
    const/16 v1, 0xc8

    .line 404
    .local v1, duration:I
    const/4 v13, 0x2

    move/from16 v0, p1

    if-ne v0, v13, :cond_1

    .line 405
    const/high16 v13, 0x40a0

    mul-float v5, v13, v12

    .line 406
    const v6, -0x42333333

    .line 412
    :goto_1
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v10, :cond_2

    .line 413
    invoke-virtual {v4, v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v9

    .line 414
    .local v9, saSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    const/high16 v13, 0x3f00

    invoke-virtual {v9, v13, v7}, Lcom/sec/android/samsunganimation/slide/SASlide;->setPivotPoint(FF)V

    .line 416
    new-instance v2, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v2, v13, v14, v15}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>(FFF)V

    .line 417
    .local v2, fromRotate:Lcom/sec/android/samsunganimation/basetype/SAVector3;
    new-instance v11, Lcom/sec/android/samsunganimation/basetype/SAVector3;

    const/4 v13, 0x0

    invoke-direct {v11, v5, v13, v6}, Lcom/sec/android/samsunganimation/basetype/SAVector3;-><init>(FFF)V

    .line 419
    .local v11, toRotate:Lcom/sec/android/samsunganimation/basetype/SAVector3;
    new-instance v8, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;

    const/4 v13, 0x6

    invoke-direct {v8, v13}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;-><init>(I)V

    .line 421
    .local v8, rotateAni:Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;
    invoke-virtual {v8, v1}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;->setDuration(I)V

    .line 423
    const/4 v13, 0x0

    invoke-virtual {v8, v13, v2}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;->addKeyProperty(FLcom/sec/android/samsunganimation/basetype/SAVector3;)V

    .line 424
    const/high16 v13, 0x3f00

    invoke-virtual {v8, v13, v11}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;->addKeyProperty(FLcom/sec/android/samsunganimation/basetype/SAVector3;)V

    .line 425
    const/high16 v13, 0x3f80

    invoke-virtual {v8, v13, v2}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;->addKeyProperty(FLcom/sec/android/samsunganimation/basetype/SAVector3;)V

    .line 427
    invoke-virtual {v9, v8}, Lcom/sec/android/samsunganimation/slide/SASlide;->startAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)V

    .line 412
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 401
    .end local v1           #duration:I
    .end local v2           #fromRotate:Lcom/sec/android/samsunganimation/basetype/SAVector3;
    .end local v3           #i:I
    .end local v8           #rotateAni:Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;
    .end local v9           #saSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v11           #toRotate:Lcom/sec/android/samsunganimation/basetype/SAVector3;
    .end local v12           #weight:F
    :cond_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const v14, 0x3ca3d70a

    mul-float v12, v13, v14

    goto :goto_0

    .line 408
    .restart local v1       #duration:I
    .restart local v12       #weight:F
    :cond_1
    const/high16 v7, 0x3f00

    .line 409
    const/high16 v13, -0x3fc0

    mul-float v5, v13, v12

    goto :goto_1

    .line 429
    .restart local v3       #i:I
    :cond_2
    return-void
.end method

.method protected startCoverAni()V
    .locals 13

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v7

    .line 151
    .local v7, mainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v2

    .line 152
    .local v2, coverSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    const/16 v5, 0x190

    .line 153
    .local v5, duration:I
    iget-object v11, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    const-string v12, "window"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/WindowManager;

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 155
    .local v3, display:Landroid/view/Display;
    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v4

    .line 157
    .local v4, displayHeight:I
    iget v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mCoverStopPos:F

    .line 158
    .local v6, finalY:F
    const v11, 0x3f866666

    mul-float v1, v6, v11

    .line 160
    .local v1, boundY:F
    new-instance v8, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    invoke-virtual {v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->getX()F

    move-result v11

    invoke-virtual {v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->getY()F

    move-result v12

    invoke-direct {v8, v11, v12}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 161
    .local v8, movefrom:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    invoke-virtual {v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->getX()F

    move-result v11

    invoke-direct {v0, v11, v1}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 162
    .local v0, bound:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v9, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    invoke-virtual {v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->getX()F

    move-result v11

    invoke-direct {v9, v11, v6}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 164
    .local v9, moveto:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v10, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;

    const/4 v11, 0x3

    invoke-direct {v10, v11}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;-><init>(I)V

    .line 166
    .local v10, transAni:Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;
    invoke-virtual {v10, v5}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;->setDuration(I)V

    .line 168
    const/4 v11, 0x0

    invoke-virtual {v10, v11, v8}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;->addKeyProperty(FLcom/sec/android/samsunganimation/basetype/SAPoint;)V

    .line 169
    const v11, 0x3f666666

    invoke-virtual {v10, v11, v0}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;->addKeyProperty(FLcom/sec/android/samsunganimation/basetype/SAPoint;)V

    .line 170
    const/high16 v11, 0x3f80

    invoke-virtual {v10, v11, v9}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;->addKeyProperty(FLcom/sec/android/samsunganimation/basetype/SAPoint;)V

    .line 171
    invoke-virtual {v10, p0}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;->setListener(Lcom/sec/android/samsunganimation/animation/SAAnimation$SAAnimationListener;)V

    .line 172
    const-string v11, "COVER_SLIDING"

    invoke-virtual {v10, v11}, Lcom/sec/android/samsunganimation/animation/SAKeyFrameAnimation;->setTag(Ljava/lang/String;)V

    .line 173
    invoke-virtual {v2, v10}, Lcom/sec/android/samsunganimation/slide/SASlide;->startAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)V

    .line 174
    return-void
.end method

.method public startSwipeAni(IF)V
    .locals 20
    .parameter "slideIdx"
    .parameter "x"

    .prologue
    .line 318
    const/4 v7, 0x1

    .line 319
    .local v7, duration:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "window"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/WindowManager;

    invoke-interface/range {v17 .. v17}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    .line 323
    .local v4, display:Landroid/view/Display;
    invoke-virtual {v4}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 325
    .local v5, displayWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v17

    move-object/from16 v0, v17

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v12

    .line 326
    .local v12, slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    if-nez v12, :cond_0

    .line 357
    :goto_0
    return-void

    .line 329
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSwipeOriginPos:F

    move/from16 v17, v0

    sub-float v6, v17, p2

    .line 330
    .local v6, dist:F
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mSwipeMaxLength:F

    move/from16 v18, v0

    div-float v11, v17, v18

    .line 331
    .local v11, ratio:F
    const/high16 v17, 0x3f80

    cmpl-float v17, v11, v17

    if-lez v17, :cond_2

    const/high16 v14, 0x3f80

    .line 332
    .local v14, strenth:F
    :goto_1
    int-to-float v0, v5

    move/from16 v17, v0

    const/high16 v18, 0x3f00

    mul-float v17, v17, v18

    sub-float v13, v17, v6

    .line 334
    .local v13, slidePos:F
    const/high16 v17, 0x3f80

    sub-float v9, v17, v14

    .line 335
    .local v9, opacity:F
    const/16 v17, 0x0

    cmpg-float v17, v9, v17

    if-gez v17, :cond_3

    .line 336
    const/4 v9, 0x0

    .line 341
    :cond_1
    :goto_2
    new-instance v3, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v3, v7, v0, v1, v2}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;-><init>(IIZI)V

    .line 342
    .local v3, aniSetFrom:Lcom/sec/android/samsunganimation/animation/SAAnimationSet;
    new-instance v10, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;

    const/16 v17, 0x9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOpacity:F

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v10, v0, v1, v9}, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;-><init>(IFF)V

    .line 344
    .local v10, opacityAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    invoke-virtual {v3, v10}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->addAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)Z

    .line 346
    new-instance v8, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastMovePos:F

    move/from16 v17, v0

    invoke-virtual {v12}, Lcom/sec/android/samsunganimation/slide/SASlide;->getY()F

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v8, v0, v1}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 347
    .local v8, fromPos:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v15, Lcom/sec/android/samsunganimation/basetype/SAPoint;

    invoke-virtual {v12}, Lcom/sec/android/samsunganimation/slide/SASlide;->getY()F

    move-result v17

    move/from16 v0, v17

    invoke-direct {v15, v13, v0}, Lcom/sec/android/samsunganimation/basetype/SAPoint;-><init>(FF)V

    .line 349
    .local v15, toPos:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    new-instance v16, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;

    const/16 v17, 0x3

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v1, v8, v15}, Lcom/sec/android/samsunganimation/animation/SABasicAnimation;-><init>(ILcom/sec/android/samsunganimation/basetype/SAPoint;Lcom/sec/android/samsunganimation/basetype/SAPoint;)V

    .line 351
    .local v16, transAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->addAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)Z

    .line 353
    invoke-virtual {v12, v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->startAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)V

    .line 355
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastOpacity:F

    .line 356
    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->mLastMovePos:F

    goto/16 :goto_0

    .end local v3           #aniSetFrom:Lcom/sec/android/samsunganimation/animation/SAAnimationSet;
    .end local v8           #fromPos:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    .end local v9           #opacity:F
    .end local v10           #opacityAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    .end local v13           #slidePos:F
    .end local v14           #strenth:F
    .end local v15           #toPos:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    .end local v16           #transAni:Lcom/sec/android/samsunganimation/animation/SABasicAnimation;
    :cond_2
    move v14, v11

    .line 331
    goto :goto_1

    .line 337
    .restart local v9       #opacity:F
    .restart local v13       #slidePos:F
    .restart local v14       #strenth:F
    :cond_3
    const/high16 v17, 0x3f80

    cmpl-float v17, v9, v17

    if-lez v17, :cond_1

    .line 338
    const/high16 v9, 0x3f80

    goto :goto_2
.end method
