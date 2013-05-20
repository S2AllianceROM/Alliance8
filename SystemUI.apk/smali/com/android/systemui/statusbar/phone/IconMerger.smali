.class public Lcom/android/systemui/statusbar/phone/IconMerger;
.super Landroid/widget/LinearLayout;
.source "IconMerger.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IconMerger"


# instance fields
.field private mAirplaneMode:Z

.field public mCarrierNameShown:Z

.field private mCarrierNameView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mIconSize:I

.field private mLeft:I

.field public mLongCarrierNameShown:Z

.field private mMoreView:Landroid/view/View;

.field private mOperatorLogoView:Landroid/view/View;

.field private mRight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mAirplaneMode:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mLongCarrierNameShown:Z

    .line 51
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mCarrierNameShown:Z

    .line 52
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mLeft:I

    .line 53
    iput v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mRight:I

    .line 60
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mContext:Landroid/content/Context;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconSize:I

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/IconMerger;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/IconMerger;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mOperatorLogoView:Landroid/view/View;

    return-object v0
.end method

.method private checkOverflow(I)V
    .locals 11
    .parameter "width"

    .prologue
    const/16 v10, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 115
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    if-nez v8, :cond_1

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildCount()I

    move-result v0

    .line 118
    .local v0, N:I
    const/4 v5, 0x0

    .line 119
    .local v5, visibleChildren:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 120
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/IconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v10, :cond_2

    add-int/lit8 v5, v5, 0x1

    .line 119
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 122
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-nez v8, :cond_5

    move v4, v6

    .line 124
    .local v4, overflowShown:Z
    :goto_2
    if-eqz v4, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->isNeedtoRemoveOneChildren()Z

    move-result v8

    if-eqz v8, :cond_4

    add-int/lit8 v5, v5, -0x1

    .line 125
    :cond_4
    if-nez p1, :cond_6

    if-ne v4, v6, :cond_6

    if-nez v5, :cond_6

    move v3, v6

    .line 128
    .local v3, moreRequired:Z
    :goto_3
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mCarrierNameShown:Z

    if-eqz v8, :cond_9

    iget v8, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mRight:I

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mCarrierNameView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getRight()I

    move-result v9

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconSize:I

    if-le v8, v9, :cond_8

    move v1, v6

    .line 133
    .local v1, availableWidth:Z
    :goto_4
    if-eq v3, v4, :cond_c

    .line 134
    new-instance v6, Lcom/android/systemui/statusbar/phone/IconMerger$1;

    invoke-direct {v6, p0, v3, v1}, Lcom/android/systemui/statusbar/phone/IconMerger$1;-><init>(Lcom/android/systemui/statusbar/phone/IconMerger;ZZ)V

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/IconMerger;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .end local v1           #availableWidth:Z
    .end local v3           #moreRequired:Z
    .end local v4           #overflowShown:Z
    :cond_5
    move v4, v7

    .line 122
    goto :goto_2

    .line 125
    .restart local v4       #overflowShown:Z
    :cond_6
    iget v8, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconSize:I

    mul-int/2addr v8, v5

    if-le v8, p1, :cond_7

    move v3, v6

    goto :goto_3

    :cond_7
    move v3, v7

    goto :goto_3

    .restart local v3       #moreRequired:Z
    :cond_8
    move v1, v7

    .line 128
    goto :goto_4

    :cond_9
    iget v8, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconSize:I

    if-gt p1, v8, :cond_a

    iget v8, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconSize:I

    if-ne p1, v8, :cond_b

    :cond_a
    move v1, v6

    goto :goto_4

    :cond_b
    move v1, v7

    goto :goto_4

    .line 158
    .restart local v1       #availableWidth:Z
    :cond_c
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mCarrierNameShown:Z

    if-eqz v6, :cond_d

    if-eqz v3, :cond_d

    if-nez v1, :cond_d

    .line 159
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 160
    :cond_d
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mLongCarrierNameShown:Z

    if-eqz v6, :cond_0

    .line 161
    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    invoke-virtual {v6, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method


# virtual methods
.method public isNeedtoRemoveOneChildren()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 88
    sget-boolean v1, Lcom/android/systemui/statusbar/BaseStatusBar;->showOperatorLogoIcon:Z

    if-nez v1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mOperatorLogoView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mOperatorLogoView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->getIsNetworkAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isSIMandOperatorMatched()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 108
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 109
    iput p2, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mLeft:I

    .line 110
    iput p4, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mRight:I

    .line 111
    sub-int v0, p4, p2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/IconMerger;->checkOverflow(I)V

    .line 112
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 100
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 102
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->getMeasuredWidth()I

    move-result v0

    .line 103
    .local v0, width:I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mIconSize:I

    rem-int v1, v0, v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/IconMerger;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/IconMerger;->setMeasuredDimension(II)V

    .line 104
    return-void
.end method

.method public setAttCarrierLabel(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mCarrierNameView:Landroid/view/View;

    .line 83
    return-void
.end method

.method public setOperatorLogoIndicator(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mOperatorLogoView:Landroid/view/View;

    .line 77
    return-void
.end method

.method public setOverflowIndicator(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/IconMerger;->mMoreView:Landroid/view/View;

    .line 72
    return-void
.end method
