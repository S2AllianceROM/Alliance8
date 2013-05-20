.class public Lcom/alliance/widget/SequenceView;
.super Landroid/widget/AdapterView;
.source "SequenceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alliance/widget/SequenceView$AdapterDataObserver;,
        Lcom/alliance/widget/SequenceView$Row;
    }
.end annotation


# static fields
.field private static final SCROLL_BAR_WIDTH:I = 0xa

.field private static final TOUCH_SCROLL_THRESHOLD:I = 0xa

.field private static final TOUCH_STATE_CLICK:I = 0x0

.field private static final TOUCH_STATE_REST:I = 0x2

.field private static final TOUCH_STATE_SCROLL:I = 0x1


# instance fields
.field private mAdapter:Landroid/widget/Adapter;

.field private mCachedViews:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstItemPosition:I

.field private mLineHeader:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/alliance/widget/SequenceView$Row;",
            ">;"
        }
    .end annotation
.end field

.field private mListTop:I

.field private mListTopStart:I

.field private mMaxHeight:I

.field private mObserver:Lcom/alliance/widget/SequenceView$AdapterDataObserver;

.field private mScrollBitmap:Landroid/graphics/Bitmap;

.field private mTouchStartX:I

.field private mTouchStartY:I

.field private mTouchState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/alliance/widget/SequenceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/alliance/widget/SequenceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AdapterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/alliance/widget/SequenceView;->mLineHeader:Ljava/util/LinkedList;

    .line 26
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/alliance/widget/SequenceView;->mCachedViews:Ljava/util/LinkedList;

    .line 47
    new-instance v1, Lcom/alliance/widget/SequenceView$AdapterDataObserver;

    invoke-direct {v1, p0}, Lcom/alliance/widget/SequenceView$AdapterDataObserver;-><init>(Lcom/alliance/widget/SequenceView;)V

    iput-object v1, p0, Lcom/alliance/widget/SequenceView;->mObserver:Lcom/alliance/widget/SequenceView$AdapterDataObserver;

    .line 49
    const/4 v1, -0x1

    iput v1, p0, Lcom/alliance/widget/SequenceView;->mFirstItemPosition:I

    .line 76
    sget-object v1, Lalliance/R$styleable;->SequenceView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    .local v0, a:Landroid/content/res/TypedArray;
    iget v1, p0, Lcom/alliance/widget/SequenceView;->mMaxHeight:I

    int-to-float v1, v1

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/alliance/widget/SequenceView;->mMaxHeight:I

    .line 78
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5020073

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/alliance/widget/SequenceView;->mScrollBitmap:Landroid/graphics/Bitmap;

    .line 82
    invoke-virtual {p0, v3}, Lcom/alliance/widget/SequenceView;->setWillNotDraw(Z)V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/alliance/widget/SequenceView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/alliance/widget/SequenceView;->layoutChildInner(I)V

    return-void
.end method

.method private addAndMeasureChild(Landroid/view/View;I)V
    .locals 4
    .parameter "v"
    .parameter "index"

    .prologue
    const/4 v3, -0x2

    .line 166
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 168
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_0

    .line 169
    const/4 v2, -0x2

    .line 170
    .local v2, wrap_content:I
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .end local v0           #params:Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 173
    .end local v2           #wrap_content:I
    .restart local v0       #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, p1, p2, v0, v3}, Lcom/alliance/widget/SequenceView;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 175
    const/4 v1, 0x0

    .line 176
    .local v1, spec:I
    invoke-virtual {p1, v1, v1}, Landroid/view/View;->measure(II)V

    .line 177
    return-void
.end method

.method private cacheView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/alliance/widget/SequenceView;->mCachedViews:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 155
    return-void
.end method

