.class public Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;
.super Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;
.source "SmartSwitcherWindow.java"

# interfaces
.implements Lcom/sec/android/samsunganimation/animation/SAAnimation$SAAnimationListener;
.implements Lcom/android/systemui/recent/smartswitcher/SmartSwitcherContants;
.implements Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView$SmartSwitcherRecentsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;
    }
.end annotation


# instance fields
.field private mActiveMode:Z

.field private mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

.field private mCallback:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsCallback;

.field mContext:Landroid/content/Context;

.field private mCurrentX:F

.field private mCurrentY:F

.field private mDeleteButtonH:F

.field private mDeleteButtonW:F

.field private mDeleteButtonX:F

.field private mDeleteButtonY:F

.field private mDeletePressed:Z

.field private mDeletePressedIndex:I

.field private mFocusedIndex:I

.field private mFrameBorder:F

.field private mLoadedSlideFirst:I

.field private mLoadedSlideLast:I

.field private mPreviousX:F

.field private mPreviousY:F

.field private mRecentAppsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedSlideIndex:I

.field private mSwipeMaxLength:F

.field private mSwippingSideIndex:I

.field private mVisibleSlideCount:I

.field private mVisibleSlideFirst:I

.field private mVisibleSlideLast:I

.field private slideLoadTask:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;-><init>(Landroid/content/Context;)V

    .line 42
    iput-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    .line 44
    iput-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    .line 46
    iput v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mVisibleSlideCount:I

    .line 48
    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    .line 50
    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mCurrentX:F

    .line 52
    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mCurrentY:F

    .line 54
    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mPreviousX:F

    .line 56
    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mPreviousY:F

    .line 58
    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSwippingSideIndex:I

    .line 60
    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mVisibleSlideFirst:I

    .line 62
    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mVisibleSlideLast:I

    .line 64
    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mLoadedSlideFirst:I

    .line 66
    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mLoadedSlideLast:I

    .line 68
    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSelectedSlideIndex:I

    .line 72
    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeleteButtonX:F

    .line 74
    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeleteButtonY:F

    .line 76
    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeleteButtonW:F

    .line 78
    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeleteButtonH:F

    .line 80
    iput-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mRecentAppsList:Ljava/util/ArrayList;

    .line 82
    iput-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->slideLoadTask:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;

    .line 84
    iput-boolean v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mActiveMode:Z

    .line 86
    iput-boolean v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeletePressed:Z

    .line 87
    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeletePressedIndex:I

    .line 89
    iput-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mCallback:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsCallback;

    .line 91
    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    .line 95
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    .line 97
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->isPortraitMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    invoke-static {}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;->getInstance()Lcom/android/systemui/recent/smartswitcher/SmartSwitcherVerticalSlideAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    .line 102
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->init(Landroid/content/Context;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)V

    .line 103
    iput-boolean v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mActiveMode:Z

    .line 105
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeleteButtonX:F

    .line 106
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeleteButtonY:F

    .line 107
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeleteButtonW:F

    .line 108
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c006c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeleteButtonH:F

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v0

    if-nez v0, :cond_0

    .line 111
    invoke-super {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->buildSubSlide()V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->setMainSlide(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 115
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0076

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    .line 116
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0083

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSwipeMaxLength:F

    .line 117
    return-void

    .line 100
    :cond_1
    invoke-static {}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherHorizonSlideAnimator;->getInstance()Lcom/android/systemui/recent/smartswitcher/SmartSwitcherHorizonSlideAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mVisibleSlideCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mRecentAppsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;Lcom/sec/android/samsunganimation/slide/SASlide;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->resetPivot(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->isPortraitMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    return-object v0
.end method

.method private checkRemoveButtonTouched(Lcom/sec/android/samsunganimation/basetype/SAVector2;)I
    .locals 9
    .parameter "pos"

    .prologue
    .line 431
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v1

    .line 432
    .local v1, mainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    invoke-virtual {v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlideCount()I

    move-result v3

    .line 433
    .local v3, slideCnt:I
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_2

    .line 434
    invoke-virtual {v1, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v2

    .line 436
    .local v2, slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->isPortraitMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 437
    invoke-virtual {v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->getRegion()Lcom/sec/android/samsunganimation/basetype/SARect;

    move-result-object v6

    iget-object v6, v6, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v6, v6, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    iget v7, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    add-float v5, v6, v7

    .line 438
    .local v5, y:F
    iget v6, p1, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mX:F

    iget v7, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeleteButtonX:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_1

    iget v6, p1, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mX:F

    iget v7, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeleteButtonX:F

    iget v8, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeleteButtonW:F

    add-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_1

    .line 439
    iget v6, p1, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mY:F

    cmpl-float v6, v6, v5

    if-lez v6, :cond_1

    iget v6, p1, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mY:F

    iget v7, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeleteButtonH:F

    add-float/2addr v7, v5

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 440
    const-string v6, "FlashBoard"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete slide index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    .end local v0           #i:I
    .end local v2           #slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v5           #y:F
    :goto_1
    return v0

    .line 445
    .restart local v0       #i:I
    .restart local v2       #slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    :cond_0
    invoke-virtual {v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->getRegion()Lcom/sec/android/samsunganimation/basetype/SARect;

    move-result-object v6

    iget-object v6, v6, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v6, v6, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    iget v7, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    add-float v4, v6, v7

    .line 446
    .local v4, x:F
    iget v6, p1, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mY:F

    iget v7, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeleteButtonY:F

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_1

    iget v6, p1, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mY:F

    iget v7, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeleteButtonY:F

    iget v8, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeleteButtonH:F

    add-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_1

    .line 447
    iget v6, p1, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mX:F

    cmpl-float v6, v6, v4

    if-lez v6, :cond_1

    iget v6, p1, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mX:F

    iget v7, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeleteButtonW:F

    add-float/2addr v7, v4

    cmpg-float v6, v6, v7

    if-gez v6, :cond_1

    .line 448
    const-string v6, "FlashBoard"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "delete slide index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 433
    .end local v4           #x:F
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 454
    .end local v2           #slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private finishSwipe(Lcom/sec/android/samsunganimation/basetype/SAVector2;)V
    .locals 6
    .parameter "pos"

    .prologue
    const/high16 v3, 0x3f80

    .line 475
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSwippingSideIndex:I

    invoke-virtual {v4, v5}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v2

    .line 476
    .local v2, slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    if-nez v2, :cond_0

    .line 499
    :goto_0
    return-void

    .line 481
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->isPortraitMode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 482
    iget-object v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v4}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->getSwipeOriginPos()F

    move-result v4

    iget v5, p1, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mX:F

    sub-float v0, v4, v5

    .line 487
    .local v0, dist:F
    :goto_1
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSwipeMaxLength:F

    div-float v1, v4, v5

    .line 488
    .local v1, ratio:F
    cmpl-float v4, v1, v3

    if-lez v4, :cond_2

    .line 490
    .local v3, strenth:F
    :goto_2
    const/high16 v4, 0x3f00

    cmpl-float v4, v3, v4

    if-lez v4, :cond_3

    .line 491
    iget v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSwippingSideIndex:I

    invoke-direct {p0, v4}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->removeSlide(I)V

    .line 492
    iget-object v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->setScrollMode(I)V

    .line 497
    :goto_3
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSwippingSideIndex:I

    goto :goto_0

    .line 484
    .end local v0           #dist:F
    .end local v1           #ratio:F
    .end local v3           #strenth:F
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v4}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->getSwipeOriginPos()F

    move-result v4

    iget v5, p1, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mY:F

    sub-float v0, v4, v5

    .restart local v0       #dist:F
    goto :goto_1

    .restart local v1       #ratio:F
    :cond_2
    move v3, v1

    .line 488
    goto :goto_2

    .line 494
    .restart local v3       #strenth:F
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    iget v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSwippingSideIndex:I

    invoke-virtual {v4, v5}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->restoreSwipeAni(I)V

    goto :goto_3
.end method

.method private getSlideIndexFromPos(Lcom/sec/android/samsunganimation/basetype/SAVector2;)I
    .locals 11
    .parameter "pos"

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v2

    .line 413
    .local v2, mainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    invoke-virtual {v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlideCount()I

    move-result v4

    .line 414
    .local v4, slideCnt:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_1

    .line 415
    invoke-virtual {v2, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v3

    .line 416
    .local v3, slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    invoke-virtual {v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->getRegion()Lcom/sec/android/samsunganimation/basetype/SARect;

    move-result-object v8

    iget-object v8, v8, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v6, v8, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    .line 417
    .local v6, x:F
    invoke-virtual {v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->getRegion()Lcom/sec/android/samsunganimation/basetype/SARect;

    move-result-object v8

    iget-object v8, v8, Lcom/sec/android/samsunganimation/basetype/SARect;->mOrigin:Lcom/sec/android/samsunganimation/basetype/SAPoint;

    iget v8, v8, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    iget v9, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    add-float v7, v8, v9

    .line 418
    .local v7, y:F
    invoke-virtual {v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->getWidth()F

    move-result v5

    .line 419
    .local v5, w:F
    invoke-virtual {v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->getHeight()F

    move-result v8

    iget v9, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    const/high16 v10, 0x4000

    mul-float/2addr v9, v10

    sub-float v0, v8, v9

    .line 421
    .local v0, h:F
    iget v8, p1, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mX:F

    cmpl-float v8, v8, v6

    if-ltz v8, :cond_0

    iget v8, p1, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mX:F

    add-float v9, v6, v5

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_0

    .line 422
    iget v8, p1, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mY:F

    cmpl-float v8, v8, v7

    if-lez v8, :cond_0

    iget v8, p1, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mY:F

    add-float v9, v7, v0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_0

    .line 427
    .end local v0           #h:F
    .end local v1           #i:I
    .end local v3           #slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v5           #w:F
    .end local v6           #x:F
    .end local v7           #y:F
    :goto_1
    return v1

    .line 414
    .restart local v0       #h:F
    .restart local v1       #i:I
    .restart local v3       #slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .restart local v5       #w:F
    .restart local v6       #x:F
    .restart local v7       #y:F
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    .end local v0           #h:F
    .end local v3           #slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v5           #w:F
    .end local v6           #x:F
    .end local v7           #y:F
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private isPortraitMode()Z
    .locals 2

    .prologue
    .line 880
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->mRotation:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->mRotation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 881
    :cond_0
    const/4 v0, 0x1

    .line 883
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDeleteButtonClick(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 538
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->removeSlideAni(I)V

    .line 539
    return-void
.end method

.method private onSelectSlide(Lcom/sec/android/samsunganimation/basetype/SAVector2;)V
    .locals 5
    .parameter "pos"

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x1

    .line 502
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getSlideIndexFromPos(Lcom/sec/android/samsunganimation/basetype/SAVector2;)I

    move-result v1

    .line 503
    .local v1, slideIdx:I
    if-ne v1, v4, :cond_1

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->slideLoadTask:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;

    if-eqz v2, :cond_2

    .line 508
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->slideLoadTask:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;

    invoke-virtual {v2, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->cancel(Z)Z

    .line 509
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->slideLoadTask:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;

    .line 514
    :cond_2
    iget v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSelectedSlideIndex:I

    sub-int/2addr v2, v1

    if-le v2, v3, :cond_4

    .line 515
    iget v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSelectedSlideIndex:I

    add-int/lit8 v1, v2, -0x1

    .line 519
    :cond_3
    :goto_1
    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSelectedSlideIndex:I

    .line 530
    iput-boolean v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mActiveMode:Z

    .line 532
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mRecentAppsList:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSelectedSlideIndex:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/TaskDescription;

    .line 533
    .local v0, currentTaskDescrption:Lcom/android/systemui/recent/TaskDescription;
    if-eqz v0, :cond_0

    .line 534
    iget-object v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mCallback:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsCallback;

    invoke-interface {v2, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsCallback;->handleOnClick(Lcom/android/systemui/recent/TaskDescription;)V

    goto :goto_0

    .line 516
    .end local v0           #currentTaskDescrption:Lcom/android/systemui/recent/TaskDescription;
    :cond_4
    iget v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSelectedSlideIndex:I

    if-eq v2, v4, :cond_3

    iget v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSelectedSlideIndex:I

    sub-int v2, v1, v2

    if-le v2, v3, :cond_3

    .line 517
    iget v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSelectedSlideIndex:I

    add-int/lit8 v1, v2, 0x1

    goto :goto_1
.end method

.method private removeSlide(I)V
    .locals 4
    .parameter "slideIdx"

    .prologue
    .line 542
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v1

    .line 543
    .local v1, mainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    invoke-virtual {v1, p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v2

    .line 544
    .local v2, slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    if-eqz v2, :cond_0

    .line 545
    invoke-virtual {v1, v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->removeSlide(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 547
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/TaskDescription;

    .line 548
    .local v0, currentTaskDescrption:Lcom/android/systemui/recent/TaskDescription;
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 549
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mVisibleSlideCount:I

    .line 551
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v3, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->slideReArrangeAni(I)V

    .line 552
    if-eqz v0, :cond_0

    .line 553
    iget-object v3, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mCallback:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsCallback;

    invoke-interface {v3, v0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsCallback;->handleSwipe(Lcom/android/systemui/recent/TaskDescription;I)V

    .line 556
    .end local v0           #currentTaskDescrption:Lcom/android/systemui/recent/TaskDescription;
    :cond_0
    return-void
.end method

.method private resetPivot(Lcom/sec/android/samsunganimation/slide/SASlide;)V
    .locals 3
    .parameter "slide"

    .prologue
    const/4 v2, 0x0

    .line 694
    invoke-virtual {p1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getPivotPoint()Lcom/sec/android/samsunganimation/basetype/SAPoint;

    move-result-object v0

    .line 695
    .local v0, pivot:Lcom/sec/android/samsunganimation/basetype/SAPoint;
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->isPortraitMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 696
    iget v1, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mX:F

    invoke-virtual {p1, v1, v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->setPivotPoint(FF)V

    .line 700
    :goto_0
    return-void

    .line 698
    :cond_0
    iget v1, v0, Lcom/sec/android/samsunganimation/basetype/SAPoint;->mY:F

    invoke-virtual {p1, v2, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->setPivotPoint(FF)V

    goto :goto_0
.end method

.method private scrollSlides(F)V
    .locals 1
    .parameter "velocity"

    .prologue
    .line 388
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    :goto_0
    return-void

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->scrollSlides(F)V

    goto :goto_0
.end method

.method private setBorderImage(Landroid/graphics/Bitmap;Landroid/graphics/NinePatch;IIZ)Landroid/graphics/Bitmap;
    .locals 17
    .parameter "bgImage"
    .parameter "npBitmap"
    .parameter "w"
    .parameter "h"
    .parameter "bCover"

    .prologue
    .line 628
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v0, v1, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 629
    .local v9, output_bitmap:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 630
    .local v3, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f02009d

    invoke-static {v13, v14}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 634
    .local v6, delete_bitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c0077

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v7, v13

    .line 636
    .local v7, discardTop:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c007a

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v12, v13

    .line 637
    .local v12, topMargin:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c007b

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v13

    float-to-int v8, v13

    .line 638
    .local v8, margin:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c0067

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    .line 639
    .local v4, deleteX:F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0c0068

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 641
    .local v5, deleteY:F
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 642
    .local v2, blackBgPnt:Landroid/graphics/Paint;
    const/high16 v13, -0x100

    invoke-virtual {v2, v13}, Landroid/graphics/Paint;->setColor(I)V

    .line 643
    new-instance v10, Landroid/graphics/Rect;

    const/4 v13, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    invoke-direct {v10, v13, v7, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 644
    .local v10, sourceRect:Landroid/graphics/Rect;
    new-instance v11, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    float-to-int v13, v13

    add-int/2addr v13, v8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    float-to-int v14, v14

    add-int/2addr v14, v12

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    float-to-int v15, v15

    sub-int v15, p3, v15

    sub-int/2addr v15, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    sub-int v16, p4, v16

    sub-int v16, v16, v8

    move/from16 v0, v16

    invoke-direct {v11, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 649
    .local v11, targetRect:Landroid/graphics/Rect;
    invoke-virtual {v3, v11, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 650
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v10, v11, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 653
    new-instance v13, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-direct {v13, v14, v15, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v13}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 655
    if-nez p5, :cond_0

    .line 656
    const/4 v13, 0x0

    invoke-virtual {v3, v6, v4, v5, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 676
    :cond_0
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 677
    return-object v9
.end method

.method private swipeSlide(Lcom/sec/android/samsunganimation/basetype/SAVector2;)V
    .locals 4
    .parameter "pos"

    .prologue
    const/4 v2, -0x1

    .line 394
    invoke-static {}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->getInstance()Lcom/sec/android/samsunganimation/slide/SASlideManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/samsunganimation/slide/SASlideManager;->isAnimating()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 409
    :goto_0
    return-void

    .line 397
    :cond_0
    iget v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSwippingSideIndex:I

    if-ne v1, v2, :cond_1

    .line 398
    invoke-direct {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getSlideIndexFromPos(Lcom/sec/android/samsunganimation/basetype/SAVector2;)I

    move-result v0

    .line 399
    .local v0, slideIdx:I
    if-eq v0, v2, :cond_1

    if-eqz v0, :cond_1

    .line 400
    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSwippingSideIndex:I

    .line 403
    .end local v0           #slideIdx:I
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->isPortraitMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 404
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    iget v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSwippingSideIndex:I

    iget v3, p1, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mX:F

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->startSwipeAni(IF)V

    goto :goto_0

    .line 406
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    iget v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSwippingSideIndex:I

    iget v3, p1, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mY:F

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->startSwipeAni(IF)V

    goto :goto_0
.end method


# virtual methods
.method protected buildSubSlide()V
    .locals 24

    .prologue
    .line 560
    invoke-super/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->buildSubSlide()V

    .line 561
    const/4 v3, 0x4

    new-array v9, v3, [F

    fill-array-data v9, :array_0

    .line 564
    .local v9, bgColor:[F
    const/4 v3, 0x4

    new-array v0, v3, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_1

    .line 567
    .local v16, itemColor:[F
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v17

    .line 568
    .local v17, mainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->setBackgroundColor([F)V

    .line 571
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f02009c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v15

    .line 572
    .local v15, is:Ljava/io/InputStream;
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v15, v3, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 573
    .local v10, bgBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, v17

    invoke-virtual {v0, v10}, Lcom/sec/android/samsunganimation/slide/SASlide;->setImage(Landroid/graphics/Bitmap;)V

    .line 575
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/samsunganimation/slide/SASlide;->getWidth()F

    move-result v23

    .line 576
    .local v23, width:F
    invoke-virtual/range {v17 .. v17}, Lcom/sec/android/samsunganimation/slide/SASlide;->getHeight()F

    move-result v14

    .line 577
    .local v14, height:F
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v22

    .line 578
    .local v22, totalCount:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    .line 580
    .local v11, display:Landroid/view/Display;
    invoke-virtual {v11}, Landroid/view/Display;->getWidth()I

    move-result v13

    .line 581
    .local v13, displayWidth:I
    invoke-virtual {v11}, Landroid/view/Display;->getHeight()I

    move-result v12

    .line 583
    .local v12, displayHeight:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0078

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v19, v0

    .line 584
    .local v19, reSizeWidth:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0079

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v0, v3

    move/from16 v18, v0

    .line 586
    .local v18, reSizeHeight:I
    const/16 v21, 0x0

    .line 587
    .local v21, slideWidth:I
    const/16 v20, 0x0

    .line 589
    .local v20, slideHeight:I
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->isPortraitMode()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 590
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int v21, v13, v3

    .line 591
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int v20, v18, v3

    .line 597
    :goto_0
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mVisibleSlideCount:I

    .line 599
    new-instance v2, Lcom/sec/android/samsunganimation/slide/SASlide;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v21

    int-to-float v7, v0

    move/from16 v0, v20

    int-to-float v8, v0

    invoke-direct/range {v2 .. v9}, Lcom/sec/android/samsunganimation/slide/SASlide;-><init>(IIFFFF[F)V

    .line 601
    .local v2, coverSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/samsunganimation/slide/SASlide;->setZPosition(F)V

    .line 602
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->addSlide(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 603
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->resetPivot(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 605
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->drawThumbnailAndIcon(I)V

    .line 607
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->isPortraitMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 608
    const/high16 v3, 0x3f00

    mul-float v3, v3, v23

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/samsunganimation/slide/SASlide;->setPosition(FF)V

    .line 613
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->startCoverAni()V

    .line 614
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    move/from16 v0, v22

    invoke-virtual {v3, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->initScrollValue(I)V

    .line 616
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->slideLoadTask:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;

    if-eqz v3, :cond_0

    .line 618
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->slideLoadTask:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->cancel(Z)Z

    .line 619
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->slideLoadTask:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;

    .line 622
    :cond_0
    new-instance v3, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->slideLoadTask:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;

    .line 623
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->slideLoadTask:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v3, v4}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 624
    return-void

    .line 593
    .end local v2           #coverSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    :cond_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int v21, v19, v3

    .line 594
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    float-to-int v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int v20, v18, v3

    goto/16 :goto_0

    .line 610
    .restart local v2       #coverSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    :cond_2
    const/4 v3, 0x0

    const/high16 v4, 0x3f00

    mul-float/2addr v4, v14

    invoke-virtual {v2, v3, v4}, Lcom/sec/android/samsunganimation/slide/SASlide;->setPosition(FF)V

    goto :goto_1

    .line 561
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 564
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public drawThumbnailAndIcon(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 912
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->drawThumbnailAndIcon(IZ)V

    .line 913
    return-void
.end method

.method public drawThumbnailAndIcon(IZ)V
    .locals 41
    .parameter "index"
    .parameter "bFocused"

    .prologue
    .line 916
    if-nez p1, :cond_1

    const/4 v10, 0x1

    .line 917
    .local v10, bCover:Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v37, 0x7f0c0078

    move/from16 v0, v37

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    move/from16 v30, v0

    .line 918
    .local v30, reSizeWidth:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v37, 0x7f0c0079

    move/from16 v0, v37

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    move/from16 v29, v0

    .line 920
    .local v29, reSizeHeight:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    float-to-int v5, v5

    mul-int/lit8 v5, v5, 0x2

    add-int v8, v30, v5

    .line 921
    .local v8, slideWidth:I
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    float-to-int v5, v5

    mul-int/lit8 v5, v5, 0x2

    add-int v9, v29, v5

    .line 922
    .local v9, slideHeight:I
    const/16 v31, 0x0

    .line 924
    .local v31, removeBtnMargin:I
    if-eqz v10, :cond_2

    .line 925
    const/16 v31, 0x0

    .line 930
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v37, 0x7f0c0084

    move/from16 v0, v37

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int v21, v31, v5

    .line 931
    .local v21, iconLf:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v37, 0x7f0c0085

    move/from16 v0, v37

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    move/from16 v23, v0

    .line 932
    .local v23, iconTp:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v37, 0x7f0c0086

    move/from16 v0, v37

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    move/from16 v24, v0

    .line 933
    .local v24, iconWidth:I
    add-int v22, v21, v24

    .line 934
    .local v22, iconRt:I
    add-int v20, v23, v24

    .line 936
    .local v20, iconBt:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v37, 0x7f0c0087

    move/from16 v0, v37

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int v35, v31, v5

    .line 937
    .local v35, textX:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v37, 0x7f0c0088

    move/from16 v0, v37

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    move/from16 v36, v0

    .line 938
    .local v36, textY:I
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v37, 0x7f0c0089

    move/from16 v0, v37

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    move/from16 v18, v0

    .line 940
    .local v18, fontSize:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v25

    .line 942
    .local v25, mainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    new-instance v34, Landroid/graphics/Paint;

    invoke-direct/range {v34 .. v34}, Landroid/graphics/Paint;-><init>()V

    .line 943
    .local v34, textPaint:Landroid/graphics/Paint;
    move/from16 v0, v18

    int-to-float v5, v0

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 944
    const/4 v5, 0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 945
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 946
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 947
    const/4 v5, -0x1

    move-object/from16 v0, v34

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 949
    const/4 v12, 0x0

    .line 951
    .local v12, borderBitmap:Landroid/graphics/Bitmap;
    if-eqz v10, :cond_3

    .line 952
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v37, 0x7f020005

    move/from16 v0, v37

    invoke-static {v5, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 965
    :goto_2
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v14

    .line 966
    .local v14, chunk:[B
    new-instance v7, Landroid/graphics/NinePatch;

    const/4 v5, 0x0

    invoke-direct {v7, v12, v14, v5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    .line 968
    .local v7, npBitmap:Landroid/graphics/NinePatch;
    move-object/from16 v0, v25

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v15

    .line 970
    .local v15, curSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    if-nez v15, :cond_5

    .line 1019
    :cond_0
    :goto_3
    return-void

    .line 916
    .end local v7           #npBitmap:Landroid/graphics/NinePatch;
    .end local v8           #slideWidth:I
    .end local v9           #slideHeight:I
    .end local v10           #bCover:Z
    .end local v12           #borderBitmap:Landroid/graphics/Bitmap;
    .end local v14           #chunk:[B
    .end local v15           #curSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v18           #fontSize:I
    .end local v20           #iconBt:I
    .end local v21           #iconLf:I
    .end local v22           #iconRt:I
    .end local v23           #iconTp:I
    .end local v24           #iconWidth:I
    .end local v25           #mainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .end local v29           #reSizeHeight:I
    .end local v30           #reSizeWidth:I
    .end local v31           #removeBtnMargin:I
    .end local v34           #textPaint:Landroid/graphics/Paint;
    .end local v35           #textX:I
    .end local v36           #textY:I
    :cond_1
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 927
    .restart local v8       #slideWidth:I
    .restart local v9       #slideHeight:I
    .restart local v10       #bCover:Z
    .restart local v29       #reSizeHeight:I
    .restart local v30       #reSizeWidth:I
    .restart local v31       #removeBtnMargin:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v37, 0x7f0c008a

    move/from16 v0, v37

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    move/from16 v31, v0

    goto/16 :goto_1

    .line 955
    .restart local v12       #borderBitmap:Landroid/graphics/Bitmap;
    .restart local v18       #fontSize:I
    .restart local v20       #iconBt:I
    .restart local v21       #iconLf:I
    .restart local v22       #iconRt:I
    .restart local v23       #iconTp:I
    .restart local v24       #iconWidth:I
    .restart local v25       #mainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    .restart local v34       #textPaint:Landroid/graphics/Paint;
    .restart local v35       #textX:I
    .restart local v36       #textY:I
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->isPortraitMode()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 956
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v37, 0x7f020007

    move/from16 v0, v37

    invoke-static {v5, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    goto :goto_2

    .line 960
    :cond_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v37, 0x7f020006

    move/from16 v0, v37

    invoke-static {v5, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v12

    goto :goto_2

    .line 974
    .restart local v7       #npBitmap:Landroid/graphics/NinePatch;
    .restart local v14       #chunk:[B
    .restart local v15       #curSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    :cond_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mRecentAppsList:Ljava/util/ArrayList;

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/systemui/recent/TaskDescription;

    .line 976
    .local v33, td:Lcom/android/systemui/recent/TaskDescription;
    if-eqz v33, :cond_0

    if-eqz v33, :cond_6

    invoke-virtual/range {v33 .. v33}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 979
    :cond_6
    invoke-virtual/range {v33 .. v33}, Lcom/android/systemui/recent/TaskDescription;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v32

    .line 980
    .local v32, screenShot:Landroid/graphics/Bitmap;
    move-object/from16 v6, v32

    .local v6, thumbBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v5, p0

    .line 982
    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->setBorderImage(Landroid/graphics/Bitmap;Landroid/graphics/NinePatch;IIZ)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 983
    .local v11, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual/range {v33 .. v33}, Lcom/android/systemui/recent/TaskDescription;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 984
    .local v19, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v33 .. v33}, Lcom/android/systemui/recent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v27

    check-cast v27, Ljava/lang/String;

    .line 986
    .local v27, name:Ljava/lang/String;
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 988
    .local v13, canvas:Landroid/graphics/Canvas;
    if-eqz v19, :cond_7

    .line 989
    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v23

    move/from16 v3, v22

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 990
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 993
    :cond_7
    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8

    .line 994
    move/from16 v0, v35

    int-to-float v5, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move/from16 v37, v0

    move-object/from16 v0, v27

    move/from16 v1, v37

    move-object/from16 v2, v34

    invoke-virtual {v13, v0, v5, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 997
    :cond_8
    if-eqz p2, :cond_9

    .line 998
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v37, 0x7f020092

    move/from16 v0, v37

    invoke-static {v5, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 1002
    .local v17, focusBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v37, 0x7f0c007b

    move/from16 v0, v37

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v0, v5

    move/from16 v26, v0

    .line 1004
    .local v26, margin:I
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v16

    .line 1005
    .local v16, fChunk:[B
    new-instance v28, Landroid/graphics/NinePatch;

    const/4 v5, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2, v5}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    .line 1006
    .local v28, npFocusBitmap:Landroid/graphics/NinePatch;
    new-instance v5, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    move/from16 v37, v0

    move/from16 v0, v37

    float-to-int v0, v0

    move/from16 v37, v0

    add-int v37, v37, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    move/from16 v38, v0

    move/from16 v0, v38

    float-to-int v0, v0

    move/from16 v38, v0

    add-int v38, v38, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    move/from16 v39, v0

    move/from16 v0, v39

    float-to-int v0, v0

    move/from16 v39, v0

    add-int v39, v39, v30

    add-int v39, v39, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFrameBorder:F

    move/from16 v40, v0

    move/from16 v0, v40

    float-to-int v0, v0

    move/from16 v40, v0

    add-int v40, v40, v29

    add-int v40, v40, v26

    move/from16 v0, v37

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v3, v40

    invoke-direct {v5, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object/from16 v0, v28

    invoke-virtual {v0, v13, v5}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 1010
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 1013
    .end local v16           #fChunk:[B
    .end local v17           #focusBitmap:Landroid/graphics/Bitmap;
    .end local v26           #margin:I
    .end local v28           #npFocusBitmap:Landroid/graphics/NinePatch;
    :cond_9
    if-eqz v11, :cond_a

    .line 1014
    invoke-virtual {v15, v11}, Lcom/sec/android/samsunganimation/slide/SASlide;->setImage(Landroid/graphics/Bitmap;)V

    .line 1017
    :cond_a
    if-eqz v12, :cond_0

    .line 1018
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_3
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getVisibleSlideCount()I
    .locals 1

    .prologue
    .line 872
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mVisibleSlideCount:I

    return v0
.end method

.method public onAnimationEnd(Ljava/lang/String;)V
    .locals 1
    .parameter "tag"

    .prologue
    .line 704
    const-string v0, "SELECT"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 708
    :cond_1
    const-string v0, "RESTORE_SWIFE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 710
    const-string v0, "RESTORE_FOLD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 711
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mActiveMode:Z

    goto :goto_0

    .line 712
    :cond_2
    const-string v0, "REMOVE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeletePressedIndex:I

    invoke-direct {p0, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->removeSlide(I)V

    .line 714
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeletePressedIndex:I

    goto :goto_0
.end method

.method public onAnimationRepeat(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 721
    return-void
.end method

.method public onAnimationStart(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 725
    return-void
.end method

.method public onConfigurationChanged(I)V
    .locals 2
    .parameter "rotation"

    .prologue
    .line 752
    invoke-super {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->onConfigurationChanged(I)V

    .line 754
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 755
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->rearrangeSlide(Z)V

    .line 759
    :goto_0
    return-void

    .line 757
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->rearrangeSlide(Z)V

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 230
    if-eqz p1, :cond_0

    .line 231
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    .line 232
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->drawThumbnailAndIcon(IZ)V

    .line 234
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 235
    return-void
.end method

.method protected onFocusLost()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 216
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    if-le v0, v2, :cond_0

    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getTotalCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 217
    iget v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->drawThumbnailAndIcon(IZ)V

    .line 220
    :cond_0
    iput v2, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    .line 222
    invoke-super {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->onFocusLost()V

    .line 223
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v6, 0x14

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v7, -0x1

    .line 122
    iget v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    .line 123
    .local v1, prevFocusedIndex:I
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getTotalCount()I

    move-result v2

    .line 125
    .local v2, totalCount:I
    const/16 v5, 0x42

    if-ne p1, v5, :cond_1

    .line 126
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mRecentAppsList:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/recent/TaskDescription;

    .line 127
    .local v0, currentTaskDescrption:Lcom/android/systemui/recent/TaskDescription;
    if-eqz v0, :cond_0

    .line 128
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mCallback:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsCallback;

    invoke-interface {v5, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsCallback;->handleOnClick(Lcom/android/systemui/recent/TaskDescription;)V

    .line 191
    .end local v0           #currentTaskDescrption:Lcom/android/systemui/recent/TaskDescription;
    :cond_0
    :goto_0
    return v4

    .line 133
    :cond_1
    const/16 v5, 0x70

    if-ne p1, v5, :cond_2

    .line 134
    iget v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    iput v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeletePressedIndex:I

    .line 135
    iget v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    invoke-direct {p0, v5}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->onDeleteButtonClick(I)V

    goto :goto_0

    .line 140
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->isPortraitMode()Z

    move-result v5

    if-nez v5, :cond_8

    .line 141
    const/16 v5, 0x15

    if-ne p1, v5, :cond_5

    .line 142
    iget v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    .line 143
    iget v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    add-int/lit8 v6, v2, -0x1

    if-le v5, v6, :cond_3

    .line 144
    add-int/lit8 v5, v2, -0x1

    iput v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    .line 179
    :cond_3
    :goto_1
    if-le v1, v7, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getTotalCount()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 180
    invoke-virtual {p0, v1, v8}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->drawThumbnailAndIcon(IZ)V

    .line 183
    :cond_4
    iget v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    if-le v5, v7, :cond_a

    iget v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getTotalCount()I

    move-result v6

    if-ge v5, v6, :cond_a

    .line 184
    iget v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    invoke-virtual {p0, v5, v4}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->drawThumbnailAndIcon(IZ)V

    .line 185
    iget v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    if-le v5, v7, :cond_a

    .line 186
    iget-object v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    iget v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    invoke-virtual {v5, v6}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->slideSetFocusAni(I)V

    goto :goto_0

    .line 147
    :cond_5
    const/16 v5, 0x16

    if-ne p1, v5, :cond_6

    .line 148
    iget v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    .line 150
    iget v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    if-gez v5, :cond_3

    .line 151
    iput v8, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    goto :goto_1

    .line 153
    :cond_6
    if-ne p1, v6, :cond_3

    .line 154
    iget v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    if-ge v5, v4, :cond_3

    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 156
    .local v3, vp:Landroid/view/ViewParent;
    :goto_2
    if-eqz v3, :cond_3

    .line 157
    instance-of v5, v3, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    if-eqz v5, :cond_7

    .line 158
    check-cast v3, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    .end local v3           #vp:Landroid/view/ViewParent;
    invoke-virtual {v3, p1, p2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_0

    .line 160
    .restart local v3       #vp:Landroid/view/ViewParent;
    :cond_7
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_2

    .line 165
    .end local v3           #vp:Landroid/view/ViewParent;
    :cond_8
    const/16 v5, 0x13

    if-ne p1, v5, :cond_9

    .line 166
    iget v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    .line 167
    iget v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    add-int/lit8 v6, v2, -0x1

    if-le v5, v6, :cond_3

    .line 168
    add-int/lit8 v5, v2, -0x1

    iput v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    goto :goto_1

    .line 171
    :cond_9
    if-ne p1, v6, :cond_3

    .line 172
    iget v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    add-int/lit8 v5, v5, -0x1

    iput v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    .line 174
    iget v5, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    if-ge v5, v7, :cond_3

    .line 175
    iput v7, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    goto :goto_1

    .line 191
    :cond_a
    invoke-super {p0, p1, p2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 196
    invoke-super {p0, p1, p2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 201
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 203
    .local v0, vp:Landroid/view/ViewParent;
    :goto_0
    if-eqz v0, :cond_1

    .line 204
    instance-of v1, v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    if-eqz v1, :cond_0

    .line 205
    check-cast v0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;

    .end local v0           #vp:Landroid/view/ViewParent;
    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsPanelView;->show(ZZ)V

    .line 206
    const/4 v1, 0x1

    .line 211
    :goto_1
    return v1

    .line 208
    .restart local v0       #vp:Landroid/view/ViewParent;
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 211
    .end local v0           #vp:Landroid/view/ViewParent;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 739
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->finishScroll(Z)V

    .line 740
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->removeAllSubSlide()V

    .line 742
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->slideLoadTask:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->slideLoadTask:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->cancel(Z)Z

    .line 744
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->slideLoadTask:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;

    .line 747
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->onPause()V

    .line 748
    return-void
.end method

.method public onResize(II)V
    .locals 0
    .parameter "width"
    .parameter "height"

    .prologue
    .line 255
    invoke-super {p0, p1, p2}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->onResize(II)V

    .line 256
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 260
    invoke-super {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 261
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 728
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mContext:Landroid/content/Context;

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 729
    .local v0, wm:Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->mRotation:I

    .line 731
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mActiveMode:Z

    .line 733
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->buildSubSlide()V

    .line 734
    invoke-super {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->onResume()V

    .line 735
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 265
    invoke-super {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "event"

    .prologue
    const/high16 v8, 0x4080

    const/4 v6, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 270
    new-instance v3, Lcom/sec/android/samsunganimation/basetype/SAVector2;

    invoke-direct {v3, v6, v6}, Lcom/sec/android/samsunganimation/basetype/SAVector2;-><init>(FF)V

    .line 271
    .local v3, pos:Lcom/sec/android/samsunganimation/basetype/SAVector2;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iput v6, v3, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mX:F

    .line 272
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    iput v6, v3, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mY:F

    .line 274
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_4

    .line 275
    invoke-direct {p0, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->checkRemoveButtonTouched(Lcom/sec/android/samsunganimation/basetype/SAVector2;)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeletePressedIndex:I

    .line 276
    iget v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeletePressedIndex:I

    if-eq v6, v11, :cond_1

    .line 277
    iput-boolean v9, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeletePressed:Z

    .line 384
    :cond_0
    :goto_0
    return v9

    .line 281
    :cond_1
    iget v6, v3, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mX:F

    iput v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mCurrentX:F

    iput v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mPreviousX:F

    .line 282
    iget v6, v3, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mY:F

    iput v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mCurrentY:F

    iput v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mPreviousY:F

    .line 284
    iget v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    if-le v6, v11, :cond_2

    iget v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getTotalCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    if-ge v6, v7, :cond_2

    .line 285
    iget v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mFocusedIndex:I

    invoke-virtual {p0, v6, v10}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->drawThumbnailAndIcon(IZ)V

    .line 288
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    iget v7, v3, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mX:F

    iget v8, v3, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mY:F

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->setTouchDownPos(FF)V

    .line 289
    const-string v6, "FlashBoard"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "x="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mX:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "   y="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v3, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mY:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->requestRender()V

    goto :goto_0

    .line 290
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_f

    .line 291
    iget-boolean v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mActiveMode:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeletePressed:Z

    if-nez v6, :cond_0

    .line 295
    iget v6, v3, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mY:F

    iput v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mCurrentY:F

    .line 296
    iget v6, v3, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mX:F

    iput v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mCurrentX:F

    .line 298
    iget v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mPreviousX:F

    iget v7, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mCurrentX:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 299
    .local v1, dx:F
    iget v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mPreviousY:F

    iget v7, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mCurrentY:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 301
    .local v2, dy:F
    cmpg-float v6, v1, v8

    if-gez v6, :cond_5

    .line 302
    const/4 v1, 0x0

    .line 304
    :cond_5
    cmpg-float v6, v2, v8

    if-gez v6, :cond_6

    .line 305
    const/4 v2, 0x0

    .line 307
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v6}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->getScrollMode()I

    move-result v4

    .line 308
    .local v4, scrollMode:I
    if-nez v4, :cond_8

    .line 309
    cmpg-float v6, v2, v1

    if-gez v6, :cond_b

    .line 310
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->isPortraitMode()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 311
    const/4 v4, 0x2

    .line 322
    :cond_7
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v6, v4}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->setScrollMode(I)V

    .line 325
    :cond_8
    const/4 v5, 0x0

    .line 326
    .local v5, velocity:F
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->isPortraitMode()Z

    move-result v6

    if-eqz v6, :cond_d

    .line 327
    iget v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mCurrentY:F

    iget v7, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mPreviousY:F

    sub-float v5, v6, v7

    .line 328
    iget v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mCurrentX:F

    iput v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mPreviousX:F

    .line 329
    iget v6, v3, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mY:F

    iput v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mPreviousY:F

    .line 336
    :goto_3
    if-eq v4, v9, :cond_9

    const/4 v6, 0x3

    if-ne v4, v6, :cond_e

    .line 337
    :cond_9
    const/high16 v6, 0x4000

    div-float v6, v5, v6

    invoke-direct {p0, v6}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->scrollSlides(F)V

    goto :goto_1

    .line 313
    .end local v5           #velocity:F
    :cond_a
    const/4 v4, 0x1

    goto :goto_2

    .line 315
    :cond_b
    cmpl-float v6, v2, v1

    if-lez v6, :cond_7

    .line 316
    invoke-direct {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->isPortraitMode()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 317
    const/4 v4, 0x1

    goto :goto_2

    .line 319
    :cond_c
    const/4 v4, 0x2

    goto :goto_2

    .line 331
    .restart local v5       #velocity:F
    :cond_d
    iget v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mCurrentX:F

    iget v7, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mPreviousX:F

    sub-float v5, v6, v7

    .line 332
    iget v6, v3, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mX:F

    iput v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mPreviousX:F

    .line 333
    iget v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mCurrentY:F

    iput v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mPreviousY:F

    goto :goto_3

    .line 338
    :cond_e
    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    .line 339
    invoke-direct {p0, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->swipeSlide(Lcom/sec/android/samsunganimation/basetype/SAVector2;)V

    goto/16 :goto_1

    .line 342
    .end local v1           #dx:F
    .end local v2           #dy:F
    .end local v4           #scrollMode:I
    .end local v5           #velocity:F
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v9, :cond_3

    .line 343
    invoke-direct {p0, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->checkRemoveButtonTouched(Lcom/sec/android/samsunganimation/basetype/SAVector2;)I

    move-result v0

    .line 344
    .local v0, deletePressedIndex:I
    iget-boolean v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeletePressed:Z

    if-eqz v6, :cond_10

    .line 345
    const-string v6, "FlashBoard"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Delete pressed : index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iput-boolean v10, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeletePressed:Z

    .line 347
    if-eq v0, v11, :cond_0

    iget v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeletePressedIndex:I

    if-ne v0, v6, :cond_0

    .line 348
    invoke-direct {p0, v0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->onDeleteButtonClick(I)V

    goto/16 :goto_0

    .line 354
    :cond_10
    iput-boolean v10, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mDeletePressed:Z

    .line 355
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v6, v10}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->finishScroll(Z)V

    .line 357
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v6}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->getScrollMode()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 381
    :goto_4
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    iget v7, v3, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mX:F

    iget v8, v3, Lcom/sec/android/samsunganimation/basetype/SAVector2;->mY:F

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->setTouchUpPos(FF)V

    goto/16 :goto_1

    .line 359
    :pswitch_0
    invoke-direct {p0, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->finishSwipe(Lcom/sec/android/samsunganimation/basetype/SAVector2;)V

    goto :goto_4

    .line 362
    :pswitch_1
    iget-boolean v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mActiveMode:Z

    if-ne v6, v9, :cond_11

    .line 363
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v6}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->restoreScrollMode()V

    .line 364
    iput v11, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mSelectedSlideIndex:I

    .line 365
    iput-boolean v10, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mActiveMode:Z

    goto/16 :goto_0

    .line 368
    :cond_11
    invoke-direct {p0, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->onSelectSlide(Lcom/sec/android/samsunganimation/basetype/SAVector2;)V

    goto :goto_4

    .line 373
    :pswitch_2
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v6, v10}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->setScrollMode(I)V

    goto :goto_4

    .line 376
    :pswitch_3
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v6}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->restoreBoundAni()V

    .line 377
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v6, v10}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->setScrollMode(I)V

    .line 378
    iget-object v6, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v6, v10}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->setScrollDirection(I)V

    goto :goto_4

    .line 357
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 246
    invoke-super {p0, p1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherBaseWindow;->onWindowFocusChanged(Z)V

    .line 247
    if-eqz p1, :cond_0

    .line 251
    :cond_0
    return-void
.end method

.method protected removeAllSubSlide()V
    .locals 5

    .prologue
    .line 681
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v1

    .line 682
    .local v1, mainSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    if-nez v1, :cond_1

    .line 691
    :cond_0
    return-void

    .line 684
    :cond_1
    invoke-virtual {v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlideCount()I

    move-result v3

    .line 685
    .local v3, subSlideCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 686
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v2

    .line 687
    .local v2, subSlide:Lcom/sec/android/samsunganimation/slide/SASlide;
    if-eqz v2, :cond_2

    .line 688
    invoke-virtual {v1, v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->removeSlide(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 685
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setActiveMode(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 867
    iput-boolean p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mActiveMode:Z

    .line 868
    return-void
.end method

.method public setCallback(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 889
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mCallback:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherRecentsCallback;

    .line 891
    return-void
.end method

.method public setItemList(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recent/TaskDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/systemui/recent/TaskDescription;>;"
    if-eqz p1, :cond_0

    .line 240
    iput-object p1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mRecentAppsList:Ljava/util/ArrayList;

    .line 242
    :cond_0
    return-void
.end method

.method public startAni()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 458
    new-instance v0, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;

    invoke-direct {v0}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;-><init>()V

    .line 459
    .local v0, aniset:Lcom/sec/android/samsunganimation/animation/SAAnimationSet;
    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->setAnimationSetInterpolator(I)V

    .line 460
    const/16 v5, 0x7d0

    invoke-virtual {v0, v5}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->setDuration(I)V

    .line 461
    invoke-virtual {v0, v6}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->setRepeatCount(I)V

    .line 462
    invoke-virtual {v0, v6}, Lcom/sec/android/samsunganimation/animation/SAAnimationSet;->setAutoReverse(Z)V

    .line 463
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->getMainSlide()Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v2

    .line 464
    .local v2, mainSilde:Lcom/sec/android/samsunganimation/slide/SASlide;
    invoke-virtual {v2}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlideCount()I

    move-result v4

    .line 465
    .local v4, slideCnt:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 466
    invoke-virtual {v2, v1}, Lcom/sec/android/samsunganimation/slide/SASlide;->getSubSlide(I)Lcom/sec/android/samsunganimation/slide/SASlide;

    move-result-object v3

    .line 467
    .local v3, slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    invoke-direct {p0, v3}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->resetPivot(Lcom/sec/android/samsunganimation/slide/SASlide;)V

    .line 469
    invoke-virtual {v3, v6}, Lcom/sec/android/samsunganimation/slide/SASlide;->setHidden(Z)V

    .line 470
    invoke-virtual {v3, v0}, Lcom/sec/android/samsunganimation/slide/SASlide;->startAnimation(Lcom/sec/android/samsunganimation/animation/SAAnimation;)V

    .line 465
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 472
    .end local v3           #slide:Lcom/sec/android/samsunganimation/slide/SASlide;
    :cond_0
    return-void
.end method

.method public terminateSlide()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 762
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mAnimator:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherSlideAnimator;->finishScroll(Z)V

    .line 763
    invoke-virtual {p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->removeAllSubSlide()V

    .line 764
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mVisibleSlideCount:I

    .line 766
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->slideLoadTask:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;

    if-eqz v0, :cond_0

    .line 767
    iget-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->slideLoadTask:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;->cancel(Z)Z

    .line 768
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->slideLoadTask:Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$LoadSubSlideAsyncTask;

    .line 771
    :cond_0
    return-void
.end method

.method public updateThumbnailAndIconInBackground()V
    .locals 4

    .prologue
    .line 895
    iget-object v1, p0, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    .line 896
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 897
    .local v0, thumbHandler:Landroid/os/Handler;
    new-instance v1, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow$1;-><init>(Lcom/android/systemui/recent/smartswitcher/SmartSwitcherWindow;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 909
    .end local v0           #thumbHandler:Landroid/os/Handler;
    :cond_0
    return-void
.end method
