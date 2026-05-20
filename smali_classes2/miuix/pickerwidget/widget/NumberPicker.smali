.class public Lmiuix/pickerwidget/widget/NumberPicker;
.super Landroid/widget/LinearLayout;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;,
        Lmiuix/pickerwidget/widget/NumberPicker$CustomEditText;,
        Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;,
        Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;,
        Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;,
        Lmiuix/pickerwidget/widget/NumberPicker$InputTextFilter;,
        Lmiuix/pickerwidget/widget/NumberPicker$Formatter;,
        Lmiuix/pickerwidget/widget/NumberPicker$OnScrollListener;,
        Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;,
        Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;,
        Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I

.field private static final DIGIT_CHARACTERS:[C

.field private static final PRESSED_STATE_SET:[I

.field static final TWO_DIGIT_FORMATTER:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

.field private static final sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private MARGIN_LABEL_LEFT:I

.field private MARGIN_LABEL_TOP:I

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedMaxText:Ljava/lang/String;

.field private mDisplayedMaxTextWidth:F

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

.field private final mHasSelectorWheel:Z

.field private final mId:I

.field private mIncrementVirtualButtonPressed:Z

.field private mIngonreMoveEvents:Z

.field private mInitialScrollOffset:I

.field private final mInputText:Landroid/widget/EditText;

.field private mLabel:Ljava/lang/CharSequence;

.field private mLabelPaint:Landroid/graphics/Paint;

.field private mLabelTextColor:I

.field private mLabelTextSize:I

.field private mLabelTextSizeThreshold:F

.field private mLabelTextSizeTrimFactor:F

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLongPressUpdateInterval:J

.field private mMaxFlingSpeedFactor:F

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private mMeasureBackgroundEnabled:Z

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mModDevice:Ljava/lang/String;

.field private mOnScrollListener:Lmiuix/pickerwidget/widget/NumberPicker$OnScrollListener;

.field private mOnValueChangeListener:Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;

.field private mOriginLabelTextSize:I

.field private mOriginTextSizeHighlight:I

.field private mOriginTextSizeHint:I

.field private final mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private final mSelectionDividerHeight:I

.field private final mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

.field private mShowSoftInputOnTap:Z

.field private mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

.field private mTextColorHighlight:I

.field private mTextColorHint:I

.field private mTextPadding:I

.field private final mTextSize:I

.field private mTextSizeHighlight:I

.field private mTextSizeHint:I

.field private mTextSizeThreshold:F

.field private mTextSizeTrimFactor:F

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mUpdateText:Ljava/lang/String;

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWrapSelectorWheel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 131
    sget v0, Lmiuix/pickerwidget/R$layout;->miuix_appcompat_number_picker_layout:I

    sput v0, Lmiuix/pickerwidget/widget/NumberPicker;->DEFAULT_LAYOUT_RESOURCE_ID:I

    .line 141
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lmiuix/pickerwidget/widget/NumberPicker;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 156
    new-instance v0, Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Lmiuix/pickerwidget/widget/NumberPicker$NumberFormatter;-><init>(I)V

    sput-object v0, Lmiuix/pickerwidget/widget/NumberPicker;->TWO_DIGIT_FORMATTER:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const v2, 0x10100a7

    aput v2, v0, v1

    .line 532
    sput-object v0, Lmiuix/pickerwidget/widget/NumberPicker;->PRESSED_STATE_SET:[I

    const/16 v0, 0xa

    new-array v0, v0, [C

    .line 2205
    fill-array-data v0, :array_0

    sput-object v0, Lmiuix/pickerwidget/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 636
    sget v0, Lmiuix/pickerwidget/R$attr;->numberPickerStyle:I

    invoke-direct {p0, p1, p2, v0}, Lmiuix/pickerwidget/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 647
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 143
    sget-object v0, Lmiuix/pickerwidget/widget/NumberPicker;->sIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mId:I

    const/4 v0, 0x1

    .line 145
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    const/4 v1, 0x2

    .line 146
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_TOP:I

    const/16 v1, 0x190

    .line 293
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    const-wide/16 v1, 0x12c

    .line 348
    iput-wide v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLongPressUpdateInterval:J

    .line 353
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    const/4 v1, 0x3

    new-array v1, v1, [I

    .line 358
    iput-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    const/high16 v1, -0x80000000

    .line 373
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    const/4 v1, 0x0

    .line 464
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    const/4 v1, -0x1

    .line 515
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    const v2, 0x3f733333    # 0.95f

    .line 592
    iput v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeTrimFactor:F

    const v2, 0x3f4ccccd    # 0.8f

    .line 597
    iput v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSizeTrimFactor:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 612
    iput v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxFlingSpeedFactor:F

    .line 617
    iput-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMeasureBackgroundEnabled:Z

    .line 648
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 650
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lmiuix/pickerwidget/R$dimen;->miuix_appcompat_number_picker_label_margin_left:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    .line 651
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lmiuix/pickerwidget/R$dimen;->miuix_appcompat_number_picker_label_margin_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_TOP:I

    .line 653
    invoke-direct {p0, p2, p3}, Lmiuix/pickerwidget/widget/NumberPicker;->parseStyle(Landroid/util/AttributeSet;I)V

    .line 655
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initSoundPlayer()V

    .line 657
    iput-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    .line 661
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 p3, 0x40000000    # 2.0f

    .line 659
    invoke-static {v0, p3, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    float-to-int p2, p2

    .line 662
    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectionDividerHeight:I

    const/high16 p2, 0x42340000    # 45.0f

    mul-float/2addr p2, v2

    float-to-int p2, p2

    .line 664
    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectionDividersDistance:I

    .line 666
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinHeight:I

    const/high16 p2, 0x434a0000    # 202.0f

    mul-float/2addr v2, p2

    float-to-int p2, v2

    .line 668
    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxHeight:I

    .line 675
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinWidth:I

    .line 677
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    .line 683
    iput-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mComputeMaxWidth:Z

    .line 685
    new-instance p2, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    invoke-direct {p2, p0}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    iput-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    xor-int p2, v0, v0

    .line 692
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 694
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "layout_inflater"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    .line 696
    sget p3, Lmiuix/pickerwidget/R$layout;->miuix_appcompat_number_picker_layout:I

    invoke-virtual {p2, p3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 699
    sget p2, Lmiuix/pickerwidget/R$id;->number_picker_input:I

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    .line 700
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initInputText()V

    .line 701
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initThreshHolds()V

    .line 704
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 705
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p3

    iput p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTouchSlop:I

    .line 706
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p3

    iput p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinimumFlingVelocity:I

    .line 707
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaximumFlingVelocity:I

    .line 709
    invoke-virtual {p2}, Landroid/widget/EditText;->getTextSize()F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSize:I

    .line 712
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initSelectorWheelPaint()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 713
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initLabelPaint()V

    .line 716
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p1, p2, p3, v0}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 717
    new-instance p1, Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40200000    # 2.5f

    invoke-direct {p3, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct {p1, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 719
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    .line 722
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getImportantForAccessibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 723
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lmiuix/pickerwidget/widget/NumberPicker;)Landroid/widget/EditText;
    .locals 0

    .line 76
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1000(Lmiuix/pickerwidget/widget/NumberPicker;II)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Lmiuix/pickerwidget/widget/NumberPicker;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic access$1100(Lmiuix/pickerwidget/widget/NumberPicker;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p0
.end method

.method static synthetic access$1102(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1180(Lmiuix/pickerwidget/widget/NumberPicker;I)Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1200(Lmiuix/pickerwidget/widget/NumberPicker;)I
    .locals 0

    .line 76
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    return p0
.end method

.method static synthetic access$1300(Lmiuix/pickerwidget/widget/NumberPicker;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p0
.end method

.method static synthetic access$1302(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1380(Lmiuix/pickerwidget/widget/NumberPicker;I)Z
    .locals 1

    .line 76
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    xor-int/2addr p1, v0

    int-to-byte p1, p1

    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1400(Lmiuix/pickerwidget/widget/NumberPicker;)I
    .locals 0

    .line 76
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTopSelectionDividerTop:I

    return p0
.end method

.method static synthetic access$1500(Lmiuix/pickerwidget/widget/NumberPicker;Z)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$1600(Lmiuix/pickerwidget/widget/NumberPicker;)J
    .locals 2

    .line 76
    iget-wide v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$1702(Lmiuix/pickerwidget/widget/NumberPicker;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIngonreMoveEvents:Z

    return p1
.end method

.method static synthetic access$200(Lmiuix/pickerwidget/widget/NumberPicker;Landroid/view/View;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600()[C
    .locals 1

    .line 76
    sget-object v0, Lmiuix/pickerwidget/widget/NumberPicker;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$700(Lmiuix/pickerwidget/widget/NumberPicker;)[Ljava/lang/String;
    .locals 0

    .line 76
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lmiuix/pickerwidget/widget/NumberPicker;Ljava/lang/String;)I
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lmiuix/pickerwidget/widget/NumberPicker;)I
    .locals 0

    .line 76
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    return p0
.end method

.method private changeValueByOne(Z)V
    .locals 13

    .line 1869
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    if-eqz v0, :cond_2

    .line 1870
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1871
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1872
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    :cond_0
    const/4 v0, 0x0

    .line 1874
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    if-eqz p1, :cond_1

    .line 1876
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    neg-int v5, p1

    const/16 v6, 0x12c

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1878
    :cond_1
    iget-object v7, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v11, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    const/16 v12, 0x12c

    invoke-virtual/range {v7 .. v12}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1880
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 1883
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    add-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    goto :goto_1

    .line 1885
    :cond_3
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    sub-int/2addr p1, v0

    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    :goto_1
    return-void
.end method

.method private decrementSelectorIndices([I)V
    .locals 3

    .line 2000
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    .line 2001
    array-length v0, p1

    sub-int/2addr v0, v1

    invoke-static {p1, v2, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2003
    :cond_0
    aget v0, p1, v1

    sub-int/2addr v0, v1

    .line 2004
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    if-ge v0, v1, :cond_1

    .line 2005
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 2007
    :cond_1
    aput v0, p1, v2

    .line 2008
    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private drawLabelText(Landroid/graphics/Canvas;FFF)V
    .locals 2

    .line 1679
    iget-object p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_1

    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->isInternationalBuild()Z

    move-result p4

    if-nez p4, :cond_1

    .line 1680
    iget-object p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p4

    .line 1681
    invoke-static {p0}, Landroidx/appcompat/widget/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    .line 1682
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    div-float/2addr v0, v1

    sub-float/2addr p2, v0

    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    int-to-float v0, v0

    sub-float/2addr p2, v0

    sub-float/2addr p2, p4

    const/4 p4, 0x0

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_0

    .line 1684
    :cond_0
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    div-float/2addr v0, v1

    add-float/2addr p2, v0

    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    int-to-float v0, v0

    add-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p4

    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 1686
    :goto_0
    iget p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    int-to-float p4, p4

    div-float/2addr p4, v1

    sub-float/2addr p3, p4

    iget p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    int-to-float p4, p4

    div-float/2addr p4, v1

    add-float/2addr p3, p4

    iget p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_TOP:I

    int-to-float p4, p4

    add-float/2addr p3, p4

    .line 1687
    iget-object p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p4

    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4, p2, p3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private drawScrollValue(Landroid/graphics/Canvas;FF)F
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 1645
    iget v3, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    int-to-float v3, v3

    .line 1646
    iget-object v4, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1647
    iget-object v5, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    .line 1648
    array-length v6, v5

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v6, :cond_4

    aget v9, v5, v8

    .line 1649
    invoke-virtual {v4, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    sub-float v10, p3, v3

    .line 1650
    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    iget v11, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    .line 1651
    iget v11, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    int-to-float v12, v11

    .line 1652
    iget v13, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeThreshold:F

    cmpl-float v12, v12, v13

    const/high16 v14, 0x3f800000    # 1.0f

    if-lez v12, :cond_0

    float-to-int v11, v13

    goto :goto_1

    .line 1655
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v12

    int-to-float v12, v12

    iget-object v13, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v13

    div-float/2addr v12, v13

    cmpg-float v13, v12, v14

    if-gez v13, :cond_1

    .line 1657
    iget v11, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    int-to-float v11, v11

    mul-float/2addr v11, v12

    float-to-int v11, v11

    .line 1660
    :cond_1
    :goto_1
    iget v12, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHint:I

    int-to-float v13, v11

    const v15, 0x3f59999a    # 0.85f

    mul-float/2addr v13, v15

    float-to-int v13, v13

    if-le v12, v13, :cond_2

    move v12, v13

    .line 1665
    :cond_2
    invoke-direct {v0, v10, v11, v12}, Lmiuix/pickerwidget/widget/NumberPicker;->getTextSize(FII)F

    move-result v11

    .line 1666
    iget-object v13, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v13, v11}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1667
    iget-object v13, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v15, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextColorHint:I

    invoke-direct {v0, v10, v15, v7}, Lmiuix/pickerwidget/widget/NumberPicker;->getAlphaGradient(FIZ)I

    move-result v15

    invoke-virtual {v13, v15}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v12, v12

    sub-float/2addr v11, v12

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v11, v12

    add-float/2addr v11, v3

    .line 1668
    iget-object v12, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v2, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    cmpg-float v12, v10, v14

    if-gez v12, :cond_3

    .line 1670
    iget-object v12, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v13, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextColorHighlight:I

    const/4 v14, 0x1

    invoke-direct {v0, v10, v13, v14}, Lmiuix/pickerwidget/widget/NumberPicker;->getAlphaGradient(FIZ)I

    move-result v10

    invoke-virtual {v12, v10}, Landroid/graphics/Paint;->setColor(I)V

    .line 1671
    iget-object v10, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v2, v11, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1673
    :cond_3
    iget v9, v0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    int-to-float v9, v9

    add-float/2addr v3, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 3

    .line 2016
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 2017
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    return-void

    .line 2021
    :cond_0
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    if-lt p1, v1, :cond_3

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    if-le p1, v2, :cond_1

    goto :goto_0

    .line 2024
    :cond_1
    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v2, :cond_2

    sub-int p0, p1, v1

    .line 2026
    aget-object p0, v2, p0

    goto :goto_1

    .line 2028
    :cond_2
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    :goto_0
    const-string p0, ""

    .line 2031
    :goto_1
    invoke-virtual {v0, p1, p0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 7

    .line 2283
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2285
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    .line 2286
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v3, v2, 0x2

    if-le v1, v3, :cond_1

    if-lez v0, :cond_0

    neg-int v2, v2

    :cond_0
    add-int/2addr v0, v2

    :cond_1
    move v5, v0

    .line 2289
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0x320

    invoke-virtual/range {v1 .. v6}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2290
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method private fling(I)V
    .locals 10

    const/4 v0, 0x0

    .line 1956
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    if-lez p1, :cond_0

    .line 1959
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0

    .line 1961
    :cond_0
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const v9, 0x7fffffff

    move v5, p1

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1964
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 0

    .line 2035
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFormatter:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker$Formatter;->format(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lmiuix/pickerwidget/internal/util/SimpleNumberFormatter;->format(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getAlphaGradient(FIZ)I
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    return p2

    :cond_0
    if-eqz p3, :cond_1

    neg-float p0, p1

    .line 1713
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p0, p1

    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p0, p1

    float-to-int p0, p0

    goto :goto_0

    .line 1714
    :cond_1
    invoke-static {p2}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p1, p0

    float-to-int p0, p1

    :goto_0
    const p1, 0xffffff

    and-int/2addr p1, p2

    shl-int/lit8 p0, p0, 0x18

    or-int/2addr p0, p1

    return p0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2

    .line 2158
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2160
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 2165
    :goto_0
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 2167
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2168
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2169
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    add-int/2addr p0, v0

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2178
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    .line 2184
    :catch_0
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    return p0
.end method

.method private getTextSize(FII)F
    .locals 0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    int-to-float p0, p3

    return p0

    :cond_0
    sub-int/2addr p3, p2

    int-to-float p0, p3

    mul-float/2addr p1, p0

    int-to-float p0, p2

    add-float/2addr p1, p0

    return p1
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 1

    .line 1971
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    if-le p1, v0, :cond_0

    .line 1972
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    sub-int/2addr p1, v0

    sub-int/2addr v0, p0

    rem-int/2addr p1, v0

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, -0x1

    return p0

    .line 1973
    :cond_0
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    if-ge p1, p0, :cond_1

    sub-int p1, p0, p1

    sub-int p0, v0, p0

    .line 1974
    rem-int/2addr p1, p0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    return p1
.end method

.method private incrementSelectorIndices([I)V
    .locals 3

    .line 1984
    array-length v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    .line 1985
    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-static {p1, v1, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1987
    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x2

    aget v0, p1, v0

    add-int/2addr v0, v1

    .line 1988
    iget-boolean v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    if-le v0, v2, :cond_1

    .line 1989
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 1991
    :cond_1
    array-length v2, p1

    sub-int/2addr v2, v1

    aput v0, p1, v2

    .line 1992
    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    return-void
.end method

.method private initInputText()V
    .locals 4

    .line 757
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    new-instance v1, Lmiuix/pickerwidget/widget/NumberPicker$1;

    invoke-direct {v1, p0}, Lmiuix/pickerwidget/widget/NumberPicker$1;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 767
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Lmiuix/pickerwidget/widget/NumberPicker$InputTextFilter;

    invoke-direct {v2, p0}, Lmiuix/pickerwidget/widget/NumberPicker$InputTextFilter;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 771
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 772
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 774
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 775
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v1, 0x800003

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 776
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setScaleX(F)V

    .line 777
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setSaveEnabled(Z)V

    .line 778
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextPadding:I

    invoke-virtual {v0}, Landroid/widget/EditText;->getPaddingTop()I

    move-result v2

    iget v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextPadding:I

    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getPaddingRight()I

    move-result p0

    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/widget/EditText;->setPadding(IIII)V

    return-void
.end method

.method private initLabelPaint()V
    .locals 2

    .line 799
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 800
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 801
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 802
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 803
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    int-to-float p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method

.method private initSelectorWheelPaint()Landroid/graphics/Paint;
    .locals 3

    .line 787
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/4 v1, 0x1

    .line 788
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 789
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 790
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 791
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 792
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p0

    .line 793
    sget-object v1, Landroid/widget/LinearLayout;->ENABLED_STATE_SET:[I

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p0

    .line 794
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColor(I)V

    return-object v0
.end method

.method private initSoundPlayer()V
    .locals 2

    .line 923
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    if-nez v0, :cond_0

    const-string v0, "NumberPicker_sound_play"

    .line 924
    invoke-static {v0}, Lmiuix/pickerwidget/internal/util/async/WorkerThreads;->aquireWorker(Ljava/lang/String;)Landroid/os/Looper;

    move-result-object v0

    .line 925
    new-instance v1, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    invoke-direct {v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    .line 926
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mId:I

    invoke-virtual {v1, v0, p0}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;->init(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method private initThreshHolds()V
    .locals 2

    .line 782
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/pickerwidget/R$dimen;->miuix_label_text_size_small:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSizeThreshold:F

    .line 783
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/pickerwidget/R$dimen;->miuix_text_size_small:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeThreshold:F

    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    const/4 v0, 0x1

    .line 1912
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVerticalFadingEdgeEnabled(Z)V

    .line 1913
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setFadingEdgeLength(I)V

    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 4

    .line 1891
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1892
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    .line 1893
    array-length v1, v0

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSize:I

    mul-int/2addr v1, v2

    .line 1894
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-float v1, v2

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-gez v3, :cond_0

    move v1, v2

    .line 1898
    :cond_0
    array-length v0, v0

    int-to-float v0, v0

    div-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 1899
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorTextGapHeight:I

    .line 1900
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSize:I

    add-int/2addr v1, v0

    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    .line 1904
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getBaseline()I

    move-result v0

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    .line 1905
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    .line 1907
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1908
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .line 1821
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 1822
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    .line 1823
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    move-result v1

    const/4 v2, 0x0

    .line 1824
    :goto_0
    iget-object v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, -0x1

    add-int/2addr v3, v1

    .line 1826
    iget-boolean v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1827
    invoke-direct {p0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result v3

    .line 1829
    :cond_0
    aput v3, v0, v2

    .line 1830
    aget v3, v0, v2

    invoke-direct {p0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->ensureCachedScrollSelectorValue(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private isInternationalBuild()Z
    .locals 7

    .line 2897
    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mModDevice:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "android.os.SystemProperties"

    .line 2898
    invoke-static {v1}, Lmiuix/internal/util/ReflectUtil;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v0, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    const-string v6, "ro.product.mod_device"

    aput-object v6, v2, v4

    const-string v4, ""

    aput-object v4, v2, v5

    const-string v4, "get"

    .line 2899
    invoke-static {v1, v0, v4, v3, v2}, Lmiuix/internal/util/ReflectUtil;->callStaticObjectMethod(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mModDevice:Ljava/lang/String;

    .line 2901
    :cond_0
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mModDevice:Ljava/lang/String;

    const-string v0, "_global"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private makeMeasureSpec(II)I
    .locals 3

    const/4 p0, -0x1

    if-ne p2, p0, :cond_0

    return p1

    .line 1782
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    .line 1783
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    if-ne v0, v2, :cond_1

    return p1

    .line 1792
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown measure mode: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1790
    :cond_2
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    .line 1788
    :cond_3
    invoke-static {p0, p2}, Ljava/lang/Math;->min(II)I

    move-result p0

    invoke-static {p0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 6

    const/4 v0, 0x1

    .line 958
    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 959
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result p1

    sub-int/2addr v1, p1

    .line 960
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr p1, v1

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    rem-int/2addr p1, v2

    .line 961
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int/2addr v2, p1

    const/4 p1, 0x0

    if-eqz v2, :cond_2

    .line 963
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/lit8 v5, v4, 0x2

    if-le v3, v5, :cond_1

    if-lez v2, :cond_0

    sub-int/2addr v2, v4

    goto :goto_0

    :cond_0
    add-int/2addr v2, v4

    :cond_1
    :goto_0
    add-int/2addr v1, v2

    .line 971
    invoke-virtual {p0, p1, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->scrollBy(II)V

    return v0

    :cond_2
    return p1
.end method

.method private notifyChange(I)V
    .locals 2

    const/4 v0, 0x4

    .line 2084
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->sendAccessibilityEvent(I)V

    .line 2085
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->playSound()V

    .line 2086
    sget v0, Lmiuix/view/HapticFeedbackConstants;->MIUI_GEAR_HEAVY:I

    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_MESH_NORMAL:I

    invoke-static {p0, v0, v1}, Lmiuix/view/HapticCompat;->performHapticFeedback(Landroid/view/View;II)Z

    .line 2087
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOnValueChangeListener:Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 2088
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;->onValueChange(Lmiuix/pickerwidget/widget/NumberPicker;II)V

    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 2

    .line 1936
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_2

    .line 1940
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mUpdateText:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1941
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mUpdateText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 v0, 0x0

    .line 1943
    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mUpdateText:Ljava/lang/String;

    .line 1944
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->stopSoundPlay()V

    .line 1946
    :cond_2
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    .line 1947
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOnScrollListener:Lmiuix/pickerwidget/widget/NumberPicker$OnScrollListener;

    if-eqz v0, :cond_3

    .line 1948
    invoke-interface {v0, p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker$OnScrollListener;->onScrollStateChange(Lmiuix/pickerwidget/widget/NumberPicker;I)V

    :cond_3
    return-void
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 1

    .line 1920
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_1

    .line 1921
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    move-result p1

    if-nez p1, :cond_0

    .line 1922
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    :cond_0
    const/4 p1, 0x0

    .line 1924
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 1926
    :cond_1
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    .line 1927
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    :cond_2
    :goto_0
    return-void
.end method

.method private parseStyle(Landroid/util/AttributeSet;I)V
    .locals 4

    .line 732
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 733
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lmiuix/pickerwidget/R$styleable;->NumberPicker:[I

    sget v3, Lmiuix/pickerwidget/R$style;->Widget_NumberPicker_DayNight:I

    invoke-virtual {v1, p1, v2, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 735
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_android_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    .line 736
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_textSizeHighlight:I

    sget v1, Lmiuix/pickerwidget/R$dimen;->miuix_appcompat_number_picker_text_size_highlight_normal:I

    .line 737
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 736
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    .line 738
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_textSizeHint:I

    sget v1, Lmiuix/pickerwidget/R$dimen;->miuix_appcompat_number_picker_text_size_hint_normal:I

    .line 739
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 738
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHint:I

    .line 740
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_android_labelTextSize:I

    sget v1, Lmiuix/pickerwidget/R$dimen;->miuix_appcompat_number_picker_label_text_size:I

    .line 741
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 740
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    .line 742
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_android_textColorHighlight:I

    sget v1, Lmiuix/pickerwidget/R$color;->miuix_appcompat_default_number_picker_highlight_color:I

    .line 743
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 742
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextColorHighlight:I

    .line 744
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_android_textColorHint:I

    sget v1, Lmiuix/pickerwidget/R$color;->miuix_appcompat_default_number_picker_hint_color:I

    .line 745
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 744
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextColorHint:I

    .line 746
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_labelTextColor:I

    sget v1, Lmiuix/pickerwidget/R$color;->miuix_appcompat_number_picker_label_color:I

    .line 747
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 746
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextColor:I

    .line 748
    sget p2, Lmiuix/pickerwidget/R$styleable;->NumberPicker_labelPadding:I

    sget v1, Lmiuix/pickerwidget/R$dimen;->miuix_appcompat_number_picker_label_padding:I

    .line 749
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 748
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextPadding:I

    .line 750
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 751
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginLabelTextSize:I

    .line 752
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginTextSizeHighlight:I

    .line 753
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHint:I

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginTextSizeHint:I

    return-void
.end method

.method private playSound()V
    .locals 0

    .line 938
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    if-eqz p0, :cond_0

    .line 939
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;->play()V

    :cond_0
    return-void
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 3

    .line 2121
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    .line 2122
    new-instance v0, Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    goto :goto_0

    .line 2124
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2126
    :goto_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 1

    .line 2098
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 2099
    new-instance v0, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    goto :goto_0

    .line 2101
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2103
    :goto_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-static {v0, p1}, Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;->access$300(Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 2104
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private postSetSelectionCommand(II)V
    .locals 1

    .line 2192
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 2193
    new-instance v0, Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    invoke-direct {v0, p0}, Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;-><init>(Lmiuix/pickerwidget/widget/NumberPicker;)V

    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    goto :goto_0

    .line 2195
    :cond_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2197
    :goto_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    invoke-static {v0, p1}, Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;->access$402(Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;I)I

    .line 2198
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    invoke-static {p1, p2}, Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;->access$502(Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;I)I

    .line 2199
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private refreshWheel()V
    .locals 0

    .line 2892
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 2893
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private releaseSoundPlayer()V
    .locals 2

    .line 931
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    if-eqz v0, :cond_0

    .line 932
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mId:I

    invoke-virtual {v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;->release(I)V

    const/4 v0, 0x0

    .line 933
    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    :cond_0
    return-void
.end method

.method private removeAllCallbacks()V
    .locals 1

    .line 2142
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 2143
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2145
    :cond_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSetSelectionCommand:Lmiuix/pickerwidget/widget/NumberPicker$SetSelectionCommand;

    if-eqz v0, :cond_1

    .line 2146
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2148
    :cond_1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_2

    .line 2149
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2151
    :cond_2
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->cancel()V

    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 1

    .line 2133
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBeginSoftInputOnLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 2134
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .line 2111
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mChangeCurrentByOneFromLongPressCommand:Lmiuix/pickerwidget/widget/NumberPicker$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 2112
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 0

    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

    .line 1809
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 p1, 0x0

    .line 1810
    invoke-static {p0, p3, p1}, Landroid/widget/LinearLayout;->resolveSizeAndState(III)I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 1

    .line 1842
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eqz v0, :cond_0

    .line 1843
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getWrappedSelectorIndex(I)I

    move-result p1

    goto :goto_0

    .line 1845
    :cond_0
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1846
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1848
    :goto_0
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    if-ne v0, p1, :cond_1

    return-void

    .line 1852
    :cond_1
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 1853
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    if-eqz p2, :cond_2

    .line 1855
    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->notifyChange(I)V

    .line 1857
    :cond_2
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1858
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method private stopSoundPlay()V
    .locals 0

    .line 944
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSoundPlayHandler:Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;

    if-eqz p0, :cond_0

    .line 945
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker$SoundPlayHandler;->stop()V

    :cond_0
    return-void
.end method

.method private trimLabelTextSize(F)V
    .locals 3

    .line 1692
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getLabelWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1693
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginLabelTextSize:I

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    .line 1694
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1695
    :goto_0
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    add-float/2addr v0, p1

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getLabelWidth()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    int-to-float v1, v0

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSizeThreshold:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    int-to-float v0, v0

    .line 1697
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSizeTrimFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSize:I

    .line 1698
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 8

    .line 1309
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mComputeMaxWidth:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    .line 1315
    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1316
    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_3

    const/4 v0, 0x0

    move v1, v3

    :goto_0
    const/16 v2, 0x9

    if-ge v3, v2, :cond_2

    .line 1319
    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    cmpl-float v4, v2, v0

    if-lez v4, :cond_1

    move v0, v2

    move v1, v3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1325
    :cond_2
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    invoke-direct {p0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-float v3, v2

    mul-float/2addr v3, v0

    float-to-int v0, v3

    int-to-float v0, v0

    .line 1327
    new-array v2, v2, [C

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    .line 1328
    invoke-static {v2, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 1329
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    goto :goto_2

    .line 1331
    :cond_3
    array-length v2, v2

    :goto_1
    if-ge v3, v2, :cond_5

    .line 1333
    iget-object v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    aget-object v4, v4, v3

    .line 1334
    iget-object v5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    cmpl-float v6, v5, v1

    if-lez v6, :cond_4

    move-object v0, v4

    move v1, v5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    move v7, v1

    move-object v1, v0

    move v0, v7

    .line 1341
    :goto_2
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    .line 1342
    iput-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxText:Ljava/lang/String;

    .line 1343
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 1344
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 1345
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_7

    .line 1346
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinWidth:I

    int-to-float v2, v1

    cmpl-float v2, v0, v2

    if-lez v2, :cond_6

    float-to-int v0, v0

    .line 1347
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    goto :goto_3

    .line 1349
    :cond_6
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    :cond_7
    :goto_3
    return-void
.end method

.method private updateInputTextView()Z
    .locals 2

    .line 2066
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getDisplayedMaxText()Ljava/lang/String;

    move-result-object v0

    .line 2067
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2068
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    if-eqz v1, :cond_0

    .line 2069
    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mUpdateText:Ljava/lang/String;

    goto :goto_0

    .line 2070
    :cond_0
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2071
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 1

    .line 2039
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2040
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2042
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    goto :goto_0

    .line 2045
    :cond_0
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->getSelectedPos(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    .line 2046
    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    :goto_0
    return-void
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .line 1170
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    .line 1171
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1172
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    .line 1173
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1177
    :cond_0
    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1178
    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 1179
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 1180
    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    :cond_1
    const/4 v2, 0x0

    .line 1182
    iget v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->scrollBy(II)V

    .line 1183
    iput v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPreviousScrollerY:I

    .line 1184
    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1185
    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 1187
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    .line 1121
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x13

    const/16 v2, 0x14

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_1

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x42

    if-eq v0, v1, :cond_0

    goto :goto_3

    .line 1125
    :cond_0
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    goto :goto_3

    .line 1129
    :cond_1
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v1, :cond_2

    goto :goto_3

    .line 1132
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v3, :cond_3

    goto :goto_3

    .line 1146
    :cond_3
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_9

    const/4 p1, -0x1

    .line 1147
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    return v3

    .line 1134
    :cond_4
    iget-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez v1, :cond_6

    if-ne v0, v2, :cond_5

    goto :goto_0

    .line 1135
    :cond_5
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getMinValue()I

    move-result v4

    if-le v1, v4, :cond_9

    goto :goto_1

    :cond_6
    :goto_0
    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getValue()I

    move-result v1

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getMaxValue()I

    move-result v4

    if-ge v1, v4, :cond_9

    .line 1136
    :goto_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 1137
    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastHandledDownDpadKeyCode:I

    .line 1138
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    .line 1139
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-eqz p1, :cond_8

    if-ne v0, v2, :cond_7

    move p1, v3

    goto :goto_2

    :cond_7
    const/4 p1, 0x0

    .line 1140
    :goto_2
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->changeValueByOne(Z)V

    :cond_8
    return v3

    .line 1153
    :cond_9
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1108
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 1109
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1113
    :cond_0
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    .line 1116
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1162
    :cond_0
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    .line 1165
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 841
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 843
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->tryComputeMaxWidth()V

    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    .line 1727
    const-class p0, Lmiuix/pickerwidget/widget/NumberPicker;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 0

    const p0, 0x3f666666    # 0.9f

    return p0
.end method

.method protected getDisplayedMaxText()Ljava/lang/String;
    .locals 0

    .line 1373
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxText:Ljava/lang/String;

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method

.method protected getDisplayedMaxTextWidth()F
    .locals 3

    .line 1383
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 1384
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginTextSizeHighlight:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1385
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->getDisplayedMaxText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1386
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    return v1
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 0

    .line 1565
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    return-object p0
.end method

.method protected getLabelWidth()F
    .locals 1

    .line 1355
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->isInternationalBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1356
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getMarginLabelLeft()I
    .locals 0

    .line 828
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->MARGIN_LABEL_LEFT:I

    return p0
.end method

.method public getMaxValue()I
    .locals 0

    .line 1527
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    return p0
.end method

.method public getMinValue()I
    .locals 0

    .line 1489
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    return p0
.end method

.method public getOriginTextSizeHighlight()I
    .locals 0

    .line 832
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginTextSizeHighlight:I

    return p0
.end method

.method public getOriginTextSizeHint()I
    .locals 0

    .line 836
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginTextSizeHint:I

    return p0
.end method

.method public getOriginalLabelWidth()F
    .locals 3

    .line 1362
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->isInternationalBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1363
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 1364
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOriginLabelTextSize:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1365
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1366
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getTextSizeHighlight()I
    .locals 0

    .line 807
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    return p0
.end method

.method public getTextSizeHint()I
    .locals 0

    .line 819
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHint:I

    return p0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 0

    const p0, 0x3f666666    # 0.9f

    return p0
.end method

.method public getValue()I
    .locals 0

    .line 1480
    iget p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    return p0
.end method

.method public getWrapSelectorWheel()Z
    .locals 0

    .line 1432
    iget-boolean p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 1617
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 1618
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initSoundPlayer()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1705
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1706
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initThreshHolds()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 1623
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 1624
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->releaseSoundPlayer()V

    .line 1625
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    const-string p0, "NumberPicker_sound_play"

    .line 1626
    invoke-static {p0}, Lmiuix/pickerwidget/internal/util/async/WorkerThreads;->releaseWorker(Ljava/lang/String;)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1631
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1632
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void

    .line 1635
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    .line 1636
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v1

    .line 1637
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    div-int/lit8 v2, v2, 0x2

    int-to-float v0, v2

    .line 1639
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    mul-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 1640
    invoke-direct {p0, p1, v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->drawScrollValue(Landroid/graphics/Canvas;FF)F

    move-result v2

    .line 1641
    invoke-direct {p0, p1, v0, v1, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->drawLabelText(Landroid/graphics/Canvas;FFF)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 1732
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1733
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 1734
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    const/16 v1, 0x2000

    .line 1735
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    const/16 v1, 0x1000

    .line 1736
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 1738
    sget-object v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SET_PROGRESS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    const/4 v1, 0x0

    .line 1740
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v0

    int-to-float v2, v2

    iget v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    add-int/2addr v3, v0

    int-to-float v0, v3

    iget v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    int-to-float v3, v3

    invoke-static {v1, v2, v0, v3}, Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;->obtain(IFFF)Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;

    move-result-object v0

    .line 1743
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setRangeInfo(Landroid/view/accessibility/AccessibilityNodeInfo$RangeInfo;)V

    .line 1744
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    invoke-direct {p0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    iget v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1745
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ""

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1746
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1748
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v0, Lmiuix/pickerwidget/R$string;->miuix_access_state_desc:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setStateDescription(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 979
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 982
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 985
    :cond_1
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    .line 986
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 987
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventY:F

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownOrMoveEventY:F

    .line 988
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iput-wide v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventTime:J

    .line 989
    iput-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIngonreMoveEvents:Z

    .line 990
    iput-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mShowSoftInputOnTap:Z

    .line 992
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventY:F

    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v2, 0x1

    if-gez v0, :cond_2

    .line 993
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    if-nez p1, :cond_3

    .line 994
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_0

    .line 997
    :cond_2
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    .line 998
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    if-nez p1, :cond_3

    .line 999
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v2}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->buttonPressDelayed(I)V

    .line 1004
    :cond_3
    :goto_0
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1005
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1006
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1007
    invoke-direct {p0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_1

    .line 1008
    :cond_4
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p1}, Landroid/widget/Scroller;->isFinished()Z

    move-result p1

    if-nez p1, :cond_5

    .line 1009
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1010
    iget-object p0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {p0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_1

    .line 1011
    :cond_5
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventY:F

    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTopSelectionDividerTop:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_6

    .line 1013
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v3, p1

    .line 1012
    invoke-direct {p0, v1, v3, v4}, Lmiuix/pickerwidget/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 1014
    :cond_6
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_7

    .line 1016
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v0, p1

    .line 1015
    invoke-direct {p0, v2, v0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto :goto_1

    .line 1018
    :cond_7
    iput-boolean v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mShowSoftInputOnTap:Z

    .line 1019
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->postBeginSoftInputOnLongPressCommand()V

    :goto_1
    return v2

    :cond_8
    :goto_2
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    .line 848
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 849
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    return-void

    .line 852
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    .line 853
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result p3

    .line 856
    iget-object p4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p4}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result p4

    .line 857
    iget-object p5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result p5

    sub-int/2addr p2, p4

    .line 858
    div-int/lit8 p2, p2, 0x2

    sub-int/2addr p3, p5

    .line 859
    div-int/lit8 p3, p3, 0x2

    add-int/2addr p4, p2

    add-int/2addr p5, p3

    .line 862
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/widget/EditText;->layout(IIII)V

    if-eqz p1, :cond_1

    .line 866
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheel()V

    .line 867
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeFadingEdges()V

    .line 868
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectionDividersDistance:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iget p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectionDividerHeight:I

    sub-int/2addr p1, p3

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTopSelectionDividerTop:I

    mul-int/lit8 p3, p3, 0x2

    add-int/2addr p1, p3

    add-int/2addr p1, p2

    .line 870
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mBottomSelectionDividerBottom:I

    .line 874
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRight()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLeft()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result p2

    add-int/2addr p1, p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    .line 875
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->trimLabelTextSize(F)V

    .line 878
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 879
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    add-int/lit8 p2, p2, 0x14

    .line 880
    iget-boolean p3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMeasureBackgroundEnabled:Z

    if-eqz p3, :cond_5

    instance-of p3, p1, Landroid/graphics/drawable/StateListDrawable;

    if-eqz p3, :cond_5

    .line 882
    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    .line 884
    invoke-virtual {p1}, Landroid/graphics/drawable/StateListDrawable;->getStateCount()I

    move-result p3

    const/4 p4, 0x0

    move p5, p4

    :goto_0
    if-ge p5, p3, :cond_5

    .line 886
    invoke-virtual {p1, p5}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 887
    instance-of v1, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v1, :cond_4

    .line 888
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 889
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    move v2, p4

    :goto_1
    if-ge v2, v1, :cond_4

    .line 891
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v3

    .line 892
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 893
    instance-of v4, v3, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v4, :cond_3

    .line 894
    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    .line 895
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    if-le v4, p2, :cond_2

    move v4, p2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    :goto_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setSize(II)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 906
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 907
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    .line 911
    :cond_0
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxWidth:I

    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v0

    .line 912
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxHeight:I

    invoke-direct {p0, p2, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->makeMeasureSpec(II)I

    move-result v1

    .line 913
    invoke-super {p0, v0, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 915
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinWidth:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v1

    invoke-direct {p0, v0, v1, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p1

    .line 917
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinHeight:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0, v0, v1, p2}, Lmiuix/pickerwidget/widget/NumberPicker;->resolveSizeAndStateRespectingMinSize(III)I

    move-result p2

    .line 919
    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1029
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 1032
    :cond_0
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_1

    .line 1033
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 1035
    :cond_1
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 1036
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    if-eq v0, v2, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_6

    goto/16 :goto_3

    .line 1039
    :cond_2
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mIngonreMoveEvents:Z

    if-eqz v0, :cond_3

    goto/16 :goto_3

    .line 1042
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 1043
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mScrollState:I

    if-eq v0, v3, :cond_4

    .line 1044
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventY:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 1045
    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTouchSlop:I

    if-le v0, v1, :cond_5

    .line 1046
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeAllCallbacks()V

    .line 1047
    invoke-direct {p0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_0

    .line 1050
    :cond_4
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownOrMoveEventY:F

    sub-float v0, p1, v0

    float-to-int v0, v0

    .line 1051
    invoke-virtual {p0, v1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->scrollBy(II)V

    .line 1052
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    .line 1054
    :cond_5
    :goto_0
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownOrMoveEventY:F

    goto/16 :goto_3

    .line 1059
    :cond_6
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeBeginSoftInputCommand()V

    .line 1060
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->removeChangeCurrentByOneFromLongPress()V

    .line 1061
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {v0}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 1062
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v4, 0x3e8

    .line 1063
    iget v5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaximumFlingVelocity:I

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1064
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 1065
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaximumFlingVelocity:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-lt v4, v5, :cond_7

    int-to-float v0, v0

    .line 1066
    iget v4, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxFlingSpeedFactor:F

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 1068
    :cond_7
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinimumFlingVelocity:I

    if-le v4, v5, :cond_8

    .line 1069
    invoke-direct {p0, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->fling(I)V

    .line 1070
    invoke-direct {p0, v2}, Lmiuix/pickerwidget/widget/NumberPicker;->onScrollStateChange(I)V

    goto :goto_2

    .line 1072
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    int-to-float v4, v0

    .line 1073
    iget v5, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventY:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-int v4, v4

    .line 1074
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    iget-wide v7, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLastDownEventTime:J

    sub-long/2addr v5, v7

    .line 1075
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTouchSlop:I

    if-gt v4, p1, :cond_c

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result p1

    int-to-long v7, p1

    cmp-long p1, v5, v7

    if-gez p1, :cond_c

    .line 1076
    iget-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mShowSoftInputOnTap:Z

    if-eqz p1, :cond_9

    .line 1077
    iput-boolean v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mShowSoftInputOnTap:Z

    goto :goto_1

    .line 1079
    :cond_9
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    div-int/2addr v0, p1

    sub-int/2addr v0, v3

    if-lez v0, :cond_a

    .line 1082
    invoke-direct {p0, v3}, Lmiuix/pickerwidget/widget/NumberPicker;->changeValueByOne(Z)V

    .line 1083
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v3}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    :cond_a
    if-gez v0, :cond_b

    .line 1086
    invoke-direct {p0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->changeValueByOne(Z)V

    .line 1087
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mPressedStateHelper:Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;

    invoke-virtual {p1, v2}, Lmiuix/pickerwidget/widget/NumberPicker$PressedStateHelper;->buttonTapped(I)V

    goto :goto_1

    .line 1090
    :cond_b
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    goto :goto_1

    .line 1094
    :cond_c
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->ensureScrollWheelAdjusted()Z

    .line 1096
    :goto_1
    invoke-direct {p0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->onScrollStateChange(I)V

    .line 1098
    :goto_2
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 1099
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mVelocityTracker:Landroid/view/VelocityTracker;

    :goto_3
    return v3

    :cond_d
    :goto_4
    return v1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 3

    .line 1755
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 1758
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isEnabled()Z

    move-result p2

    const/4 v1, 0x0

    if-nez p2, :cond_1

    return v1

    :cond_1
    const/16 p2, 0x1000

    if-eq p1, p2, :cond_2

    const/16 v2, 0x2000

    if-eq p1, v2, :cond_2

    return v1

    :cond_2
    if-ne p1, p2, :cond_3

    move v1, v0

    .line 1764
    :cond_3
    invoke-direct {p0, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->changeValueByOne(Z)V

    return v0
.end method

.method public scrollBy(II)V
    .locals 4

    .line 1193
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    .line 1194
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-lez p2, :cond_0

    aget v2, p1, v1

    iget v3, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    if-gt v2, v3, :cond_0

    .line 1196
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    return-void

    :cond_0
    if-nez v0, :cond_1

    if-gez p2, :cond_1

    .line 1199
    aget v0, p1, v1

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    if-lt v0, v2, :cond_1

    .line 1201
    iget p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    return-void

    .line 1204
    :cond_1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    add-int/2addr v0, p2

    iput v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1205
    :cond_2
    :goto_0
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int v0, p2, v0

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorTextGapHeight:I

    if-le v0, v2, :cond_3

    .line 1206
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    sub-int/2addr p2, v0

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1207
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->decrementSelectorIndices([I)V

    .line 1208
    aget p2, p1, v1

    invoke-direct {p0, p2, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1209
    iget-boolean p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_2

    aget p2, p1, v1

    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    if-gt p2, v0, :cond_2

    .line 1210
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1213
    :cond_3
    :goto_1
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    sub-int v0, p2, v0

    iget v2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v0, v2, :cond_4

    .line 1214
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorElementHeight:I

    add-int/2addr p2, v0

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    .line 1215
    invoke-direct {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->incrementSelectorIndices([I)V

    .line 1216
    aget p2, p1, v1

    invoke-direct {p0, p2, v1}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    .line 1217
    iget-boolean p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-nez p2, :cond_3

    aget p2, p1, v1

    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    if-lt p2, v0, :cond_3

    .line 1218
    iget p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInitialScrollOffset:I

    iput p2, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mCurrentScrollOffset:I

    goto :goto_1

    :cond_4
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 1

    .line 1578
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    return-void

    .line 1581
    :cond_0
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 1584
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const v0, 0x80001

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_0

    .line 1587
    :cond_1
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mInputText:Landroid/widget/EditText;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1589
    :goto_0
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    .line 1590
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1591
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->tryComputeMaxWidth()V

    return-void
.end method

.method public setFormatter(Lmiuix/pickerwidget/widget/NumberPicker$Formatter;)V
    .locals 1

    .line 1265
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFormatter:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    if-ne p1, v0, :cond_0

    return-void

    .line 1268
    :cond_0
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mFormatter:Lmiuix/pickerwidget/widget/NumberPicker$Formatter;

    .line 1269
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1270
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    .line 1229
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1230
    :cond_1
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabel:Ljava/lang/CharSequence;

    .line 1231
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_2
    return-void
.end method

.method public setLabelTextSizeThreshold(F)V
    .locals 1

    const/4 v0, 0x0

    .line 1397
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSizeThreshold:F

    return-void
.end method

.method public setLabelTextSizeTrimFactor(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 1408
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLabelTextSizeTrimFactor:F

    :cond_0
    return-void
.end method

.method public setMaxFlingSpeedFactor(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    .line 1601
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxFlingSpeedFactor:F

    :cond_0
    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    .line 1541
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    .line 1547
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    .line 1548
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    if-ge p1, v0, :cond_1

    .line 1549
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 1551
    :cond_1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    array-length v0, v0

    if-le p1, v0, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1552
    :goto_0
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1553
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1554
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    .line 1555
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1556
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void

    .line 1545
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxValue must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setMeasureBackgroundEnabled(Z)V
    .locals 0

    .line 728
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMeasureBackgroundEnabled:Z

    return-void
.end method

.method public setMinValue(I)V
    .locals 1

    .line 1503
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_3

    .line 1509
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    .line 1510
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    if-le p1, v0, :cond_1

    .line 1511
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mValue:I

    .line 1513
    :cond_1
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    sub-int/2addr v0, p1

    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    array-length p1, p1

    if-le v0, p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1514
    :goto_0
    invoke-virtual {p0, p1}, Lmiuix/pickerwidget/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 1515
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheelIndices()V

    .line 1516
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->updateInputTextView()Z

    .line 1517
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->tryComputeMaxWidth()V

    .line 1518
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void

    .line 1507
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "minValue must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0

    .line 1471
    iput-wide p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mLongPressUpdateInterval:J

    return-void
.end method

.method public setOnScrollListener(Lmiuix/pickerwidget/widget/NumberPicker$OnScrollListener;)V
    .locals 0

    .line 1250
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOnScrollListener:Lmiuix/pickerwidget/widget/NumberPicker$OnScrollListener;

    return-void
.end method

.method public setOnValueChangedListener(Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;)V
    .locals 0

    .line 1241
    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mOnValueChangeListener:Lmiuix/pickerwidget/widget/NumberPicker$OnValueChangeListener;

    return-void
.end method

.method public setTextSizeHighlight(I)V
    .locals 1

    .line 811
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHighlight:I

    .line 812
    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 813
    iget-object p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mDisplayedMaxTextWidth:F

    .line 814
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->initializeSelectorWheel()V

    .line 815
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setTextSizeHint(I)V
    .locals 0

    .line 823
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeHint:I

    .line 824
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidate()V

    return-void
.end method

.method public setTextSizeTrimFactor(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 1420
    iput p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mTextSizeTrimFactor:F

    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1302
    invoke-direct {p0, p1, v0}, Lmiuix/pickerwidget/widget/NumberPicker;->setValueInternal(IZ)V

    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 2

    .line 1453
    iget v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMaxValue:I

    iget v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mMinValue:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mSelectorIndices:[I

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_2

    .line 1454
    :cond_1
    iget-boolean v0, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    if-eq p1, v0, :cond_2

    .line 1455
    iput-boolean p1, p0, Lmiuix/pickerwidget/widget/NumberPicker;->mWrapSelectorWheel:Z

    .line 1457
    :cond_2
    invoke-direct {p0}, Lmiuix/pickerwidget/widget/NumberPicker;->refreshWheel()V

    return-void
.end method