.method private clickChildAt(II)V
    .locals 6
    .parameter "x"
    .parameter "y"

    .prologue
    .line 402
    invoke-direct {p0, p1, p2}, Lcom/alliance/widget/SequenceView;->getContainingChildIndex(II)I

    move-result v2

    .line 404
    .local v2, index:I
    if-ltz v2, :cond_0

    .line 405
    invoke-virtual {p0, v2}, Lcom/alliance/widget/SequenceView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 406
    .local v4, v:Landroid/view/View;
    iget v5, p0, Lcom/alliance/widget/SequenceView;->mFirstItemPosition:I

    add-int v3, v5, v2

    .line 407
    .local v3, pos:I
    invoke-virtual {p0}, Lcom/alliance/widget/SequenceView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v5

    invoke-interface {v5, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v0

    .line 408
    .local v0, id:J
    invoke-virtual {p0, v4, v3, v0, v1}, Lcom/alliance/widget/SequenceView;->performItemClick(Landroid/view/View;IJ)Z

    .line 410
    .end local v0           #id:J
    .end local v3           #pos:I
    .end local v4           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private endTouch()V
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x2

    iput v0, p0, Lcom/alliance/widget/SequenceView;->mTouchState:I

    .line 231
    return-void
.end method

.method private fillLayout(I)V
    .locals 13
    .parameter "offset"

    .prologue
    const/4 v12, -0x1

    .line 297
    iput v12, p0, Lcom/alliance/widget/SequenceView;->mFirstItemPosition:I

    .line 299
    iget-object v10, p0, Lcom/alliance/widget/SequenceView;->mLineHeader:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alliance/widget/SequenceView$Row;

    .line 300
    .local v5, r:Lcom/alliance/widget/SequenceView$Row;
    iget v10, v5, Lcom/alliance/widget/SequenceView$Row;->topOffset:I

    add-int/2addr v10, p1

    iget v11, v5, Lcom/alliance/widget/SequenceView$Row;->height:I

    add-int/2addr v10, v11

    if-lez v10, :cond_0

    iget v10, v5, Lcom/alliance/widget/SequenceView$Row;->topOffset:I

    add-int/2addr v10, p1

    invoke-virtual {p0}, Lcom/alliance/widget/SequenceView;->getHeight()I

    move-result v11

    if-ge v10, v11, :cond_0

    .line 301
    iget v6, v5, Lcom/alliance/widget/SequenceView$Row;->index:I

    .line 302
    .local v6, start:I
    iget v10, v5, Lcom/alliance/widget/SequenceView$Row;->count:I

    add-int/2addr v10, v6

    add-int/lit8 v0, v10, -0x1

    .line 303
    .local v0, end:I
    const/4 v4, 0x0

    .line 304
    .local v4, lineLeft:I
    iget v10, v5, Lcom/alliance/widget/SequenceView$Row;->topOffset:I

    add-int v7, v10, p1

    .line 306
    .local v7, top:I
    iget v10, p0, Lcom/alliance/widget/SequenceView;->mFirstItemPosition:I

    if-ne v10, v12, :cond_1

    .line 307
    iput v6, p0, Lcom/alliance/widget/SequenceView;->mFirstItemPosition:I

    .line 310
    :cond_1
    move v2, v6

    .local v2, i:I
    :goto_0
    if-gt v2, v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/alliance/widget/SequenceView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v10

    invoke-direct {p0}, Lcom/alliance/widget/SequenceView;->getCachedView()Landroid/view/View;

    move-result-object v11

    invoke-interface {v10, v2, v11, p0}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 312
    .local v8, v:Landroid/view/View;
    invoke-direct {p0, v8, v12}, Lcom/alliance/widget/SequenceView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 314
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 315
    .local v9, w:I
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 317
    .local v1, h:I
    add-int v10, v4, v9

    add-int v11, v7, v1

    invoke-virtual {v8, v4, v7, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 318
    add-int/2addr v4, v9

    .line 310
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 322
    .end local v0           #end:I
    .end local v1           #h:I
    .end local v2           #i:I
    .end local v4           #lineLeft:I
    .end local v5           #r:Lcom/alliance/widget/SequenceView$Row;
    .end local v6           #start:I
    .end local v7           #top:I
    .end local v8           #v:Landroid/view/View;
    .end local v9           #w:I
    :cond_2
    return-void
.end method

.method private getCachedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alliance/widget/SequenceView;->mCachedViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/alliance/widget/SequenceView;->mCachedViews:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 162
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getContainingChildIndex(II)I
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 413
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 415
    .local v2, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/alliance/widget/SequenceView;->getChildCount()I

    move-result v0

    .line 417
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 418
    invoke-virtual {p0, v1}, Lcom/alliance/widget/SequenceView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 420
    invoke-virtual {v2, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 425
    .end local v1           #index:I
    :goto_1
    return v1

    .line 417
    .restart local v1       #index:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 425
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private layoutChildInner(I)V
    .locals 20
    .parameter "width"

    .prologue
    .line 105
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alliance/widget/SequenceView;->mLineHeader:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->clear()V

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/alliance/widget/SequenceView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v14

    .line 108
    .local v14, adapter:Landroid/widget/Adapter;
    if-nez v14, :cond_0

    .line 151
    :goto_0
    return-void

    .line 112
    :cond_0
    const/16 v17, 0x0

    .line 113
    .local v17, lineLeft:I
    const/4 v5, 0x0

    .line 114
    .local v5, maxLineHeight:I
    const/4 v6, 0x0

    .line 115
    .local v6, topOffset:I
    const/4 v4, 0x0

    .line 116
    .local v4, lineStart:I
    const/4 v7, 0x0

    .line 118
    .local v7, count:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    invoke-interface {v14}, Landroid/widget/Adapter;->getCount()I

    move-result v3

    move/from16 v0, v16

    if-ge v0, v3, :cond_3

    .line 119
    invoke-direct/range {p0 .. p0}, Lcom/alliance/widget/SequenceView;->getCachedView()Landroid/view/View;

    move-result-object v3

    move/from16 v0, v16

    move-object/from16 v1, p0

    invoke-interface {v14, v0, v3, v1}, Landroid/widget/Adapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v18

    .line 121
    .local v18, v:Landroid/view/View;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v3}, Lcom/alliance/widget/SequenceView;->addAndMeasureChild(Landroid/view/View;I)V

    .line 123
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    .line 124
    .local v19, w:I
    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 126
    .local v15, h:I
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/alliance/widget/SequenceView;->removeViewInLayout(Landroid/view/View;)V

    .line 128
    add-int v3, v17, v19

    move/from16 v0, p1

    if-le v3, v0, :cond_1

    .line 129
    new-instance v2, Lcom/alliance/widget/SequenceView$Row;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/alliance/widget/SequenceView$Row;-><init>(Lcom/alliance/widget/SequenceView;IIII)V

    .line 130
    .local v2, r:Lcom/alliance/widget/SequenceView$Row;
    add-int/2addr v6, v5

    .line 131
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alliance/widget/SequenceView;->mLineHeader:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 133
    const/4 v7, 0x0

    .line 134
    const/16 v17, 0x0

    .line 135
    const/4 v5, 0x0

    .line 136
    move/from16 v4, v16

    .line 139
    .end local v2           #r:Lcom/alliance/widget/SequenceView$Row;
    :cond_1
    add-int v17, v17, v19

    .line 140
    if-le v5, v15, :cond_2

    .line 141
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 142
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/alliance/widget/SequenceView;->cacheView(Landroid/view/View;)V

    .line 118
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_2
    move v5, v15

    .line 140
    goto :goto_2

    .line 145
    .end local v15           #h:I
    .end local v18           #v:Landroid/view/View;
    .end local v19           #w:I
    :cond_3
    if-lez v7, :cond_4

    .line 146
    new-instance v8, Lcom/alliance/widget/SequenceView$Row;

    move-object/from16 v9, p0

    move v10, v4

    move v11, v5

    move v12, v6

    move v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/alliance/widget/SequenceView$Row;-><init>(Lcom/alliance/widget/SequenceView;IIII)V

    .line 147
    .local v8, lastRow:Lcom/alliance/widget/SequenceView$Row;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alliance/widget/SequenceView;->mLineHeader:Ljava/util/LinkedList;

    invoke-virtual {v3, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 150
    .end local v8           #lastRow:Lcom/alliance/widget/SequenceView$Row;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/alliance/widget/SequenceView;->requestLayout()V

    goto :goto_0
.end method

.method private scrollList(I)V
    .locals 4
    .parameter "distance"

    .prologue
    .line 180
    iget-object v1, p0, Lcom/alliance/widget/SequenceView;->mLineHeader:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    iget-object v1, p0, Lcom/alliance/widget/SequenceView;->mLineHeader:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/alliance/widget/SequenceView;->mLineHeader:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alliance/widget/SequenceView$Row;

    .line 186
    .local v0, r:Lcom/alliance/widget/SequenceView$Row;
    if-gez p1, :cond_2

    iget v1, v0, Lcom/alliance/widget/SequenceView$Row;->topOffset:I

    iget v2, v0, Lcom/alliance/widget/SequenceView$Row;->height:I

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/alliance/widget/SequenceView;->getHeight()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 190
    :cond_2
    iget v1, p0, Lcom/alliance/widget/SequenceView;->mListTopStart:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/alliance/widget/SequenceView;->mListTop:I

    .line 192
    iget v1, p0, Lcom/alliance/widget/SequenceView;->mListTop:I

    if-lez v1, :cond_4

    .line 193
    const/4 v1, 0x0

    iput v1, p0, Lcom/alliance/widget/SequenceView;->mListTop:I

    .line 199
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/alliance/widget/SequenceView;->requestLayout()V

    goto :goto_0

    .line 195
    :cond_4
    invoke-virtual {p0}, Lcom/alliance/widget/SequenceView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/alliance/widget/SequenceView;->mListTop:I

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/alliance/widget/SequenceView$Row;->topOffset:I

    iget v3, v0, Lcom/alliance/widget/SequenceView$Row;->height:I

    add-int/2addr v2, v3

    if-le v1, v2, :cond_3

    .line 196
    invoke-virtual {p0}, Lcom/alliance/widget/SequenceView;->getHeight()I

    move-result v1

    iget v2, v0, Lcom/alliance/widget/SequenceView$Row;->topOffset:I

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/alliance/widget/SequenceView$Row;->height:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/alliance/widget/SequenceView;->mListTop:I

    goto :goto_1
.end method

.method private startScrollIfNeeded(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/16 v4, 0xa

    const/4 v2, 0x1

    .line 234
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    .line 235
    .local v0, xPos:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v1, v3

    .line 237
    .local v1, yPos:I
    iget v3, p0, Lcom/alliance/widget/SequenceView;->mTouchStartX:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v4, :cond_0

    iget v3, p0, Lcom/alliance/widget/SequenceView;->mTouchStartY:I

    sub-int v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v4, :cond_1

    .line 239
    :cond_0
    iput v2, p0, Lcom/alliance/widget/SequenceView;->mTouchState:I

    .line 243
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private startTouch(Landroid/view/MotionEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 218
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/alliance/widget/SequenceView;->mTouchStartX:I

    .line 219
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/alliance/widget/SequenceView;->mTouchStartY:I

    .line 221
    invoke-virtual {p0}, Lcom/alliance/widget/SequenceView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 227
    :goto_0
    return-void

    .line 225
    :cond_0
    iget v0, p0, Lcom/alliance/widget/SequenceView;->mListTop:I

    iput v0, p0, Lcom/alliance/widget/SequenceView;->mListTopStart:I

    .line 226
    const/4 v0, 0x0

    iput v0, p0, Lcom/alliance/widget/SequenceView;->mTouchState:I

    goto :goto_0
.end method


# virtual methods
.method public getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alliance/widget/SequenceView;->mAdapter:Landroid/widget/Adapter;

    return-object v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 387
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 351
    const-string v7, "########XXXXXXXX"

    const-string v8, "onDraw"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-super {p0, p1}, Landroid/widget/AdapterView;->onDraw(Landroid/graphics/Canvas;)V

    .line 353
    invoke-virtual {p0}, Lcom/alliance/widget/SequenceView;->getHeight()I

    move-result v7

    iget v8, p0, Lcom/alliance/widget/SequenceView;->mMaxHeight:I

    if-ge v7, v8, :cond_0

    .line 369
    :goto_0
    return-void

    .line 357
    :cond_0
    iget-object v7, p0, Lcom/alliance/widget/SequenceView;->mLineHeader:Ljava/util/LinkedList;

    iget-object v8, p0, Lcom/alliance/widget/SequenceView;->mLineHeader:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alliance/widget/SequenceView$Row;

    .line 358
    .local v2, r:Lcom/alliance/widget/SequenceView$Row;
    iget v7, v2, Lcom/alliance/widget/SequenceView$Row;->topOffset:I

    iget v8, v2, Lcom/alliance/widget/SequenceView$Row;->height:I

    add-int v0, v7, v8

    .line 359
    .local v0, height:I
    invoke-virtual {p0}, Lcom/alliance/widget/SequenceView;->getHeight()I

    move-result v5

    .line 360
    .local v5, vHeight:I
    invoke-virtual {p0}, Lcom/alliance/widget/SequenceView;->getWidth()I

    move-result v6

    .line 361
    .local v6, vWidth:I
    mul-int v7, v5, v5

    div-int v3, v7, v0

    .line 362
    .local v3, scrollHeight:I
    iget v7, p0, Lcom/alliance/widget/SequenceView;->mListTop:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    int-to-float v8, v5

    div-float/2addr v7, v8

    int-to-float v8, v3

    mul-float/2addr v7, v8

    float-to-int v4, v7

    .line 364
    .local v4, top:I
    const-string v7, "#######Drawable ScrollBar"

    const-string v8, "left: %d, top: %d, right: %d, bottom: %d"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    add-int/lit8 v11, v6, -0xa

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x3

    add-int v11, v4, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    new-instance v1, Landroid/graphics/NinePatch;

    iget-object v7, p0, Lcom/alliance/widget/SequenceView;->mScrollBitmap:Landroid/graphics/Bitmap;

    iget-object v8, p0, Lcom/alliance/widget/SequenceView;->mScrollBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-direct {v1, v7, v8, v9}, Landroid/graphics/NinePatch;-><init>(Landroid/graphics/Bitmap;[BLjava/lang/String;)V

    .line 368
    .local v1, ninePatch:Landroid/graphics/NinePatch;
    new-instance v7, Landroid/graphics/Rect;

    add-int/lit8 v8, v6, -0xa

    add-int v9, v4, v3

    invoke-direct {v7, v8, v4, v6, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, p1, v7}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 203
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 212
    :pswitch_0
    invoke-direct {p0}, Lcom/alliance/widget/SequenceView;->endTouch()V

    .line 213
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 205
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/alliance/widget/SequenceView;->startTouch(Landroid/view/MotionEvent;)V

    .line 206
    const/4 v0, 0x1

    goto :goto_0

    .line 209
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/alliance/widget/SequenceView;->startScrollIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 203
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 284
    invoke-super/range {p0 .. p5}, Landroid/widget/AdapterView;->onLayout(ZIIII)V

    .line 286
    invoke-virtual {p0}, Lcom/alliance/widget/SequenceView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/alliance/widget/SequenceView;->removeAllViewsInLayout()V

    .line 291
    iget v0, p0, Lcom/alliance/widget/SequenceView;->mListTop:I

    invoke-direct {p0, v0}, Lcom/alliance/widget/SequenceView;->fillLayout(I)V

    .line 293
    invoke-virtual {p0}, Lcom/alliance/widget/SequenceView;->invalidate()V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 325
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    add-int/lit8 v3, v4, -0xa

    .line 326
    .local v3, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 328
    .local v1, height:I
    iget-object v4, p0, Lcom/alliance/widget/SequenceView;->mLineHeader:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 329
    invoke-direct {p0, v3}, Lcom/alliance/widget/SequenceView;->layoutChildInner(I)V

    .line 332
    :cond_0
    const/4 v0, 0x0

    .line 334
    .local v0, childHeight:I
    iget-object v4, p0, Lcom/alliance/widget/SequenceView;->mLineHeader:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->peekLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alliance/widget/SequenceView$Row;

    .line 335
    .local v2, r:Lcom/alliance/widget/SequenceView$Row;
    if-eqz v2, :cond_1

    .line 336
    iget v4, v2, Lcom/alliance/widget/SequenceView$Row;->topOffset:I

    iget v5, v2, Lcom/alliance/widget/SequenceView$Row;->height:I

    add-int v0, v4, v5

    .line 339
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    const/high16 v5, -0x8000

    if-ne v4, v5, :cond_3

    .line 340
    if-ge v0, v1, :cond_2

    .line 341
    move v1, v0

    .line 344
    :cond_2
    iget v4, p0, Lcom/alliance/widget/SequenceView;->mMaxHeight:I

    if-le v1, v4, :cond_3

    iget v1, p0, Lcom/alliance/widget/SequenceView;->mMaxHeight:I

    .line 347
    :cond_3
    invoke-virtual {p0, v3, v1}, Lcom/alliance/widget/SequenceView;->setMeasuredDimension(II)V

    .line 348
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 247
    invoke-virtual {p0}, Lcom/alliance/widget/SequenceView;->getChildCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 248
    const/4 v0, 0x0

    .line 280
    :cond_0
    :goto_0
    return v0

    .line 251
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 276
    invoke-direct {p0}, Lcom/alliance/widget/SequenceView;->endTouch()V

    goto :goto_0

    .line 253
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/alliance/widget/SequenceView;->startTouch(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 257
    :pswitch_1
    iget v1, p0, Lcom/alliance/widget/SequenceView;->mTouchState:I

    if-nez v1, :cond_2

    .line 258
    invoke-direct {p0, p1}, Lcom/alliance/widget/SequenceView;->startScrollIfNeeded(Landroid/view/MotionEvent;)Z

    .line 261
    :cond_2
    iget v1, p0, Lcom/alliance/widget/SequenceView;->mTouchState:I

    if-ne v1, v0, :cond_0

    .line 262
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/alliance/widget/SequenceView;->mTouchStartY:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/alliance/widget/SequenceView;->scrollList(I)V

    goto :goto_0

    .line 268
    :pswitch_2
    iget v1, p0, Lcom/alliance/widget/SequenceView;->mTouchState:I

    if-nez v1, :cond_3

    .line 269
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {p0, v1, v2}, Lcom/alliance/widget/SequenceView;->clickChildAt(II)V

    .line 272
    :cond_3
    invoke-direct {p0}, Lcom/alliance/widget/SequenceView;->endTouch()V

    goto :goto_0

    .line 251
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public scrollToEnd()V
    .locals 3

    .prologue
    .line 391
    invoke-virtual {p0}, Lcom/alliance/widget/SequenceView;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/alliance/widget/SequenceView;->mMaxHeight:I

    if-ge v1, v2, :cond_0

    .line 399
    :goto_0
    return-void

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/alliance/widget/SequenceView;->mLineHeader:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/alliance/widget/SequenceView;->mLineHeader:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alliance/widget/SequenceView$Row;

    .line 396
    .local v0, r:Lcom/alliance/widget/SequenceView$Row;
    invoke-virtual {p0}, Lcom/alliance/widget/SequenceView;->getHeight()I

    move-result v1

    iget v2, v0, Lcom/alliance/widget/SequenceView$Row;->topOffset:I

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/alliance/widget/SequenceView$Row;->height:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/alliance/widget/SequenceView;->mListTop:I

    .line 398
    invoke-virtual {p0}, Lcom/alliance/widget/SequenceView;->requestLayout()V

    goto :goto_0
.end method

.method public setAdapter(Landroid/widget/Adapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alliance/widget/SequenceView;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/alliance/widget/SequenceView;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/alliance/widget/SequenceView;->mObserver:Lcom/alliance/widget/SequenceView$AdapterDataObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 90
    :cond_0
    iput-object p1, p0, Lcom/alliance/widget/SequenceView;->mAdapter:Landroid/widget/Adapter;

    .line 91
    iget-object v0, p0, Lcom/alliance/widget/SequenceView;->mAdapter:Landroid/widget/Adapter;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/alliance/widget/SequenceView;->mAdapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/alliance/widget/SequenceView;->mObserver:Lcom/alliance/widget/SequenceView$AdapterDataObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 95
    :cond_1
    invoke-virtual {p0}, Lcom/alliance/widget/SequenceView;->removeAllViewsInLayout()V

    .line 96
    invoke-virtual {p0}, Lcom/alliance/widget/SequenceView;->requestLayout()V

    .line 97
    return-void
.end method

.method public setSelection(I)V
    .locals 0
    .parameter "i"

    .prologue
    .line 384
    return-void
.end method
