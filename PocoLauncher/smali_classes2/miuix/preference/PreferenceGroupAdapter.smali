.class Lmiuix/preference/PreferenceGroupAdapter;
.super Landroidx/preference/PreferenceGroupAdapter;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Lmiuix/animation/internal/BlinkStateObserver;
.implements Lmiuix/container/ExtraPaddingObserver;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "RestrictedApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;
    }
.end annotation


# static fields
.field private static final STATES_TAGS:[I

.field private static final STATE_SET_FIRST:[I

.field private static final STATE_SET_LAST:[I

.field private static final STATE_SET_MIDDLE:[I

.field private static final STATE_SET_NO_LINE:[I

.field private static final STATE_SET_NO_TITLE:[I

.field private static final STATE_SET_SINGLE:[I


# instance fields
.field private final mAnimatorPreferenceGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field public mCardMarginEnd:I

.field public mCardMarginStart:I

.field private mCheckableFilterColorChecked:I

.field private mCheckableFilterColorNormal:I

.field private mClipPaint:Landroid/graphics/Paint;

.field private mCurrentItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

.field private mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

.field private mExtraHorizontalPadding:I

.field private mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

.field private mHighlightItemView:Landroid/view/View;

.field private mHighlightPosition:I

.field private mIsDisableAllCard:Z

.field private mIsEnableCardStyle:Z

.field private mItemSelectable:Z

.field private mItemTouchOnDownListener:Landroid/view/View$OnTouchListener;

.field private mItemTouchOnHighlightListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

.field private mMaskPaddingBottom:I

.field private mMaskPaddingEnd:I

.field private mMaskPaddingStart:I

.field private mMaskPaddingTop:I

.field private mMaskRadius:I

.field private mNeedCancelHighlightRequest:Z

.field private final mObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

.field private mParentTouchOnHighlightListener:Landroid/view/View$OnTouchListener;

.field private mPreferenceHighLightChildRadius:I

.field private mRadioSetItemPaddingEndExtra:I

.field private mRadioSetItemPaddingStartExtra:I

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSelectedPreference:Landroidx/preference/Preference;

.field private mTempBgPadding:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x6

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a3

    aput v2, v0, v1

    const/4 v3, 0x1

    const v4, 0x10100a4

    aput v4, v0, v3

    const/4 v5, 0x2

    const v6, 0x10100a5

    aput v6, v0, v5

    const/4 v5, 0x3

    const v7, 0x10100a6

    aput v7, v0, v5

    .line 59
    sget v5, Lmiuix/preference/R$attr;->state_no_title:I

    const/4 v8, 0x4

    aput v5, v0, v8

    sget v8, Lmiuix/preference/R$attr;->state_no_line:I

    const/4 v9, 0x5

    aput v8, v0, v9

    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATES_TAGS:[I

    .line 69
    invoke-static {v0}, Ljava/util/Arrays;->sort([I)V

    new-array v0, v3, [I

    aput v2, v0, v1

    .line 79
    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_SINGLE:[I

    new-array v0, v3, [I

    aput v4, v0, v1

    .line 80
    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_FIRST:[I

    new-array v0, v3, [I

    aput v6, v0, v1

    .line 81
    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_MIDDLE:[I

    new-array v0, v3, [I

    aput v7, v0, v1

    .line 82
    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_LAST:[I

    new-array v0, v3, [I

    aput v5, v0, v1

    .line 83
    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_NO_TITLE:[I

    new-array v0, v3, [I

    aput v8, v0, v1

    .line 84
    sput-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_NO_LINE:[I

    return-void
.end method

.method public constructor <init>(Landroidx/preference/PreferenceGroup;ZI)V
    .locals 2

    .line 140
    invoke-direct {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;-><init>(Landroidx/preference/PreferenceGroup;)V

    .line 87
    new-instance v0, Lmiuix/preference/PreferenceGroupAdapter$1;

    invoke-direct {v0, p0}, Lmiuix/preference/PreferenceGroupAdapter$1;-><init>(Lmiuix/preference/PreferenceGroupAdapter;)V

    iput-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRadioSetItemPaddingEndExtra:I

    .line 102
    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mExtraHorizontalPadding:I

    const/4 v1, -0x1

    .line 103
    iput v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightPosition:I

    const/4 v1, 0x0

    .line 104
    iput-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightItemView:Landroid/view/View;

    .line 105
    iput-boolean v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mNeedCancelHighlightRequest:Z

    .line 107
    iput-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mParentTouchOnHighlightListener:Landroid/view/View$OnTouchListener;

    .line 109
    iput-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mItemTouchOnHighlightListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 110
    new-instance v1, Lmiuix/preference/PreferenceGroupAdapter$2;

    invoke-direct {v1, p0}, Lmiuix/preference/PreferenceGroupAdapter$2;-><init>(Lmiuix/preference/PreferenceGroupAdapter;)V

    iput-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mItemTouchOnDownListener:Landroid/view/View$OnTouchListener;

    .line 121
    iput-boolean v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mItemSelectable:Z

    .line 123
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    .line 124
    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCardMarginStart:I

    .line 125
    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCardMarginEnd:I

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mAnimatorPreferenceGroups:Ljava/util/List;

    .line 141
    invoke-direct {p0, p1, p2, p3}, Lmiuix/preference/PreferenceGroupAdapter;->init(Landroidx/preference/PreferenceGroup;ZI)V

    return-void
.end method

.method private ableToUseFolmeAnim(Landroidx/preference/Preference;)Z
    .locals 0

    .line 795
    instance-of p0, p1, Landroidx/preference/PreferenceCategory;

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 798
    :cond_0
    instance-of p0, p1, Lmiuix/preference/FolmeAnimationController;

    if-eqz p0, :cond_1

    .line 799
    check-cast p1, Lmiuix/preference/FolmeAnimationController;

    invoke-interface {p1}, Lmiuix/preference/FolmeAnimationController;->isTouchAnimationEnable()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic access$002(Lmiuix/preference/PreferenceGroupAdapter;[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;)[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;
    .locals 0

    .line 57
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    return-object p1
.end method

.method private getAllVisiblePreferences(Landroidx/preference/PreferenceGroup;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroup;",
            ")",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 1003
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 1004
    :goto_0
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1005
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    .line 1006
    invoke-virtual {v1}, Landroidx/preference/Preference;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1007
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private getPreferenceDescriptor(Landroidx/preference/Preference;I)I
    .locals 7

    if-ltz p2, :cond_1

    .line 813
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    array-length v1, v0

    if-ge p2, v1, :cond_1

    .line 814
    aget-object v1, v0, p2

    if-nez v1, :cond_0

    .line 815
    new-instance v1, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    invoke-direct {v1, p0}, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;-><init>(Lmiuix/preference/PreferenceGroupAdapter;)V

    aput-object v1, v0, p2

    .line 817
    :cond_0
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    aget-object v0, v0, p2

    iget-object v0, v0, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->status:[I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_f

    .line 820
    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 822
    invoke-direct {p0, v0}, Lmiuix/preference/PreferenceGroupAdapter;->getAllVisiblePreferences(Landroidx/preference/PreferenceGroup;)Ljava/util/List;

    move-result-object v1

    .line 823
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, -0x1

    return p0

    .line 829
    :cond_2
    instance-of v2, p1, Landroidx/preference/PreferenceGroup;

    const/4 v3, 0x1

    if-nez v2, :cond_5

    instance-of v2, v0, Landroidx/preference/PreferenceScreen;

    if-nez v2, :cond_4

    instance-of v2, v0, Lmiuix/preference/RadioButtonPreferenceCategory;

    if-nez v2, :cond_3

    instance-of v2, v0, Lmiuix/preference/SingleChoicePreferenceCategory;

    if-nez v2, :cond_3

    instance-of v0, v0, Lmiuix/preference/MultiChoicePreferenceCategory;

    if-eqz v0, :cond_5

    .line 830
    :cond_3
    invoke-direct {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->isNeedCardGroup(Landroidx/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 831
    :cond_4
    sget-object p1, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_SINGLE:[I

    .line 833
    iget-object p0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    aget-object v0, p0, p2

    iput-object p1, v0, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->status:[I

    .line 834
    aget-object p0, p0, p2

    iput v3, p0, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->type:I

    return v3

    .line 836
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v3, :cond_6

    .line 837
    sget-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_SINGLE:[I

    move v1, v3

    goto :goto_1

    .line 839
    :cond_6
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result v0

    if-nez v0, :cond_7

    .line 840
    sget-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_FIRST:[I

    const/4 v1, 0x2

    goto :goto_1

    .line 842
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->compareTo(Landroidx/preference/Preference;)I

    move-result v0

    if-nez v0, :cond_8

    .line 843
    sget-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_LAST:[I

    const/4 v1, 0x4

    goto :goto_1

    .line 846
    :cond_8
    sget-object v0, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_MIDDLE:[I

    const/4 v1, 0x3

    .line 849
    :goto_1
    instance-of v4, p1, Landroidx/preference/PreferenceCategory;

    if-eqz v4, :cond_e

    .line 850
    check-cast p1, Landroidx/preference/PreferenceCategory;

    .line 853
    instance-of v4, p1, Lmiuix/preference/PreferenceCategory;

    if-eqz v4, :cond_a

    .line 854
    check-cast p1, Lmiuix/preference/PreferenceCategory;

    invoke-virtual {p1}, Lmiuix/preference/PreferenceCategory;->isDividerLineNeeded()Z

    move-result v4

    xor-int/2addr v4, v3

    .line 857
    invoke-virtual {p1}, Lmiuix/preference/PreferenceCategory;->hasTitle()Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_2

    :cond_9
    move v3, v2

    goto :goto_2

    .line 861
    :cond_a
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    move v4, v2

    :goto_2
    if-nez v4, :cond_b

    if-eqz v3, :cond_e

    :cond_b
    if-eqz v4, :cond_c

    .line 868
    sget-object p1, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_NO_LINE:[I

    array-length v4, p1

    new-array v4, v4, [I

    .line 869
    array-length v5, p1

    invoke-static {p1, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_c
    new-array v4, v2, [I

    :goto_3
    if-eqz v3, :cond_d

    .line 874
    sget-object p1, Lmiuix/preference/PreferenceGroupAdapter;->STATE_SET_NO_TITLE:[I

    array-length v3, p1

    new-array v3, v3, [I

    .line 875
    array-length v5, p1

    invoke-static {p1, v2, v3, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_d
    new-array v3, v2, [I

    .line 879
    :goto_4
    array-length p1, v4

    array-length v5, v3

    add-int/2addr p1, v5

    array-length v5, v0

    add-int/2addr p1, v5

    new-array p1, p1, [I

    .line 880
    array-length v5, v4

    invoke-static {v4, v2, p1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 881
    array-length v5, v4

    array-length v6, v3

    invoke-static {v3, v2, p1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 882
    array-length v4, v4

    array-length v3, v3

    add-int/2addr v4, v3

    array-length v3, v0

    invoke-static {v0, v2, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p1

    .line 890
    :cond_e
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    aget-object v2, p1, p2

    iput-object v0, v2, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->status:[I

    .line 891
    aget-object p1, p1, p2

    iput v1, p1, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->type:I

    .line 894
    :cond_f
    iget-object p0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    aget-object p0, p0, p2

    iget p0, p0, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->type:I

    return p0
.end method

.method private handleAccessibility(Landroidx/preference/Preference;Landroidx/preference/PreferenceViewHolder;)V
    .locals 2

    .line 449
    instance-of v0, p1, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_0

    const p0, 0x1020016

    .line 450
    invoke-virtual {p2, p0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_4

    .line 451
    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x1

    .line 453
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAccessibilityHeading(Z)V

    goto :goto_0

    .line 458
    :cond_0
    instance-of v0, p1, Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    const v0, 0x1020001

    .line 460
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 462
    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 464
    :cond_1
    invoke-direct {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->isCheckBoxPreferenceExcluded(Landroidx/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 465
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lmiuix/preference/PreferenceGroupAdapter$3;

    invoke-direct {v0, p0, p1}, Lmiuix/preference/PreferenceGroupAdapter$3;-><init>(Lmiuix/preference/PreferenceGroupAdapter;Landroidx/preference/Preference;)V

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    goto :goto_0

    .line 478
    :cond_2
    instance-of v0, p1, Landroidx/preference/SwitchPreference;

    if-eqz v0, :cond_4

    const v0, 0x1020040

    .line 480
    invoke-virtual {p2, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 482
    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 485
    :cond_3
    invoke-direct {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->isCheckBoxPreferenceExcluded(Landroidx/preference/Preference;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 486
    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lmiuix/preference/PreferenceGroupAdapter$4;

    invoke-direct {v0, p0, p1}, Lmiuix/preference/PreferenceGroupAdapter$4;-><init>(Lmiuix/preference/PreferenceGroupAdapter;Landroidx/preference/Preference;)V

    invoke-static {p2, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private init(Landroidx/preference/PreferenceGroup;ZI)V
    .locals 0

    .line 145
    iput-boolean p2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mIsEnableCardStyle:Z

    const/4 p2, -0x1

    if-ne p2, p3, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 146
    :goto_0
    iput-boolean p2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mIsDisableAllCard:Z

    .line 147
    invoke-virtual {p0}, Landroidx/preference/PreferenceGroupAdapter;->getItemCount()I

    move-result p2

    new-array p2, p2, [Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    iput-object p2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    .line 148
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->initAttr(Landroid/content/Context;)V

    return-void
.end method

.method private isArrowRightVisible(Landroidx/preference/Preference;)Z
    .locals 0

    .line 805
    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_2

    .line 806
    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    .line 807
    invoke-virtual {p1}, Landroidx/preference/Preference;->getOnPreferenceClickListener()Landroidx/preference/Preference$OnPreferenceClickListener;

    move-result-object p0

    if-eqz p0, :cond_0

    instance-of p0, p1, Landroidx/preference/TwoStatePreference;

    if-eqz p0, :cond_2

    :cond_0
    instance-of p0, p1, Landroidx/preference/DialogPreference;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isCheckBoxPreferenceExcluded(Landroidx/preference/Preference;)Z
    .locals 0

    .line 503
    instance-of p0, p1, Lmiuix/preference/RadioButtonPreference;

    if-nez p0, :cond_1

    instance-of p0, p1, Lmiuix/preference/SingleChoicePreference;

    if-nez p0, :cond_1

    instance-of p0, p1, Lmiuix/preference/MultiChoicePreference;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isNeedCardGroup(Landroidx/preference/Preference;)Z
    .locals 1

    .line 905
    iget-boolean p0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mIsEnableCardStyle:Z

    if-eqz p0, :cond_3

    .line 906
    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object p0

    .line 907
    instance-of v0, p0, Lmiuix/preference/RadioButtonPreferenceCategory;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lmiuix/preference/RadioButtonPreference;

    if-eqz v0, :cond_0

    .line 908
    check-cast p0, Lmiuix/preference/RadioButtonPreferenceCategory;

    invoke-virtual {p0}, Lmiuix/preference/RadioButtonPreferenceCategory;->isNeedCardGroup()Z

    move-result p0

    return p0

    .line 909
    :cond_0
    instance-of v0, p0, Lmiuix/preference/SingleChoicePreferenceCategory;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lmiuix/preference/SingleChoicePreference;

    if-eqz v0, :cond_1

    .line 910
    check-cast p0, Lmiuix/preference/SingleChoicePreferenceCategory;

    invoke-virtual {p0}, Lmiuix/preference/SingleChoicePreferenceCategory;->getCardGroupEnabled()Z

    move-result p0

    return p0

    .line 911
    :cond_1
    instance-of v0, p0, Lmiuix/preference/MultiChoicePreferenceCategory;

    if-eqz v0, :cond_2

    instance-of p1, p1, Lmiuix/preference/MultiChoicePreference;

    if-eqz p1, :cond_2

    .line 912
    check-cast p0, Lmiuix/preference/MultiChoicePreferenceCategory;

    invoke-virtual {p0}, Lmiuix/preference/MultiChoicePreferenceCategory;->getCardGroupEnabled()Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private isNeedSetOutline(ILandroidx/preference/Preference;)Z
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 217
    iget-boolean p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mIsEnableCardStyle:Z

    if-eqz p1, :cond_0

    instance-of p1, p2, Landroidx/preference/PreferenceScreen;

    if-nez p1, :cond_0

    .line 218
    invoke-direct {p0, p2}, Lmiuix/preference/PreferenceGroupAdapter;->isNeedSetOutlineForItem(Landroidx/preference/Preference;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_0
    instance-of p0, p2, Lmiuix/preference/RadioButtonPreference;

    if-nez p0, :cond_2

    if-eqz p2, :cond_1

    .line 220
    invoke-virtual {p2}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object p0

    instance-of p0, p0, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isNeedSetOutlineForItem(Landroidx/preference/Preference;)Z
    .locals 1

    .line 210
    instance-of v0, p1, Lmiuix/preference/PreferenceStyle;

    if-eqz v0, :cond_0

    .line 211
    check-cast p1, Lmiuix/preference/PreferenceStyle;

    invoke-interface {p1}, Lmiuix/preference/PreferenceStyle;->enabledCardStyle()Z

    move-result p0

    return p0

    .line 213
    :cond_0
    iget-boolean p0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mIsEnableCardStyle:Z

    return p0
.end method

.method private setHighlightBlinkRadius(ILandroidx/preference/Preference;)V
    .locals 0

    .line 605
    iget-object p0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lmiuix/animation/controller/FolmeBlink;->setBlinkRadius(F)Lmiuix/animation/IBlinkStyle;

    return-void
.end method

.method private setPreferenceItemForegroundForHighLightChild(Landroid/view/View;Lcom/miui/support/drawable/CardStateDrawable;Landroidx/preference/Preference;)Z
    .locals 6

    .line 515
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 516
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 517
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CardView"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 518
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 519
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 520
    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 521
    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result p1

    .line 522
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_0

    .line 523
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 524
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v2, v5

    .line 525
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v5

    .line 526
    iget v5, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 527
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, v0

    .line 529
    :cond_0
    instance-of v0, p3, Lmiuix/preference/PreferenceStyle;

    if-eqz v0, :cond_1

    check-cast p3, Lmiuix/preference/PreferenceStyle;

    invoke-interface {p3}, Lmiuix/preference/PreferenceStyle;->enabledCardStyle()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 530
    invoke-virtual {p2, v1}, Lcom/miui/support/drawable/CardStateDrawable;->setRadius(I)V

    goto :goto_0

    .line 532
    :cond_1
    iget p0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mPreferenceHighLightChildRadius:I

    invoke-virtual {p2, p0}, Lcom/miui/support/drawable/CardStateDrawable;->setRadius(I)V

    .line 534
    :goto_0
    invoke-virtual {p2, v2, v3, v4, p1}, Lcom/miui/support/drawable/CardStateDrawable;->setInset(IIII)V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private startHighlight(Landroid/view/View;ILandroidx/preference/Preference;)V
    .locals 3

    .line 588
    sget v0, Lmiuix/preference/R$id;->preference_highlighted:I

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 589
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 590
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->blink()Lmiuix/animation/IBlinkStyle;

    move-result-object v0

    check-cast v0, Lmiuix/animation/controller/FolmeBlink;

    iput-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

    const/4 v2, 0x3

    .line 591
    invoke-virtual {v0, v2}, Lmiuix/animation/controller/FolmeBlink;->setTintMode(I)Lmiuix/animation/IBlinkStyle;

    .line 593
    invoke-direct {p0, p2, p3}, Lmiuix/preference/PreferenceGroupAdapter;->setHighlightBlinkRadius(ILandroidx/preference/Preference;)V

    .line 594
    iget-object p2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

    invoke-virtual {p2, p0}, Lmiuix/animation/controller/FolmeBlink;->attach(Lmiuix/animation/internal/BlinkStateObserver;)V

    .line 595
    iget-object p2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

    new-array p3, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p2, v2, p3}, Lmiuix/animation/controller/FolmeBlink;->startBlink(I[Lmiuix/animation/base/AnimConfig;)V

    .line 596
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightItemView:Landroid/view/View;

    .line 598
    :cond_0
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_1

    .line 599
    iget-object p0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCurrentItemAnimator:Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public checkHighlight(Landroidx/preference/PreferenceViewHolder;IILandroidx/preference/Preference;)V
    .locals 1

    .line 566
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 567
    iget v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightPosition:I

    if-ne p2, v0, :cond_2

    .line 568
    iget-boolean p2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mNeedCancelHighlightRequest:Z

    if-nez p2, :cond_1

    .line 569
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget v0, Lmiuix/preference/R$id;->preference_highlighted:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 572
    :cond_0
    invoke-direct {p0, p1, p3, p4}, Lmiuix/preference/PreferenceGroupAdapter;->startHighlight(Landroid/view/View;ILandroidx/preference/Preference;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 574
    iput-boolean p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mNeedCancelHighlightRequest:Z

    goto :goto_0

    .line 576
    :cond_2
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget p3, Lmiuix/preference/R$id;->preference_highlighted:I

    invoke-virtual {p1, p3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 577
    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->stopHighlight(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public clearPreferenceGroups()V
    .locals 1

    .line 962
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mAnimatorPreferenceGroups:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 963
    iget-object p0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mAnimatorPreferenceGroups:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public getAnimatorPreferenceGroups()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 958
    iget-object p0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mAnimatorPreferenceGroups:Ljava/util/List;

    return-object p0
.end method

.method getPositionType(I)I
    .locals 0

    .line 934
    iget-object p0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    aget-object p0, p0, p1

    iget p0, p0, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->type:I

    return p0
.end method

.method public initAttr(Landroid/content/Context;)V
    .locals 2

    .line 152
    sget v0, Lmiuix/preference/R$attr;->preferenceRadioSetChildExtraPaddingStart:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRadioSetItemPaddingStartExtra:I

    .line 153
    sget v0, Lmiuix/preference/R$attr;->checkablePreferenceItemColorFilterChecked:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCheckableFilterColorChecked:I

    .line 154
    sget v0, Lmiuix/preference/R$attr;->checkablePreferenceItemColorFilterNormal:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCheckableFilterColorNormal:I

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/preference/R$dimen;->miuix_preference_high_light_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mPreferenceHighLightChildRadius:I

    .line 159
    sget v0, Lmiuix/preference/R$attr;->preferenceCardGroupMarginStart:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCardMarginStart:I

    .line 160
    sget v0, Lmiuix/preference/R$attr;->preferenceCardGroupMarginEnd:I

    invoke-static {p1, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mCardMarginEnd:I

    return-void
.end method

.method public isHighlightRequested()Z
    .locals 1

    .line 583
    iget p0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightPosition:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 921
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 922
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 923
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    .line 227
    iget-object v1, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of v9, v1, Lmiuix/flexible/view/HyperCellLayout;

    if-eqz v9, :cond_0

    .line 229
    check-cast v1, Lmiuix/flexible/view/HyperCellLayout;

    invoke-virtual {v1}, Lmiuix/flexible/view/HyperCellLayout;->getTemplate()Lmiuix/flexible/template/IHyperCellTemplate;

    move-result-object v1

    .line 230
    instance-of v2, v1, Lmiuix/preference/flexible/AbstractBaseTemplate;

    if-eqz v2, :cond_0

    .line 231
    check-cast v1, Lmiuix/preference/flexible/AbstractBaseTemplate;

    invoke-virtual {v1, v7}, Lmiuix/preference/flexible/AbstractBaseTemplate;->storeVisibilityBeforeUpdate(Landroidx/preference/PreferenceViewHolder;)V

    .line 235
    :cond_0
    invoke-super/range {p0 .. p2}, Landroidx/preference/PreferenceGroupAdapter;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V

    .line 236
    iget-object v1, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v10, 0x0

    invoke-static {v1, v10}, Lmiuix/view/CompatViewMethod;->setForceDarkAllowed(Landroid/view/View;Z)V

    .line 237
    invoke-virtual {v0, v8}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    move-result-object v11

    .line 238
    instance-of v1, v11, Lmiuix/preference/PreferenceAccessibility;

    if-eqz v1, :cond_1

    move-object v1, v11

    check-cast v1, Lmiuix/preference/PreferenceAccessibility;

    invoke-interface {v1}, Lmiuix/preference/PreferenceAccessibility;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 239
    :cond_1
    invoke-direct {v0, v11, v7}, Lmiuix/preference/PreferenceGroupAdapter;->handleAccessibility(Landroidx/preference/Preference;Landroidx/preference/PreferenceViewHolder;)V

    .line 241
    :cond_2
    instance-of v1, v11, Lmiuix/preference/DropDownPreference;

    const/4 v2, 0x1

    xor-int/lit8 v12, v1, 0x1

    if-eqz v12, :cond_3

    .line 243
    iget-object v1, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 245
    :cond_3
    iget-boolean v1, v0, Lmiuix/preference/PreferenceGroupAdapter;->mItemSelectable:Z

    if-eqz v1, :cond_5

    .line 246
    iget-object v1, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mSelectedPreference:Landroidx/preference/Preference;

    if-ne v11, v3, :cond_4

    move v3, v2

    goto :goto_0

    :cond_4
    move v3, v10

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setActivated(Z)V

    goto :goto_1

    .line 248
    :cond_5
    iget-object v1, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v10}, Landroid/view/View;->setActivated(Z)V

    .line 251
    :goto_1
    iget-object v1, v0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    aget-object v3, v1, v8

    if-eqz v3, :cond_6

    aget-object v1, v1, v8

    iget v1, v1, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->type:I

    goto :goto_2

    :cond_6
    const/4 v1, -0x1

    .line 253
    :goto_2
    invoke-direct {v0, v11, v8}, Lmiuix/preference/PreferenceGroupAdapter;->getPreferenceDescriptor(Landroidx/preference/Preference;I)I

    move-result v13

    .line 254
    iget-boolean v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mIsDisableAllCard:Z

    if-nez v3, :cond_9

    invoke-direct {v0, v13, v11}, Lmiuix/preference/PreferenceGroupAdapter;->isNeedSetOutline(ILandroidx/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 255
    iget v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskRadius:I

    int-to-float v3, v3

    if-eq v1, v13, :cond_7

    move v4, v2

    goto :goto_3

    :cond_7
    move v4, v10

    .line 256
    :goto_3
    iget-object v1, v0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getAddDuration()J

    move-result-wide v1

    goto :goto_4

    :cond_8
    const-wide/16 v1, 0x0

    :goto_4
    move-wide v5, v1

    move-object/from16 v1, p1

    move v2, v13

    .line 255
    invoke-static/range {v1 .. v6}, Lmiuix/recyclerview/card/base/ViewOutlineHelper;->setItemCardOutline(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IFZJ)V

    :cond_9
    if-nez v11, :cond_a

    return-void

    .line 261
    :cond_a
    iget v1, v0, Lmiuix/preference/PreferenceGroupAdapter;->mExtraHorizontalPadding:I

    .line 263
    iget-boolean v2, v0, Lmiuix/preference/PreferenceGroupAdapter;->mIsEnableCardStyle:Z

    if-nez v2, :cond_12

    .line 264
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 265
    instance-of v3, v11, Landroidx/preference/PreferenceGroup;

    if-nez v3, :cond_b

    .line 266
    invoke-virtual {v11}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v3

    instance-of v3, v3, Lmiuix/preference/RadioSetPreferenceCategory;

    if-nez v3, :cond_b

    .line 267
    invoke-virtual {v11}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v3

    instance-of v3, v3, Lmiuix/preference/RadioButtonPreferenceCategory;

    if-nez v3, :cond_b

    instance-of v3, v11, Lmiuix/preference/RadioButtonPreference;

    if-eqz v3, :cond_c

    :cond_b
    instance-of v3, v11, Landroidx/preference/PreferenceScreen;

    if-eqz v3, :cond_f

    :cond_c
    if-eqz v2, :cond_19

    .line 271
    iget-object v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 272
    iget-object v2, v0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 273
    iget v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mCardMarginEnd:I

    goto :goto_5

    :cond_d
    iget v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mCardMarginStart:I

    :goto_5
    if-eqz v2, :cond_e

    .line 274
    iget v2, v0, Lmiuix/preference/PreferenceGroupAdapter;->mCardMarginStart:I

    goto :goto_6

    :cond_e
    iget v2, v0, Lmiuix/preference/PreferenceGroupAdapter;->mCardMarginEnd:I

    .line 275
    :goto_6
    iget-object v4, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v5, v0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v3

    add-int/2addr v6, v1

    iget v3, v5, Landroid/graphics/Rect;->top:I

    iget v14, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v2

    add-int/2addr v14, v1

    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v6, v3, v14, v2}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_b

    .line 279
    :cond_f
    instance-of v3, v11, Landroidx/preference/PreferenceCategory;

    if-eqz v3, :cond_11

    if-eqz v2, :cond_19

    .line 281
    instance-of v3, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_10

    .line 282
    move-object v14, v2

    check-cast v14, Landroid/graphics/drawable/LayerDrawable;

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move/from16 v16, v1

    move/from16 v18, v1

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 285
    new-instance v3, Lmiuix/internal/graphics/drawable/TaggingDrawable;

    invoke-direct {v3, v2}, Lmiuix/internal/graphics/drawable/TaggingDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 286
    iget-object v4, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 287
    iget-object v4, v0, Lmiuix/preference/PreferenceGroupAdapter;->mDescriptors:[Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;

    aget-object v4, v4, v8

    iget-object v4, v4, Lmiuix/preference/PreferenceGroupAdapter$PositionDescriptor;->status:[I

    if-eqz v4, :cond_10

    .line 289
    invoke-virtual {v3, v4}, Lmiuix/internal/graphics/drawable/TaggingDrawable;->setTaggingState([I)Z

    .line 292
    :cond_10
    iget-object v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 293
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v1

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_b

    :cond_11
    if-eqz v2, :cond_19

    .line 300
    iget-object v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 301
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_b

    .line 306
    :cond_12
    instance-of v2, v11, Landroidx/preference/PreferenceScreen;

    if-eqz v2, :cond_15

    .line 307
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 309
    iget-object v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 310
    iget-object v2, v0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 311
    iget v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mCardMarginEnd:I

    goto :goto_7

    :cond_13
    iget v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mCardMarginStart:I

    :goto_7
    if-eqz v2, :cond_14

    .line 312
    iget v2, v0, Lmiuix/preference/PreferenceGroupAdapter;->mCardMarginStart:I

    goto :goto_8

    :cond_14
    iget v2, v0, Lmiuix/preference/PreferenceGroupAdapter;->mCardMarginEnd:I

    .line 313
    :goto_8
    iget-object v4, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v5, v0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v3

    add-int/2addr v6, v1

    iget v3, v5, Landroid/graphics/Rect;->top:I

    iget v14, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v2

    add-int/2addr v14, v1

    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v6, v3, v14, v2}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_b

    .line 317
    :cond_15
    instance-of v2, v11, Landroidx/preference/PreferenceCategory;

    if-eqz v2, :cond_16

    .line 318
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 320
    iget-object v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 321
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v1

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v1

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_b

    .line 325
    :cond_16
    instance-of v2, v11, Lmiuix/preference/PreferenceStyle;

    if-eqz v2, :cond_19

    move-object v2, v11

    check-cast v2, Lmiuix/preference/PreferenceStyle;

    invoke-interface {v2}, Lmiuix/preference/PreferenceStyle;->enabledCardStyle()Z

    move-result v2

    if-nez v2, :cond_19

    .line 326
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 328
    iget-object v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 329
    iget-object v2, v0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 330
    iget v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mCardMarginEnd:I

    goto :goto_9

    :cond_17
    iget v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mCardMarginStart:I

    :goto_9
    if-eqz v2, :cond_18

    .line 331
    iget v2, v0, Lmiuix/preference/PreferenceGroupAdapter;->mCardMarginStart:I

    goto :goto_a

    :cond_18
    iget v2, v0, Lmiuix/preference/PreferenceGroupAdapter;->mCardMarginEnd:I

    .line 332
    :goto_a
    iget-object v4, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v5, v0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v3

    add-int/2addr v6, v1

    iget v3, v5, Landroid/graphics/Rect;->top:I

    iget v14, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v2

    add-int/2addr v14, v1

    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v6, v3, v14, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 340
    :cond_19
    :goto_b
    invoke-virtual {v11}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v2

    instance-of v2, v2, Lmiuix/preference/RadioSetPreferenceCategory;

    if-eqz v2, :cond_1b

    instance-of v2, v11, Lmiuix/preference/RadioButtonPreference;

    if-nez v2, :cond_1b

    .line 342
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 344
    iget-object v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 345
    iget-object v2, v0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-static {v2}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 346
    iget-object v2, v0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, v0, Lmiuix/preference/PreferenceGroupAdapter;->mRadioSetItemPaddingStartExtra:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_c

    .line 348
    :cond_1a
    iget-object v2, v0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v0, Lmiuix/preference/PreferenceGroupAdapter;->mRadioSetItemPaddingStartExtra:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 350
    :goto_c
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mTempBgPadding:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v4, v5, v6, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 354
    :cond_1b
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v3, Lmiuix/preference/R$id;->arrow_right:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1d

    .line 356
    invoke-direct {v0, v11}, Lmiuix/preference/PreferenceGroupAdapter;->isArrowRightVisible(Landroidx/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_1c

    move v3, v10

    goto :goto_d

    :cond_1c
    const/16 v3, 0x8

    :goto_d
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 358
    :cond_1d
    invoke-direct {v0, v11}, Lmiuix/preference/PreferenceGroupAdapter;->ableToUseFolmeAnim(Landroidx/preference/Preference;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 360
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sget v3, Lmiuix/preference/R$id;->miuix_preference_navigation:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_20

    .line 361
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1f

    .line 362
    invoke-virtual {v11}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lmiuix/preference/R$attr;->preferenceItemForeground:I

    invoke-static {v2, v3}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 363
    instance-of v3, v2, Lcom/miui/support/drawable/CardStateDrawable;

    if-eqz v3, :cond_1e

    .line 365
    invoke-direct {v0, v13, v11}, Lmiuix/preference/PreferenceGroupAdapter;->isNeedSetOutline(ILandroidx/preference/Preference;)Z

    move-result v3

    .line 369
    move-object v3, v2

    check-cast v3, Lcom/miui/support/drawable/CardStateDrawable;

    invoke-virtual {v3, v10}, Lcom/miui/support/drawable/CardStateDrawable;->setRadius(I)V

    .line 371
    move-object v3, v2

    check-cast v3, Lcom/miui/support/drawable/CardStateDrawable;

    invoke-virtual {v3, v10, v10, v10, v10}, Lcom/miui/support/drawable/CardStateDrawable;->setInset(IIII)V

    .line 372
    iget-object v4, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {v0, v4, v3, v11}, Lmiuix/preference/PreferenceGroupAdapter;->setPreferenceItemForegroundForHighLightChild(Landroid/view/View;Lcom/miui/support/drawable/CardStateDrawable;Landroidx/preference/Preference;)Z

    .line 374
    :cond_1e
    iget-object v3, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v12, :cond_25

    .line 376
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mItemTouchOnDownListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_10

    .line 380
    :cond_1f
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 381
    instance-of v3, v2, Lcom/miui/support/drawable/CardStateDrawable;

    if-eqz v3, :cond_25

    .line 382
    move-object v3, v2

    check-cast v3, Lcom/miui/support/drawable/CardStateDrawable;

    invoke-virtual {v3, v10, v10, v10, v10}, Lcom/miui/support/drawable/CardStateDrawable;->setInset(IIII)V

    .line 383
    iget-object v4, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {v0, v4, v3, v11}, Lmiuix/preference/PreferenceGroupAdapter;->setPreferenceItemForegroundForHighLightChild(Landroid/view/View;Lcom/miui/support/drawable/CardStateDrawable;Landroidx/preference/Preference;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 384
    iget-object v3, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_10

    .line 410
    :cond_20
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_23

    .line 412
    invoke-virtual {v11}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lmiuix/preference/R$attr;->navigationPreferenceItemForeground:I

    invoke-static {v2, v3}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 413
    instance-of v3, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_22

    .line 414
    iget-boolean v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mIsEnableCardStyle:Z

    if-eqz v3, :cond_21

    move/from16 v18, v10

    goto :goto_e

    :cond_21
    move/from16 v18, v1

    .line 415
    :goto_e
    move-object v14, v2

    check-cast v14, Landroid/graphics/drawable/LayerDrawable;

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move/from16 v16, v18

    invoke-virtual/range {v14 .. v19}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 417
    :cond_22
    iget-object v3, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    if-eqz v12, :cond_25

    .line 419
    iget-object v2, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mItemTouchOnDownListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_10

    .line 422
    :cond_23
    instance-of v3, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_25

    .line 423
    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 424
    iget-boolean v3, v0, Lmiuix/preference/PreferenceGroupAdapter;->mIsEnableCardStyle:Z

    if-eqz v3, :cond_24

    move/from16 v18, v10

    goto :goto_f

    :cond_24
    move/from16 v18, v1

    :goto_f
    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object v14, v2

    move/from16 v16, v18

    .line 425
    invoke-virtual/range {v14 .. v19}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 426
    invoke-virtual {v2}, Landroid/graphics/drawable/LayerDrawable;->invalidateSelf()V

    .line 434
    :cond_25
    :goto_10
    invoke-virtual {v0, v7, v8, v13, v11}, Lmiuix/preference/PreferenceGroupAdapter;->checkHighlight(Landroidx/preference/PreferenceViewHolder;IILandroidx/preference/Preference;)V

    .line 435
    instance-of v0, v11, Lmiuix/preference/PreferenceExtraPadding;

    if-eqz v0, :cond_26

    .line 436
    check-cast v11, Lmiuix/preference/PreferenceExtraPadding;

    invoke-interface {v11, v7, v1}, Lmiuix/preference/PreferenceExtraPadding;->onPreferenceExtraPadding(Landroidx/preference/PreferenceViewHolder;I)V

    :cond_26
    if-eqz v9, :cond_27

    .line 441
    iget-object v0, v7, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lmiuix/flexible/view/HyperCellLayout;

    invoke-virtual {v0}, Lmiuix/flexible/view/HyperCellLayout;->getTemplate()Lmiuix/flexible/template/IHyperCellTemplate;

    move-result-object v0

    .line 442
    instance-of v1, v0, Lmiuix/preference/flexible/AbstractBaseTemplate;

    if-eqz v1, :cond_27

    .line 443
    check-cast v0, Lmiuix/preference/flexible/AbstractBaseTemplate;

    invoke-virtual {v0, v7}, Lmiuix/preference/flexible/AbstractBaseTemplate;->refreshLayoutIfVisibleChanged(Landroidx/preference/PreferenceViewHolder;)V

    :cond_27
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 56
    check-cast p1, Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p0, p1, p2}, Lmiuix/preference/PreferenceGroupAdapter;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;I)V

    return-void
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 928
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 929
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mObserver:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    const/4 p1, 0x0

    .line 930
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public onExtraPaddingChanged(I)V
    .locals 0

    .line 196
    iput p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mExtraHorizontalPadding:I

    .line 197
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;)V
    .locals 1

    .line 984
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->onPreferenceChange(Landroidx/preference/Preference;)V

    .line 985
    invoke-virtual {p1}, Landroidx/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object p0

    .line 986
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 987
    invoke-virtual {p1}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 989
    instance-of v0, p1, Landroidx/preference/PreferenceCategory;

    if-eqz v0, :cond_1

    .line 990
    instance-of v0, p0, Landroidx/preference/TwoStatePreference;

    if-eqz v0, :cond_0

    .line 991
    check-cast p0, Landroidx/preference/TwoStatePreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 993
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 996
    :cond_1
    invoke-virtual {p1}, Landroidx/preference/Preference;->isEnabled()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onPreferenceVisibilityChange(Landroidx/preference/Preference;)V
    .locals 1

    .line 969
    invoke-super {p0, p1}, Landroidx/preference/PreferenceGroupAdapter;->onPreferenceVisibilityChange(Landroidx/preference/Preference;)V

    .line 971
    instance-of v0, p1, Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_1

    .line 972
    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object v0

    instance-of v0, v0, Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 976
    :cond_0
    invoke-virtual {p1}, Landroidx/preference/Preference;->getParent()Landroidx/preference/PreferenceGroup;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 977
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mAnimatorPreferenceGroups:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 978
    iget-object p0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mAnimatorPreferenceGroups:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 549
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 550
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->stopHighlight(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 56
    check-cast p1, Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->onViewDetachedFromWindow(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Landroidx/preference/PreferenceViewHolder;)V
    .locals 0

    .line 543
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 544
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->stopHighlight(Landroid/view/View;)V

    return-void
.end method

.method public bridge synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 56
    check-cast p1, Landroidx/preference/PreferenceViewHolder;

    invoke-virtual {p0, p1}, Lmiuix/preference/PreferenceGroupAdapter;->onViewRecycled(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public setClipPaint(Landroid/graphics/Paint;IIIII)V
    .locals 0

    .line 172
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mClipPaint:Landroid/graphics/Paint;

    .line 173
    iput p2, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingTop:I

    .line 174
    iput p3, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingBottom:I

    .line 175
    iput p4, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingStart:I

    .line 176
    iput p5, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskPaddingEnd:I

    .line 177
    iput p6, p0, Lmiuix/preference/PreferenceGroupAdapter;->mMaskRadius:I

    return-void
.end method

.method public setExtraHorizontalPadding(I)Z
    .locals 1

    .line 182
    iget v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mExtraHorizontalPadding:I

    if-eq v0, p1, :cond_0

    .line 183
    iput p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mExtraHorizontalPadding:I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setItemSelectable(Z)V
    .locals 0

    .line 201
    iput-boolean p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mItemSelectable:Z

    return-void
.end method

.method public setSelectedPreference(Landroidx/preference/Preference;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mSelectedPreference:Landroidx/preference/Preference;

    .line 206
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public stopHighlight()V
    .locals 1

    .line 554
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightItemView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 555
    invoke-virtual {p0, v0}, Lmiuix/preference/PreferenceGroupAdapter;->stopHighlight(Landroid/view/View;)V

    .line 556
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

    if-eqz v0, :cond_0

    .line 557
    invoke-virtual {v0, p0}, Lmiuix/animation/controller/FolmeBlink;->detach(Lmiuix/animation/internal/BlinkStateObserver;)V

    :cond_0
    const/4 v0, 0x0

    .line 559
    iput-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

    const/4 v0, 0x0

    .line 560
    iput-boolean v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mNeedCancelHighlightRequest:Z

    :cond_1
    return-void
.end method

.method public stopHighlight(Landroid/view/View;)V
    .locals 3

    .line 628
    invoke-virtual {p0}, Lmiuix/preference/PreferenceGroupAdapter;->isHighlightRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget v1, Lmiuix/preference/R$id;->preference_highlighted:I

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v2, 0x0

    aput-object p1, v0, v2

    .line 631
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IFolme;->blink()Lmiuix/animation/IBlinkStyle;

    move-result-object v0

    invoke-interface {v0}, Lmiuix/animation/IBlinkStyle;->stopBlink()V

    .line 632
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 633
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightItemView:Landroid/view/View;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_1

    .line 634
    iput-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightItemView:Landroid/view/View;

    :cond_1
    const/4 p1, -0x1

    .line 636
    iput p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mHighlightPosition:I

    .line 637
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    .line 638
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mItemTouchOnHighlightListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 639
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 640
    iput-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mItemTouchOnHighlightListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 641
    iput-object v1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mParentTouchOnHighlightListener:Landroid/view/View$OnTouchListener;

    :cond_2
    :goto_0
    return-void
.end method

.method public updateBlinkState(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 940
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_0

    .line 941
    iget-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mItemTouchOnHighlightListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 942
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 943
    iput-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mItemTouchOnHighlightListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 944
    iput-object v0, p0, Lmiuix/preference/PreferenceGroupAdapter;->mParentTouchOnHighlightListener:Landroid/view/View$OnTouchListener;

    .line 945
    iget-object p1, p0, Lmiuix/preference/PreferenceGroupAdapter;->mFolmeBlink:Lmiuix/animation/controller/FolmeBlink;

    if-eqz p1, :cond_0

    .line 946
    invoke-virtual {p1, p0}, Lmiuix/animation/controller/FolmeBlink;->detach(Lmiuix/animation/internal/BlinkStateObserver;)V

    :cond_0
    return-void
.end method
