.class Lmiuix/preference/PreferenceFragment$FrameDecoration;
.super Lmiuix/recyclerview/card/base/BaseDecoration;
.source "PreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FrameDecoration"
.end annotation


# instance fields
.field private isAnimatorRunning:Z

.field private mCardGroupBackground:Landroid/graphics/drawable/Drawable;

.field private mCardGroupMarginBottom:I

.field private final mCardGroups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckableFilterColorChecked:I

.field private mCheckableFilterColorNormal:I

.field private mGroupBgPaint:Landroid/graphics/Paint;

.field private mGroupUnCheckedBgColor:I

.field private mHeightPixels:I

.field private mIsLayoutRtl:Z

.field private mMaskPaddingBottom:I

.field private mMaskPaddingEnd:I

.field private mMaskPaddingStart:I

.field private mMaskPaddingTop:I

.field private mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

.field final synthetic this$0:Lmiuix/preference/PreferenceFragment;


# direct methods
.method private constructor <init>(Lmiuix/preference/PreferenceFragment;Landroid/content/Context;)V
    .locals 3

    .line 927
    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-direct {p0}, Lmiuix/recyclerview/card/base/BaseDecoration;-><init>()V

    const/4 p1, 0x0

    .line 910
    iput-boolean p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mIsLayoutRtl:Z

    .line 919
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mCardGroups:Ljava/util/ArrayList;

    .line 928
    iget-object p1, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 929
    invoke-virtual {p0}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->updateClipPaintColor()V

    .line 930
    invoke-virtual {p0, p2}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->initMaskPadding(Landroid/content/Context;)V

    .line 931
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mGroupBgPaint:Landroid/graphics/Paint;

    .line 932
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 933
    sget p1, Lmiuix/preference/R$attr;->checkablePreferenceItemColorFilterNormal:I

    invoke-static {p2, p1}, Lmiuix/internal/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mGroupUnCheckedBgColor:I

    .line 934
    iget-object p2, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mGroupBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 935
    iget-object p0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mGroupBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/preference/PreferenceFragment;Landroid/content/Context;Lmiuix/preference/PreferenceFragment$1;)V
    .locals 0

    .line 903
    invoke-direct {p0, p1, p2}, Lmiuix/preference/PreferenceFragment$FrameDecoration;-><init>(Lmiuix/preference/PreferenceFragment;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$600(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I
    .locals 0

    .line 903
    iget p0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingTop:I

    return p0
.end method

.method static synthetic access$700(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I
    .locals 0

    .line 903
    iget p0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingBottom:I

    return p0
.end method

.method static synthetic access$800(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I
    .locals 0

    .line 903
    iget p0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingStart:I

    return p0
.end method

.method static synthetic access$900(Lmiuix/preference/PreferenceFragment$FrameDecoration;)I
    .locals 0

    .line 903
    iget p0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingEnd:I

    return p0
.end method

.method private calculateGroupBottom(Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Landroid/view/View;II)V
    .locals 7

    .line 1169
    invoke-virtual {p2}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    .line 1171
    invoke-direct/range {v1 .. v6}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->findNearViewY(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IIZ)I

    move-result v0

    int-to-float v0, v0

    .line 1172
    iget-object v1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v1}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lmiuix/preference/PreferenceGroupAdapter;->getAnimatorPreferenceGroups()Ljava/util/List;

    move-result-object v1

    .line 1174
    invoke-virtual {p2}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object p2

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/high16 p2, -0x40800000    # -1.0f

    cmpl-float p2, v0, p2

    if-eqz p2, :cond_1

    .line 1175
    invoke-direct {p0, p1, p4, p5}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->getNextPreference(Landroidx/recyclerview/widget/RecyclerView;II)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1178
    :cond_0
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget-object p1, p1, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    iget p0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mCardGroupMarginBottom:I

    int-to-float p0, p0

    sub-float/2addr v0, p0

    iput v0, p1, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    .line 1176
    :cond_1
    :goto_0
    iget-object p0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget-object p0, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    .line 1181
    :cond_2
    iget-object p0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget-object p0, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    :cond_3
    :goto_1
    return-void
.end method

.method private calculateGroupRect(Landroidx/preference/Preference;IILandroidx/recyclerview/widget/RecyclerView;IILandroid/view/View;)Z
    .locals 15

    move-object v6, p0

    .line 1284
    invoke-virtual/range {p1 .. p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Landroidx/preference/PreferenceScreen;

    const/4 v7, 0x1

    if-eqz v0, :cond_0

    move v8, v7

    goto :goto_0

    :cond_0
    move/from16 v8, p2

    :goto_0
    const/4 v9, 0x0

    const/4 v10, 0x4

    if-eq v8, v7, :cond_7

    const/4 v11, 0x2

    move/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    if-ne v8, v11, :cond_1

    .line 1290
    invoke-direct {p0, v13, v12, v14}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->checkNextIsAtomicPreference(Landroidx/recyclerview/widget/RecyclerView;II)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_1

    :cond_1
    if-ne v8, v11, :cond_2

    .line 1307
    iget-object v0, v6, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    or-int/2addr v1, v7

    iput v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    move-object/from16 v3, p7

    move/from16 v4, p6

    move/from16 v5, p3

    .line 1309
    invoke-direct/range {v0 .. v5}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->calculateGroupTop(Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Landroid/view/View;II)V

    :cond_2
    if-eq v8, v10, :cond_3

    const/4 v0, 0x3

    if-ne v8, v0, :cond_4

    .line 1313
    :cond_3
    iget-object v0, v6, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    or-int/2addr v1, v11

    iput v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    .line 1314
    iget-object v0, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 1315
    iget-object v0, v6, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget-object v0, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 1319
    :cond_4
    iget-object v0, v6, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    if-eqz v0, :cond_6

    if-ne v8, v10, :cond_6

    .line 1320
    iget v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    or-int/2addr v1, v10

    iput v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    move-object/from16 v3, p7

    move/from16 v4, p3

    move/from16 v5, p5

    .line 1322
    invoke-direct/range {v0 .. v5}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->calculateGroupBottom(Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Landroid/view/View;II)V

    .line 1324
    iget-object v0, v6, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget-object v0, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_5

    .line 1325
    invoke-virtual/range {p7 .. p7}, Landroid/view/View;->getY()F

    move-result v1

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 1327
    :cond_5
    iput-object v9, v6, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    return v7

    :cond_6
    const/4 v0, 0x0

    return v0

    :cond_7
    move/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    .line 1291
    :goto_1
    iget-object v0, v6, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    or-int/2addr v1, v7

    iput v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    move-object/from16 v3, p7

    move/from16 v4, p6

    move/from16 v5, p3

    .line 1293
    invoke-direct/range {v0 .. v5}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->calculateGroupTop(Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Landroid/view/View;II)V

    if-ne v8, v7, :cond_8

    .line 1296
    iget-object v0, v6, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    or-int/2addr v1, v10

    iput v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    :cond_8
    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p1

    move-object/from16 v3, p7

    move/from16 v4, p3

    move/from16 v5, p5

    .line 1299
    invoke-direct/range {v0 .. v5}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->calculateGroupBottom(Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Landroid/view/View;II)V

    .line 1301
    iput-object v9, v6, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    return v7
.end method

.method private calculateGroupTop(Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Landroid/view/View;II)V
    .locals 6

    .line 1189
    invoke-virtual {p2}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1190
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/preference/PreferenceGroupAdapter;->getAnimatorPreferenceGroups()Ljava/util/List;

    move-result-object v0

    .line 1191
    invoke-virtual {p2}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 1193
    invoke-direct {p0, p4}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->checkPreIsAtomicPreference(I)Z

    move-result p2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move v3, p5

    .line 1195
    invoke-direct/range {v0 .. v5}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->findNearViewY(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IIZ)I

    move-result p4

    int-to-float p4, p4

    .line 1197
    invoke-direct {p0, p1, p5}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->getPrePreference(Landroidx/recyclerview/widget/RecyclerView;I)Landroidx/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1198
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget-object p1, p1, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p2

    iput p2, p1, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    if-eqz p2, :cond_2

    cmpl-float p1, p4, p1

    if-nez p1, :cond_1

    .line 1202
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget-object p1, p1, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p2

    iput p2, p1, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 1204
    :cond_1
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget-object p1, p1, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    iget p2, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mCardGroupMarginBottom:I

    int-to-float p2, p2

    add-float/2addr p4, p2

    iput p4, p1, Landroid/graphics/RectF;->top:F

    goto :goto_0

    :cond_2
    cmpl-float p1, p4, p1

    if-nez p1, :cond_3

    .line 1208
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget-object p1, p1, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p2

    iput p2, p1, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 1210
    :cond_3
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget-object p1, p1, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    iput p4, p1, Landroid/graphics/RectF;->top:F

    goto :goto_0

    .line 1216
    :cond_4
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget-object p1, p1, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p2

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 1220
    :goto_0
    iget-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget-object p1, p1, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p2

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p4

    int-to-float p4, p4

    add-float/2addr p2, p4

    cmpg-float p1, p1, p2

    if-gez p1, :cond_6

    .line 1221
    iget-object p0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget-object p0, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, p0, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    .line 1225
    :cond_5
    iget-object p0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget-object p0, p0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p1

    iput p1, p0, Landroid/graphics/RectF;->top:F

    :cond_6
    :goto_1
    return-void
.end method

.method private calculateItemOffsets(Landroid/graphics/Rect;ILandroidx/preference/Preference;)V
    .locals 1

    .line 1378
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmiuix/preference/PreferenceGroupAdapter;->getPositionType(I)I

    move-result p2

    .line 1379
    invoke-virtual {p3}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object p3

    instance-of p3, p3, Landroidx/preference/PreferenceScreen;

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    move p2, v0

    :cond_0
    if-eq p2, v0, :cond_1

    const/4 p3, 0x4

    if-ne p2, p3, :cond_2

    .line 1384
    :cond_1
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    iget p0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mCardGroupMarginBottom:I

    add-int/2addr p2, p0

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_2
    return-void
.end method

.method private checkEndRadioButtonPreferenceCategory(Landroidx/recyclerview/widget/RecyclerView;II)Z
    .locals 2

    const/4 v0, 0x1

    add-int/2addr p2, v0

    const/4 v1, 0x0

    if-ge p2, p3, :cond_1

    .line 996
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 997
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    .line 998
    iget-object p0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {p0}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object p0

    .line 999
    instance-of p0, p0, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz p0, :cond_0

    return v1

    :cond_0
    return v0

    :cond_1
    return v1
.end method

.method private checkNextIsAtomicPreference(Landroidx/recyclerview/widget/RecyclerView;II)Z
    .locals 0

    .line 1338
    invoke-direct {p0, p1, p2, p3}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->getNextPreference(Landroidx/recyclerview/widget/RecyclerView;II)Landroidx/preference/Preference;

    move-result-object p0

    instance-of p0, p0, Landroidx/preference/PreferenceGroup;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private checkPreIsAtomicPreference(I)Z
    .locals 1

    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_1

    .line 1356
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1357
    iget-object p0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {p0}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1358
    :goto_0
    instance-of p0, p0, Landroidx/preference/PreferenceGroup;

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private findNearViewY(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/View;IIZ)I
    .locals 1

    const/4 v0, -0x1

    if-eqz p5, :cond_3

    if-eqz p2, :cond_2

    .line 972
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

    iget p0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mHeightPixels:I

    if-lt p2, p0, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    add-int/lit8 p3, p3, 0x1

    if-ge p3, p4, :cond_5

    .line 976
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 978
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    float-to-int p0, p0

    return p0

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :cond_3
    add-int/lit8 p3, p3, -0x1

    :goto_2
    if-lt p3, p4, :cond_5

    .line 984
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 986
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p1, p0

    return p1

    :cond_4
    add-int/lit8 p3, p3, -0x1

    goto :goto_2

    :cond_5
    return v0
.end method

.method private getNextPreference(Landroidx/recyclerview/widget/RecyclerView;II)Landroidx/preference/Preference;
    .locals 1

    add-int/lit8 p2, p2, 0x1

    const/4 v0, 0x0

    if-ge p2, p3, :cond_0

    .line 1343
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 1344
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    .line 1345
    iget-object p2, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {p2}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1346
    iget-object p0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {p0}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getPrePreference(Landroidx/recyclerview/widget/RecyclerView;I)Landroidx/preference/Preference;
    .locals 1

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    if-ltz p2, :cond_0

    .line 1365
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 1366
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    .line 1367
    iget-object p2, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {p2}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1368
    iget-object p0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {p0}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private isPreferenceCardStyleEnabled(Landroidx/preference/Preference;)Z
    .locals 1

    .line 1389
    iget-object p0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {p0}, Lmiuix/preference/PreferenceFragment;->access$1000(Lmiuix/preference/PreferenceFragment;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1392
    :cond_0
    instance-of p0, p1, Landroidx/preference/PreferenceGroup;

    if-eqz p0, :cond_1

    return v0

    .line 1395
    :cond_1
    instance-of p0, p1, Lmiuix/preference/PreferenceStyle;

    if-eqz p0, :cond_2

    .line 1396
    check-cast p1, Lmiuix/preference/PreferenceStyle;

    invoke-interface {p1}, Lmiuix/preference/PreferenceStyle;->enabledCardStyle()Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private setItemOffsets(Landroid/graphics/Rect;Landroidx/preference/Preference;ILandroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1259
    invoke-static {p4}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 1260
    iget v0, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardMarginEnd:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardMarginStart:I

    :goto_0
    if-eqz p4, :cond_1

    .line 1261
    iget p4, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardMarginStart:I

    goto :goto_1

    :cond_1
    iget p4, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardMarginEnd:I

    .line 1262
    :goto_1
    iget-object v1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v1}, Lmiuix/preference/PreferenceFragment;->access$1300(Lmiuix/preference/PreferenceFragment;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 1263
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$1300(Lmiuix/preference/PreferenceFragment;)I

    move-result v0

    add-int/2addr p4, v0

    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 1264
    invoke-direct {p0, p1, p3, p2}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->calculateItemOffsets(Landroid/graphics/Rect;ILandroidx/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public calculateGroupRectAndDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Landroidx/recyclerview/widget/RecyclerView$State;",
            "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
            "*>;)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    .line 1010
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$1100(Lmiuix/preference/PreferenceFragment;)Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$1200(Lmiuix/preference/PreferenceFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_12

    .line 1013
    :cond_0
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mCardGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1014
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    .line 1015
    invoke-static/range {p2 .. p2}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    iput-boolean v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mIsLayoutRtl:Z

    if-eqz v0, :cond_1

    .line 1019
    iget v0, v8, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardMarginEnd:I

    iget-object v1, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v1}, Lmiuix/preference/PreferenceFragment;->access$1300(Lmiuix/preference/PreferenceFragment;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1020
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget v2, v8, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardMarginStart:I

    sub-int/2addr v1, v2

    iget-object v2, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v2}, Lmiuix/preference/PreferenceFragment;->access$1300(Lmiuix/preference/PreferenceFragment;)I

    move-result v2

    goto :goto_0

    .line 1022
    :cond_1
    iget v0, v8, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardMarginStart:I

    iget-object v1, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v1}, Lmiuix/preference/PreferenceFragment;->access$1300(Lmiuix/preference/PreferenceFragment;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1023
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    iget v2, v8, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardMarginEnd:I

    sub-int/2addr v1, v2

    iget-object v2, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v2}, Lmiuix/preference/PreferenceFragment;->access$1300(Lmiuix/preference/PreferenceFragment;)I

    move-result v2

    :goto_0
    sub-int/2addr v1, v2

    move v12, v0

    move v13, v1

    const/4 v7, 0x0

    const/4 v15, 0x0

    :goto_1
    const/4 v3, 0x1

    if-ge v15, v11, :cond_14

    .line 1027
    invoke-virtual {v10, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1028
    invoke-virtual {v10, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    .line 1029
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_2
    move/from16 v19, v7

    goto :goto_4

    .line 1033
    :cond_3
    iget-object v4, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v4}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object v4

    invoke-virtual {v4, v1}, Lmiuix/preference/PreferenceGroupAdapter;->getPositionType(I)I

    move-result v4

    .line 1035
    iget-object v14, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mCardGroups:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v6, 0x0

    if-ge v7, v14, :cond_4

    .line 1036
    iget-object v14, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    if-nez v14, :cond_5

    .line 1037
    iget-object v14, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mCardGroups:Ljava/util/ArrayList;

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iput-object v14, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    goto :goto_2

    .line 1040
    :cond_4
    new-instance v14, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget-object v5, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-direct {v14, v5, v6}, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;-><init>(Lmiuix/preference/PreferenceFragment;Lmiuix/preference/PreferenceFragment$1;)V

    iput-object v14, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    .line 1041
    iget-object v5, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mCardGroups:Ljava/util/ArrayList;

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1044
    :cond_5
    :goto_2
    instance-of v14, v0, Lmiuix/preference/RadioButtonPreference;

    if-nez v14, :cond_8

    invoke-virtual {v0}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v5

    instance-of v5, v5, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v5, :cond_6

    goto :goto_5

    .line 1105
    :cond_6
    invoke-direct {v8, v0}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->isPreferenceCardStyleEnabled(Landroidx/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v5, v0

    move-object/from16 v0, p0

    move/from16 v17, v1

    move-object v1, v5

    move-object/from16 v18, v2

    move v2, v4

    move v3, v15

    move-object/from16 v4, p2

    move v5, v11

    move/from16 v6, v17

    move/from16 v19, v7

    move-object/from16 v7, v18

    .line 1106
    invoke-direct/range {v0 .. v7}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->calculateGroupRect(Landroidx/preference/Preference;IILandroidx/recyclerview/widget/RecyclerView;IILandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_3
    add-int/lit8 v7, v19, 0x1

    goto/16 :goto_b

    :cond_7
    :goto_4
    move/from16 v7, v19

    goto/16 :goto_b

    :cond_8
    :goto_5
    move-object v5, v0

    move/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v19, v7

    .line 1046
    invoke-virtual {v5}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v0, :cond_9

    .line 1047
    invoke-virtual {v5}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioSetPreferenceCategory;

    move-object v7, v0

    goto :goto_6

    :cond_9
    move-object v7, v6

    :goto_6
    const/4 v2, 0x2

    if-eq v4, v3, :cond_a

    if-ne v4, v2, :cond_b

    .line 1052
    :cond_a
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    or-int/2addr v1, v3

    iput v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    .line 1053
    iput-boolean v3, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->startRadioButtonCategory:Z

    .line 1054
    invoke-static {v0, v3}, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->access$1502(Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;Z)Z

    .line 1056
    invoke-virtual {v5}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_b

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v16, v2

    move-object v2, v5

    move v6, v3

    move-object/from16 v3, v18

    move v6, v4

    const/4 v9, 0x4

    move/from16 v4, v17

    move-object/from16 v20, v5

    move v5, v15

    .line 1058
    invoke-direct/range {v0 .. v5}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->calculateGroupTop(Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Landroid/view/View;II)V

    goto :goto_7

    :cond_b
    move/from16 v16, v2

    move v6, v4

    move-object/from16 v20, v5

    const/4 v9, 0x4

    :goto_7
    if-eq v6, v9, :cond_c

    const/4 v0, 0x3

    if-ne v6, v0, :cond_d

    .line 1064
    :cond_c
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->access$1502(Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;Z)Z

    .line 1065
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    .line 1067
    iget-object v0, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_d

    .line 1068
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget-object v0, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    :cond_d
    if-eqz v7, :cond_e

    .line 1071
    invoke-virtual {v7}, Lmiuix/preference/RadioSetPreferenceCategory;->getPrimaryPreference()Lmiuix/preference/RadioButtonPreference;

    move-result-object v0

    move-object/from16 v2, v20

    if-ne v0, v2, :cond_f

    .line 1072
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    if-eqz v0, :cond_f

    .line 1073
    iput v15, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->primeIndex:I

    goto :goto_8

    :cond_e
    move-object/from16 v2, v20

    .line 1077
    :cond_f
    :goto_8
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    if-eqz v0, :cond_12

    .line 1078
    invoke-virtual {v2}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v0, :cond_11

    .line 1079
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->access$1602(Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;Z)Z

    .line 1080
    invoke-virtual {v2}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    check-cast v0, Lmiuix/preference/RadioSetPreferenceCategory;

    .line 1081
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v1, :cond_12

    .line 1083
    invoke-virtual {v0, v3}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    .line 1084
    instance-of v5, v4, Lmiuix/preference/RadioButtonPreference;

    if-eqz v5, :cond_10

    .line 1085
    check-cast v4, Lmiuix/preference/RadioButtonPreference;

    .line 1086
    invoke-virtual {v4}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1087
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->access$1602(Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;Z)Z

    goto :goto_a

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_11
    if-eqz v14, :cond_12

    .line 1093
    move-object v0, v2

    check-cast v0, Lmiuix/preference/RadioButtonPreference;

    .line 1094
    iget-object v1, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    invoke-virtual {v0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    invoke-static {v1, v0}, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->access$1602(Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;Z)Z

    :cond_12
    :goto_a
    const/4 v0, 0x1

    if-eq v6, v0, :cond_13

    if-ne v6, v9, :cond_7

    :cond_13
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v3, v18

    move v4, v15

    move v5, v11

    .line 1099
    invoke-direct/range {v0 .. v5}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->calculateGroupBottom(Landroidx/recyclerview/widget/RecyclerView;Landroidx/preference/Preference;Landroid/view/View;II)V

    .line 1100
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    invoke-direct {v8, v10, v15, v11}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->checkEndRadioButtonPreferenceCategory(Landroidx/recyclerview/widget/RecyclerView;II)Z

    move-result v1

    iput-boolean v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->endRadioButtonCategory:Z

    .line 1101
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    iget v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    or-int/2addr v1, v9

    iput v1, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    const/4 v0, 0x0

    .line 1102
    iput-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mPreferenceGroupRect:Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    goto/16 :goto_3

    :goto_b
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v9, p1

    goto/16 :goto_1

    :cond_14
    const/4 v9, 0x4

    const/16 v16, 0x2

    const/4 v1, 0x0

    .line 1116
    :goto_c
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mCardGroups:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1e

    .line 1117
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mCardGroups:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;

    .line 1118
    iget-object v2, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->rectF:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    .line 1119
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 1122
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    int-to-float v5, v12

    int-to-float v6, v13

    .line 1123
    invoke-virtual {v4, v5, v3, v6, v2}, Landroid/graphics/RectF;->set(FFFF)V

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_15

    move-object/from16 v3, p1

    move v5, v9

    const/4 v6, 0x3

    goto/16 :goto_11

    .line 1128
    :cond_15
    iget v2, v0, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->type:I

    and-int/lit8 v5, v2, 0x1

    if-eqz v5, :cond_16

    const/4 v5, 0x1

    goto :goto_d

    :cond_16
    const/4 v5, 0x0

    :goto_d
    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_17

    const/4 v2, 0x1

    goto :goto_e

    :cond_17
    const/4 v2, 0x0

    :goto_e
    if-eqz v5, :cond_18

    .line 1130
    iget v5, v8, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardRadius:I

    int-to-float v5, v5

    goto :goto_f

    :cond_18
    move v5, v3

    :goto_f
    if-eqz v2, :cond_19

    .line 1131
    iget v2, v8, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardRadius:I

    int-to-float v3, v2

    :cond_19
    const/16 v2, 0x8

    new-array v2, v2, [F

    const/4 v6, 0x0

    aput v5, v2, v6

    const/4 v6, 0x1

    aput v5, v2, v6

    aput v5, v2, v16

    const/4 v6, 0x3

    aput v5, v2, v6

    aput v3, v2, v9

    const/4 v5, 0x5

    aput v3, v2, v5

    const/4 v5, 0x6

    aput v3, v2, v5

    const/4 v5, 0x7

    aput v3, v2, v5

    .line 1136
    iget-object v3, v8, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 1137
    iget-object v3, v8, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardPath:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v3, v4, v2, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 1139
    invoke-static {v0}, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->access$1500(Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;)Z

    move-result v2

    if-eqz v2, :cond_1b

    iget-object v2, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v2}, Lmiuix/preference/PreferenceFragment;->access$1000(Lmiuix/preference/PreferenceFragment;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 1140
    iget-object v2, v8, Lmiuix/recyclerview/card/base/BaseDecoration;->mPaint:Landroid/graphics/Paint;

    invoke-static {v0}, Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;->access$1600(Lmiuix/preference/PreferenceFragment$PreferenceGroupRect;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 1141
    iget v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mCheckableFilterColorChecked:I

    goto :goto_10

    :cond_1a
    iget v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mCheckableFilterColorNormal:I

    .line 1140
    :goto_10
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1142
    iget-object v0, v8, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardPath:Landroid/graphics/Path;

    iget-object v2, v8, Lmiuix/recyclerview/card/base/BaseDecoration;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    move v5, v9

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_11

    :cond_1b
    move-object/from16 v3, p1

    move v5, v9

    .line 1143
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mCardGroupBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1d

    .line 1144
    instance-of v2, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_1c

    .line 1145
    iget-object v2, v8, Lmiuix/recyclerview/card/base/BaseDecoration;->mPaint:Landroid/graphics/Paint;

    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 1146
    iget-object v0, v8, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardPath:Landroid/graphics/Path;

    iget-object v2, v8, Lmiuix/recyclerview/card/base/BaseDecoration;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_11

    .line 1148
    :cond_1c
    iget-object v2, v8, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardPath:Landroid/graphics/Path;

    invoke-virtual {v8, v3, v4, v2, v0}, Lmiuix/recyclerview/card/base/BaseDecoration;->clipDrawableRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;Landroid/graphics/Path;Landroid/graphics/drawable/Drawable;)V

    :cond_1d
    :goto_11
    add-int/lit8 v1, v1, 0x1

    move v9, v5

    goto/16 :goto_c

    .line 1154
    :cond_1e
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-nez v0, :cond_1f

    return-void

    .line 1158
    :cond_1f
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    .line 1159
    iput-boolean v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->isAnimatorRunning:Z

    goto :goto_12

    .line 1161
    :cond_20
    iget-boolean v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->isAnimatorRunning:Z

    if-eqz v0, :cond_21

    .line 1162
    iget-object v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/preference/PreferenceGroupAdapter;->clearPreferenceGroups()V

    :cond_21
    const/4 v0, 0x0

    .line 1164
    iput-boolean v0, v8, Lmiuix/preference/PreferenceFragment$FrameDecoration;->isAnimatorRunning:Z

    :cond_22
    :goto_12
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 1232
    iget-object p4, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {p4}, Lmiuix/preference/PreferenceFragment;->access$1100(Lmiuix/preference/PreferenceFragment;)Z

    move-result p4

    if-nez p4, :cond_7

    iget-object p4, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {p4}, Lmiuix/preference/PreferenceFragment;->access$1200(Lmiuix/preference/PreferenceFragment;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_1

    .line 1235
    :cond_0
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 1236
    iget-object p4, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {p4}, Lmiuix/preference/PreferenceFragment;->access$500(Lmiuix/preference/PreferenceFragment;)Lmiuix/preference/PreferenceGroupAdapter;

    move-result-object p4

    invoke-virtual {p4, p2}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object p4

    if-nez p4, :cond_1

    return-void

    .line 1240
    :cond_1
    invoke-virtual {p4}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lmiuix/preference/RadioSetPreferenceCategory;

    if-nez v0, :cond_6

    instance-of v0, p4, Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_2

    .line 1242
    invoke-virtual {p4}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Lmiuix/preference/RadioButtonPreferenceCategory;

    if-nez v0, :cond_6

    :cond_2
    instance-of v0, p4, Lmiuix/preference/RadioButtonPreference;

    if-eqz v0, :cond_3

    goto :goto_0

    .line 1247
    :cond_3
    invoke-direct {p0, p4}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->isPreferenceCardStyleEnabled(Landroidx/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1248
    invoke-direct {p0, p1, p4, p2, p3}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->setItemOffsets(Landroid/graphics/Rect;Landroidx/preference/Preference;ILandroidx/recyclerview/widget/RecyclerView;)V

    .line 1251
    :cond_4
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 1252
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p0

    add-int/lit8 p2, p2, 0x1

    if-ne p0, p2, :cond_5

    const/4 p0, 0x0

    .line 1253
    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_5
    return-void

    .line 1244
    :cond_6
    :goto_0
    invoke-direct {p0, p1, p4, p2, p3}, Lmiuix/preference/PreferenceFragment$FrameDecoration;->setItemOffsets(Landroid/graphics/Rect;Landroidx/preference/Preference;ILandroidx/recyclerview/widget/RecyclerView;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public initMaskPadding(Landroid/content/Context;)V
    .locals 2

    .line 939
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/preference/R$dimen;->miuix_preference_checkable_item_mask_padding_top:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingTop:I

    .line 941
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/preference/R$dimen;->miuix_preference_checkable_item_mask_padding_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingBottom:I

    .line 943
    sget v0, Lmiuix/preference/R$attr;->preferenceCheckableItemMaskPaddingStart:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingStart:I

    .line 944
    sget v0, Lmiuix/preference/R$attr;->preferenceCheckableItemSetMaskPaddingEnd:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mMaskPaddingEnd:I

    .line 945
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/preference/R$dimen;->miuix_theme_radius_common:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardRadius:I

    .line 947
    sget v0, Lmiuix/preference/R$attr;->preferenceCardGroupMarginStart:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardMarginStart:I

    .line 948
    sget v0, Lmiuix/preference/R$attr;->preferenceCardGroupMarginEnd:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mCardMarginEnd:I

    .line 951
    sget v0, Lmiuix/preference/R$attr;->checkablePreferenceItemColorFilterChecked:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mCheckableFilterColorChecked:I

    .line 952
    sget v0, Lmiuix/preference/R$attr;->checkablePreferenceItemColorFilterNormal:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mCheckableFilterColorNormal:I

    .line 953
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/preference/R$dimen;->miuix_preference_card_group_margin_bottom:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mCardGroupMarginBottom:I

    .line 957
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-static {v0}, Lmiuix/preference/PreferenceFragment;->access$1000(Lmiuix/preference/PreferenceFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 958
    sget v0, Lmiuix/preference/R$attr;->preferenceCardGroupBackground:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mCardGroupBackground:Landroid/graphics/drawable/Drawable;

    .line 959
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    .line 960
    iget-object p0, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mPaint:Landroid/graphics/Paint;

    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public updateClipPaintColor()V
    .locals 2

    .line 1268
    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isInFloatingWindowMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1270
    iget-object v0, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mPaint:Landroid/graphics/Paint;

    iget-object p0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lmiuix/preference/R$attr;->preferenceNormalCheckableMaskColor:I

    invoke-static {p0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 1272
    :cond_0
    iget-object v0, p0, Lmiuix/recyclerview/card/base/BaseDecoration;->mPaint:Landroid/graphics/Paint;

    iget-object p0, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->this$0:Lmiuix/preference/PreferenceFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lmiuix/preference/R$attr;->preferenceCheckableMaskColor:I

    invoke-static {p0, v1}, Lmiuix/internal/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    return-void
.end method

.method public updateContainerHeight(I)V
    .locals 0

    .line 966
    iput p1, p0, Lmiuix/preference/PreferenceFragment$FrameDecoration;->mHeightPixels:I

    return-void
.end method
