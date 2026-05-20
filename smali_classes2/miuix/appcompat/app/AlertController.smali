.class Lmiuix/appcompat/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/app/AlertController$LayoutChangeListener;,
        Lmiuix/appcompat/app/AlertController$CheckedItemAdapter;,
        Lmiuix/appcompat/app/AlertController$ButtonInfo;,
        Lmiuix/appcompat/app/AlertController$AlertParams;,
        Lmiuix/appcompat/app/AlertController$ButtonHandler;
    }
.end annotation


# instance fields
.field private buildJustNow:Z

.field private configurationAfterInstalled:Landroid/content/res/Configuration;

.field mAdapter:Landroid/widget/ListAdapter;

.field private final mAlertDialogLayout:I

.field private mAsyncInflatePanelEnabled:Z

.field private mButtonForceVertical:Z

.field private final mButtonHandler:Landroid/view/View$OnClickListener;

.field mButtonNegative:Landroid/widget/Button;

.field mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field mButtonNeutral:Landroid/widget/Button;

.field mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field mButtonPositive:Landroid/widget/Button;

.field mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCancelable:Z

.field private mCanceledOnTouchOutside:Z

.field private mCheckBoxMessage:Ljava/lang/CharSequence;

.field mCheckedItem:I

.field private mComment:Ljava/lang/CharSequence;

.field private mCommentTextSize:F

.field private mCommentView:Landroid/widget/TextView;

.field private final mContext:Landroid/content/Context;

.field private final mCreateThread:Ljava/lang/Thread;

.field private mCurrentDensityDpi:I

.field private mCustomTitleTextSize:F

.field private mCustomTitleTextView:Landroid/widget/TextView;

.field private mCustomTitleView:Landroid/view/View;

.field private mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

.field final mDialog:Landroidx/appcompat/app/AppCompatDialog;

.field private final mDialogAnimHelper:Lmiuix/appcompat/widget/DialogAnimHelper;

.field private mDialogContentLayout:I

.field private mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

.field private mDimBg:Landroid/view/View;

.field private final mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

.field private mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

.field private final mDisplayStrategy:Lmiuix/appcompat/app/DialogDisplayStrategy;

.field mEnableEnterAnim:Z

.field private mExtraButtonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiuix/appcompat/app/AlertController$ButtonInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mExtraImeMargin:I

.field private mFlipCutout:Landroid/view/DisplayCutout;

.field mHandler:Landroid/os/Handler;

.field mHapticFeedbackEnabled:Z

.field private mHasPendingDismiss:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconHeight:I

.field private mIconId:I

.field private mIconWidth:I

.field private mInflatedView:Landroid/view/View;

.field private mInsetsAnimationPlayed:Z

.field private mIsCarWithScreen:Z

.field private mIsChecked:Z

.field private mIsDebugEnabled:Z

.field private mIsDialogAnimating:Z

.field private mIsEnableImmersive:Z

.field private mIsFlipTinyScreen:Z

.field private mIsFromRebuild:Z

.field private mIsInFreeForm:Z

.field private mIsSynergy:Z

.field private mIsWindowLandScape:Z

.field private mLandscapePanel:Z

.field private final mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

.field private mLayoutReloadListener:Lmiuix/appcompat/app/AlertDialog$OnDialogLayoutReloadListener;

.field mListItemLayout:I

.field mListLayout:I

.field mListView:Landroid/widget/ListView;

.field private mLiteVersion:I

.field private mMarkLandscape:Z

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageTextSize:F

.field private mMessageView:Landroid/widget/TextView;

.field mMultiChoiceItemLayout:I

.field private mNonImmersiveDialogHeight:I

.field mNonImmersiveDialogShowAnimDuration:J

.field private mPanelAndImeMargin:I

.field private mPanelParamsHorizontalMargin:I

.field private mPanelParamsWidth:I

.field private mPanelSizeChangedListener:Lmiuix/appcompat/app/AlertDialog$OnPanelSizeChangedListener;

.field private mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

.field private mPreferLandscape:Z

.field private mRootViewSize:Landroid/graphics/Point;

.field private mRootViewSizeDp:Landroid/graphics/Point;

.field private mScreenMinorSize:I

.field private mScreenOrientation:I

.field private mScreenRealSize:Landroid/graphics/Point;

.field private mSetupWindowInsetsAnimation:Z

.field private mShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

.field private mShowAnimListenerWrapper:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

.field private final mShowTitle:Z

.field mShowUpTimeMillis:J

.field mSingleChoiceItemLayout:I

.field private mSmallIcon:Z

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleTextSize:F

.field private mTitleView:Landroid/widget/TextView;

.field private mUseForceFlipCutout:Z

.field private mView:Landroid/view/View;

.field private mViewLayoutResId:I

.field private final mWindow:Landroid/view/Window;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$QUWCJ1st1jk2uhPZfesY4Q84TNY(Lmiuix/appcompat/app/AlertController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->lambda$setupView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UV057tT4eONsdeYWSBnwJSagjDk(Lmiuix/appcompat/app/AlertController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->lambda$setupView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wnqvQ8dw7ueo3bWhcszIObddzD0(Lmiuix/appcompat/app/AlertController;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->lambda$setupView$2()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/appcompat/app/AppCompatDialog;Landroid/view/Window;)V
    .locals 6

    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 128
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    const/4 v1, -0x1

    .line 153
    iput v1, p0, Lmiuix/appcompat/app/AlertController;->mExtraImeMargin:I

    .line 155
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    const/4 v2, -0x2

    .line 156
    iput v2, p0, Lmiuix/appcompat/app/AlertController;->mNonImmersiveDialogHeight:I

    const-wide/16 v2, 0x0

    .line 160
    iput-wide v2, p0, Lmiuix/appcompat/app/AlertController;->mShowUpTimeMillis:J

    .line 161
    new-instance v2, Lmiuix/appcompat/app/DialogContract$DimensConfig;

    invoke-direct {v2}, Lmiuix/appcompat/app/DialogContract$DimensConfig;-><init>()V

    iput-object v2, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    .line 162
    new-instance v2, Lmiuix/appcompat/app/DialogDisplayStrategy;

    invoke-direct {v2}, Lmiuix/appcompat/app/DialogDisplayStrategy;-><init>()V

    iput-object v2, p0, Lmiuix/appcompat/app/AlertController;->mDisplayStrategy:Lmiuix/appcompat/app/DialogDisplayStrategy;

    .line 166
    new-instance v3, Lmiuix/appcompat/app/AlertController$1;

    invoke-direct {v3, p0}, Lmiuix/appcompat/app/AlertController$1;-><init>(Lmiuix/appcompat/app/AlertController;)V

    iput-object v3, p0, Lmiuix/appcompat/app/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    .line 199
    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mIconId:I

    const/4 v3, 0x0

    .line 209
    iput-object v3, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextView:Landroid/widget/TextView;

    .line 213
    iput v1, p0, Lmiuix/appcompat/app/AlertController;->mCheckedItem:I

    .line 225
    new-instance v1, Lmiuix/appcompat/widget/DialogAnimHelper;

    invoke-direct {v1}, Lmiuix/appcompat/widget/DialogAnimHelper;-><init>()V

    iput-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDialogAnimHelper:Lmiuix/appcompat/widget/DialogAnimHelper;

    const/4 v1, 0x1

    .line 235
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mCancelable:Z

    .line 236
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mCanceledOnTouchOutside:Z

    .line 240
    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mScreenOrientation:I

    const/high16 v4, 0x41900000    # 18.0f

    .line 250
    iput v4, p0, Lmiuix/appcompat/app/AlertController;->mTitleTextSize:F

    const/high16 v5, 0x41800000    # 16.0f

    .line 252
    iput v5, p0, Lmiuix/appcompat/app/AlertController;->mMessageTextSize:F

    const/high16 v5, 0x41500000    # 13.0f

    .line 254
    iput v5, p0, Lmiuix/appcompat/app/AlertController;->mCommentTextSize:F

    .line 256
    iput v4, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextSize:F

    .line 258
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iput-object v4, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    .line 259
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iput-object v4, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    .line 260
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    iput-object v4, p0, Lmiuix/appcompat/app/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    .line 261
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    .line 270
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mHasPendingDismiss:Z

    .line 271
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mUseForceFlipCutout:Z

    .line 276
    new-instance v4, Lmiuix/appcompat/app/AlertController$2;

    invoke-direct {v4, p0}, Lmiuix/appcompat/app/AlertController$2;-><init>(Lmiuix/appcompat/app/AlertController;)V

    iput-object v4, p0, Lmiuix/appcompat/app/AlertController;->mShowAnimListenerWrapper:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    .line 310
    new-instance v4, Lmiuix/appcompat/app/AlertController$3;

    invoke-direct {v4, p0}, Lmiuix/appcompat/app/AlertController$3;-><init>(Lmiuix/appcompat/app/AlertController;)V

    iput-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 1505
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mInsetsAnimationPlayed:Z

    .line 381
    new-instance v4, Lmiuix/appcompat/app/strategy/DialogPanelBehaviorImpl;

    invoke-direct {v4}, Lmiuix/appcompat/app/strategy/DialogPanelBehaviorImpl;-><init>()V

    invoke-virtual {v2, v4}, Lmiuix/appcompat/app/DialogDisplayStrategy;->setPanelBehavior(Lmiuix/appcompat/app/strategy/IDialogPanelBehavior;)Lmiuix/appcompat/app/DialogDisplayStrategy;

    move-result-object v2

    new-instance v4, Lmiuix/appcompat/app/strategy/DialogButtonBehaviorImpl;

    invoke-direct {v4}, Lmiuix/appcompat/app/strategy/DialogButtonBehaviorImpl;-><init>()V

    .line 382
    invoke-virtual {v2, v4}, Lmiuix/appcompat/app/DialogDisplayStrategy;->setButtonBehavior(Lmiuix/appcompat/app/strategy/IDialogButtonBehavior;)Lmiuix/appcompat/app/DialogDisplayStrategy;

    .line 383
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 384
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 385
    iget v2, v2, Landroid/content/res/Configuration;->densityDpi:I

    iput v2, p0, Lmiuix/appcompat/app/AlertController;->mCurrentDensityDpi:I

    .line 386
    iput-object p2, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    .line 387
    iput-object p3, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 388
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mEnableEnterAnim:Z

    .line 389
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v2, Lmiuix/appcompat/R$integer;->dialog_enter_duration:I

    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    int-to-long v4, p3

    iput-wide v4, p0, Lmiuix/appcompat/app/AlertController;->mNonImmersiveDialogShowAnimDuration:J

    .line 390
    new-instance p3, Lmiuix/appcompat/app/AlertController$ButtonHandler;

    invoke-direct {p3, p2}, Lmiuix/appcompat/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object p3, p0, Lmiuix/appcompat/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 391
    new-instance p3, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    invoke-direct {p3, p0}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;-><init>(Lmiuix/appcompat/app/AlertController;)V

    iput-object p3, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    .line 392
    sget-boolean p3, Lmiuix/os/Build;->IS_FLIP:Z

    if-eqz p3, :cond_0

    invoke-static {p1}, Lmiuix/os/DeviceHelper;->isTinyScreen(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    iput-boolean p3, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    .line 393
    invoke-static {}, Lmiuix/internal/util/LiteUtils;->isCommonLiteStrategy()Z

    move-result p3

    if-nez p3, :cond_1

    iget-boolean p3, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-nez p3, :cond_1

    move p3, v1

    goto :goto_1

    :cond_1
    move p3, v0

    :goto_1
    iput-boolean p3, p0, Lmiuix/appcompat/app/AlertController;->mIsEnableImmersive:Z

    .line 394
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateDisplayInfo(Landroid/content/Context;)V

    .line 395
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->initScreenMinorSize(Landroid/content/Context;)V

    .line 397
    sget-object p3, Lmiuix/appcompat/R$styleable;->AlertDialog:[I

    const v2, 0x101005d

    invoke-virtual {p1, v3, p3, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 400
    sget v2, Lmiuix/appcompat/R$styleable;->AlertDialog_layout:I

    invoke-virtual {p3, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/app/AlertController;->mAlertDialogLayout:I

    .line 401
    sget v2, Lmiuix/appcompat/R$styleable;->AlertDialog_listLayout:I

    invoke-virtual {p3, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/app/AlertController;->mListLayout:I

    .line 402
    sget v2, Lmiuix/appcompat/R$styleable;->AlertDialog_multiChoiceItemLayout:I

    invoke-virtual {p3, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/app/AlertController;->mMultiChoiceItemLayout:I

    .line 403
    sget v2, Lmiuix/appcompat/R$styleable;->AlertDialog_singleChoiceItemLayout:I

    .line 404
    invoke-virtual {p3, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lmiuix/appcompat/app/AlertController;->mSingleChoiceItemLayout:I

    .line 405
    sget v2, Lmiuix/appcompat/R$styleable;->AlertDialog_listItemLayout:I

    invoke-virtual {p3, v2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mListItemLayout:I

    .line 406
    sget v0, Lmiuix/appcompat/R$styleable;->AlertDialog_showTitle:I

    invoke-virtual {p3, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mShowTitle:Z

    .line 408
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 411
    invoke-virtual {p2, v1}, Landroidx/appcompat/app/AppCompatDialog;->supportRequestWindowFeature(I)Z

    .line 418
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-direct {p0, p2}, Lmiuix/appcompat/app/AlertController;->updateDimensConfig(Landroid/content/res/Resources;)V

    .line 419
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lmiuix/appcompat/R$bool;->treat_as_land:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mMarkLandscape:Z

    .line 420
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mCreateThread:Ljava/lang/Thread;

    .line 421
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImeDebugEnabled()Z

    .line 422
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz p1, :cond_2

    .line 423
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "create Dialog mCurrentDensityDpi "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lmiuix/appcompat/app/AlertController;->mCurrentDensityDpi:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AlertController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogParentPanel2;
    .locals 0

    .line 124
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    return-object p0
.end method

.method static synthetic access$1000(Lmiuix/appcompat/app/AlertController;)Z
    .locals 0

    .line 124
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->shouldUseLandscapePanel()Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lmiuix/appcompat/app/AlertController;Z)Z
    .locals 0

    .line 124
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDialogAnimating:Z

    return p1
.end method

.method static synthetic access$1100(Lmiuix/appcompat/app/AlertController;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/AlertController;->updateButtons(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$1400(Lmiuix/appcompat/app/AlertController;Landroid/view/ViewGroup;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateContent(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$1500(Lmiuix/appcompat/app/AlertController;)Z
    .locals 0

    .line 124
    iget-boolean p0, p0, Lmiuix/appcompat/app/AlertController;->mPreferLandscape:Z

    return p0
.end method

.method static synthetic access$1600(Lmiuix/appcompat/app/AlertController;F)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateViewOnDensityChanged(F)V

    return-void
.end method

.method static synthetic access$1900(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/widget/DialogAnimHelper;
    .locals 0

    .line 124
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mDialogAnimHelper:Lmiuix/appcompat/widget/DialogAnimHelper;

    return-object p0
.end method

.method static synthetic access$200(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;
    .locals 0

    .line 124
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    return-object p0
.end method

.method static synthetic access$2002(Lmiuix/appcompat/app/AlertController;Z)Z
    .locals 0

    .line 124
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mInsetsAnimationPlayed:Z

    return p1
.end method

.method static synthetic access$2100(Lmiuix/appcompat/app/AlertController;)Z
    .locals 0

    .line 124
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2200(Lmiuix/appcompat/app/AlertController;)I
    .locals 0

    .line 124
    iget p0, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    return p0
.end method

.method static synthetic access$2202(Lmiuix/appcompat/app/AlertController;I)I
    .locals 0

    .line 124
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    return p1
.end method

.method static synthetic access$2300(Lmiuix/appcompat/app/AlertController;)I
    .locals 0

    .line 124
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getDialogPanelMargin()I

    move-result p0

    return p0
.end method

.method static synthetic access$2400(Lmiuix/appcompat/app/AlertController;)Z
    .locals 0

    .line 124
    iget-boolean p0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    return p0
.end method

.method static synthetic access$2500(Lmiuix/appcompat/app/AlertController;I)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->translateDialogPanel(I)V

    return-void
.end method

.method static synthetic access$2600(Lmiuix/appcompat/app/AlertController;I)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateDimBgBottomMargin(I)V

    return-void
.end method

.method static synthetic access$2700(Lmiuix/appcompat/app/AlertController;Landroid/view/WindowInsets;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateParentPanelMarginByWindowInsets(Landroid/view/WindowInsets;)V

    return-void
.end method

.method static synthetic access$2800(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/app/AlertController$LayoutChangeListener;
    .locals 0

    .line 124
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    return-object p0
.end method

.method static synthetic access$2900(Lmiuix/appcompat/app/AlertController;Landroid/view/WindowInsets;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateDialogPanelByWindowInsets(Landroid/view/WindowInsets;)V

    return-void
.end method

.method static synthetic access$300(Lmiuix/appcompat/app/AlertController;)Z
    .locals 0

    .line 124
    iget-boolean p0, p0, Lmiuix/appcompat/app/AlertController;->mHasPendingDismiss:Z

    return p0
.end method

.method static synthetic access$3100(Lmiuix/appcompat/app/AlertController;)I
    .locals 0

    .line 124
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getDialogPanelExtraBottomPadding()I

    move-result p0

    return p0
.end method

.method static synthetic access$3200(Lmiuix/appcompat/app/AlertController;)Landroid/content/Context;
    .locals 0

    .line 124
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$3300(Lmiuix/appcompat/app/AlertController;)Landroid/graphics/Point;
    .locals 0

    .line 124
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mScreenRealSize:Landroid/graphics/Point;

    return-object p0
.end method

.method static synthetic access$400(Lmiuix/appcompat/app/AlertController;)Landroid/view/Window;
    .locals 0

    .line 124
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/appcompat/app/AlertController;)Ljava/util/List;
    .locals 0

    .line 124
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$502(Lmiuix/appcompat/app/AlertController;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 124
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$800(Lmiuix/appcompat/app/AlertController;)Lmiuix/appcompat/internal/widget/DialogRootView;
    .locals 0

    .line 124
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    return-object p0
.end method

.method static synthetic access$900(Lmiuix/appcompat/app/AlertController;Landroid/view/View;)V
    .locals 0

    .line 124
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateRootViewSize(Landroid/view/View;)V

    return-void
.end method

.method private adjustHeight2WrapContent()V
    .locals 2

    .line 1142
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    .line 1143
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1144
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private buttonNeedScrollable(Lmiuix/appcompat/internal/widget/DialogButtonPanel;I)Z
    .locals 12

    .line 1448
    invoke-virtual {p1}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->getButtonFullyVisibleHeight()I

    move-result v1

    .line 1449
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    sget v2, Lmiuix/appcompat/R$id;->topPanel:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1450
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    move v4, v0

    goto :goto_0

    :cond_0
    move v4, v2

    .line 1451
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v3, v0, Landroid/graphics/Point;->y:I

    .line 1452
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->getFontLevel(Landroid/content/Context;)I

    move-result v0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v0, v5, :cond_1

    move v9, v6

    goto :goto_1

    :cond_1
    move v9, v2

    .line 1453
    :goto_1
    new-instance v11, Lmiuix/appcompat/app/DialogContract$ButtonScrollSpec;

    invoke-direct {v11}, Lmiuix/appcompat/app/DialogContract$ButtonScrollSpec;-><init>()V

    .line 1454
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    iget-boolean v5, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    .line 1455
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    move-result v7

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    iget v8, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_2

    move v10, v6

    goto :goto_2

    :cond_2
    move v10, v2

    :goto_2
    move-object v0, v11

    move v2, p1

    move v6, v7

    move v7, p2

    .line 1454
    invoke-virtual/range {v0 .. v10}, Lmiuix/appcompat/app/DialogContract$ButtonScrollSpec;->updateData(IIIIZIIIZZ)V

    .line 1457
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz p1, :cond_3

    .line 1458
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "buttonNeedScrollable: buttonScrollSpec = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AlertController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    :cond_3
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mDisplayStrategy:Lmiuix/appcompat/app/DialogDisplayStrategy;

    invoke-virtual {p0, v11}, Lmiuix/appcompat/app/DialogDisplayStrategy;->isButtonScrollable(Lmiuix/appcompat/app/DialogContract$ButtonScrollSpec;)Z

    move-result p0

    return p0
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 4

    .line 483
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 487
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 491
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 492
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 495
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 496
    invoke-static {v3}, Lmiuix/appcompat/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private changeTitlePadding(Landroid/widget/TextView;)V
    .locals 3

    .line 2785
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    .line 2786
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    const/4 v2, 0x0

    .line 2785
    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method private checkAndClearFocus()V
    .locals 1

    .line 2733
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2735
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 2736
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->hideSoftIME()V

    :cond_0
    return-void
.end method

.method private checkThread()Z
    .locals 1

    .line 2741
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mCreateThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private cleanWindowInsetsAnimation()V
    .locals 2

    .line 1629
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mSetupWindowInsetsAnimation:Z

    if-eqz v0, :cond_0

    .line 1630
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 1631
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    const/4 v0, 0x0

    .line 1632
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mSetupWindowInsetsAnimation:Z

    :cond_0
    return-void
.end method

.method private clearFitSystemWindow(Landroid/view/View;)V
    .locals 3

    .line 2458
    instance-of v0, p1, Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2459
    invoke-virtual {p1, v0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 2460
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 2461
    :goto_0
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2462
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiuix/appcompat/app/AlertController;->clearFitSystemWindow(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private disableForceDark(Landroid/view/View;)V
    .locals 0

    const/4 p0, 0x0

    .line 1307
    invoke-static {p1, p0}, Lmiuix/view/CompatViewMethod;->setForceDarkAllowed(Landroid/view/View;Z)V

    return-void
.end method

.method private getAssociatedActivityInsets(I)Landroid/graphics/Insets;
    .locals 1

    .line 2306
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast p0, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 2310
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 2311
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2313
    invoke-virtual {p0, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p0

    move-object v0, p0

    :cond_0
    return-object v0
.end method

.method private getAvailableWindowSizeDp(Landroid/view/WindowInsets;)Landroid/graphics/Point;
    .locals 9

    .line 1741
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1742
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 1743
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 1744
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x1

    .line 1746
    invoke-direct {p0, p1, v3}, Lmiuix/appcompat/app/AlertController;->getNaviBarInsets(Landroid/view/WindowInsets;Z)Landroid/graphics/Rect;

    move-result-object v4

    .line 1748
    iget-boolean v5, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-eqz v5, :cond_0

    .line 1750
    invoke-direct {p0, p1, v3}, Lmiuix/appcompat/app/AlertController;->getGuaranteedCutout(Landroid/view/WindowInsets;Z)Landroid/graphics/Rect;

    move-result-object p0

    .line 1751
    iget p1, p0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v3

    sub-int/2addr v2, p1

    .line 1753
    iget p1, p0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p0

    sub-int/2addr v1, p1

    goto :goto_0

    .line 1755
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1757
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->getAssociatedActivityInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1759
    new-instance v3, Landroid/graphics/Rect;

    iget v5, p1, Landroid/graphics/Insets;->left:I

    iget v6, p1, Landroid/graphics/Insets;->top:I

    iget v7, p1, Landroid/graphics/Insets;->right:I

    iget v8, p1, Landroid/graphics/Insets;->bottom:I

    invoke-direct {v3, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p0, v3}, Lmiuix/appcompat/app/AlertController;->px2dp(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 1760
    iget v5, v3, Landroid/graphics/Rect;->left:I

    iget v6, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    sub-int/2addr v2, v5

    .line 1761
    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v3

    sub-int/2addr v1, v5

    .line 1763
    :cond_1
    iget-boolean p0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz p0, :cond_2

    .line 1764
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAvailableWindowSizeDp: cutoutInsets = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AlertController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1768
    :cond_2
    :goto_0
    iget p0, v4, Landroid/graphics/Rect;->left:I

    iget p1, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr p0, p1

    sub-int/2addr v2, p0

    .line 1769
    iget p0, v4, Landroid/graphics/Rect;->top:I

    iget p1, v4, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, p1

    sub-int/2addr v1, p0

    .line 1770
    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 1771
    iput v1, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method

.method private getCutoutMode(II)I
    .locals 0

    const/4 p0, 0x2

    if-nez p2, :cond_1

    if-ne p1, p0, :cond_0

    move p2, p0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    :cond_1
    :goto_0
    return p2
.end method

.method private getCutoutSafely()Landroid/view/DisplayCutout;
    .locals 5

    .line 2261
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->showSystemAlertInFlip()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "getCutoutSafely"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mFlipCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_0

    .line 2262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show system alert in flip, use displayCutout by reflect, displayCutout = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mFlipCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2263
    invoke-direct {p0, v2, v0, v1}, Lmiuix/appcompat/app/AlertController;->printDebugMsg(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2264
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mFlipCutout:Landroid/view/DisplayCutout;

    return-object p0

    .line 2267
    :cond_0
    :try_start_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 2268
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get displayCutout from context = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2269
    invoke-direct {p0, v2, v3, v1}, Lmiuix/appcompat/app/AlertController;->printDebugMsg(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "context is not associated display info, please check the type of context, the exception info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2272
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlertController"

    .line 2271
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_2

    .line 2275
    invoke-virtual {p0}, Landroid/view/Display;->getCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method private getDialogPanelExtraBottomPadding()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method private getDialogPanelMargin()I
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1638
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getLocationInWindow([I)V

    .line 1639
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mExtraImeMargin:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1640
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    iget v1, v1, Lmiuix/appcompat/app/DialogContract$DimensConfig;->extraImeMargin:I

    iput v1, p0, Lmiuix/appcompat/app/AlertController;->mExtraImeMargin:I

    .line 1642
    :cond_0
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1643
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    const/4 v3, 0x1

    aget v0, v0, v3

    add-int/2addr v0, v2

    sub-int/2addr v1, v0

    .line 1645
    iget p0, p0, Lmiuix/appcompat/app/AlertController;->mExtraImeMargin:I

    sub-int/2addr v1, p0

    return v1
.end method

.method private getDisplayCutout(Z)Landroid/graphics/Rect;
    .locals 6

    .line 2147
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 2149
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    invoke-direct {p0, v1}, Lmiuix/appcompat/app/AlertController;->getAssociatedActivityInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2151
    iget v3, v1, Landroid/graphics/Insets;->left:I

    iget v4, v1, Landroid/graphics/Insets;->top:I

    iget v5, v1, Landroid/graphics/Insets;->right:I

    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get cutout from host, cutout = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "getDisplayCutout"

    .line 2153
    invoke-direct {p0, v3, v1, v2}, Lmiuix/appcompat/app/AlertController;->printDebugMsg(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_3

    .line 2156
    :cond_0
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getCutoutSafely()Landroid/view/DisplayCutout;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2157
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    iput v3, v0, Landroid/graphics/Rect;->left:I

    if-eqz v1, :cond_2

    .line 2158
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    iput v3, v0, Landroid/graphics/Rect;->top:I

    if-eqz v1, :cond_3

    .line 2159
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v3

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    iput v3, v0, Landroid/graphics/Rect;->right:I

    if-eqz v1, :cond_4

    .line 2160
    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result v2

    :cond_4
    iput v2, v0, Landroid/graphics/Rect;->bottom:I

    :goto_3
    if-eqz p1, :cond_5

    .line 2163
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->px2dp(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    :cond_5
    return-object v0
.end method

.method private getFlipCutout()V
    .locals 6

    .line 2227
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2233
    :try_start_0
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 2238
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getFlipFoldedCutout"

    new-array v5, v1, [Ljava/lang/Class;

    invoke-static {v3, v4, v5}, Lmiuix/reflect/ReflectionHelper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    .line 2239
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/DisplayCutout;

    iput-object v2, p0, Lmiuix/appcompat/app/AlertController;->mFlipCutout:Landroid/view/DisplayCutout;

    goto :goto_0

    .line 2241
    :cond_1
    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mFlipCutout:Landroid/view/DisplayCutout;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "getFlipCutout"

    const-string v3, "can\'t reflect from display to query cutout"

    .line 2245
    invoke-direct {p0, v2, v3, v1}, Lmiuix/appcompat/app/AlertController;->printDebugMsg(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2246
    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mFlipCutout:Landroid/view/DisplayCutout;

    :goto_0
    return-void
.end method

.method private getFreeFormAvoidSpace(Landroid/graphics/Rect;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1967
    iget v1, p1, Landroid/graphics/Rect;->top:I

    .line 1968
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_0
    move p1, v0

    move v1, p1

    :goto_0
    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-eqz v2, :cond_5

    .line 1972
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->getAssociatedActivityInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1974
    iget v1, p1, Landroid/graphics/Insets;->top:I

    goto :goto_3

    :cond_3
    move v1, v0

    :goto_3
    if-eqz p1, :cond_4

    .line 1975
    iget v0, p1, Landroid/graphics/Insets;->bottom:I

    :cond_4
    move p1, v0

    :cond_5
    if-nez v1, :cond_7

    .line 1979
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    iget v0, v0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->freeTabletCompactHeight:I

    move v1, v0

    goto :goto_4

    .line 1980
    :cond_6
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    iget v1, v0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->freePhoneCompactHeight:I

    iget v0, v0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->extraImeMargin:I

    add-int/2addr v1, v0

    :cond_7
    :goto_4
    if-nez p1, :cond_9

    .line 1983
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    iget p0, p0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->freeTabletCompactHeight:I

    move p1, p0

    goto :goto_5

    .line 1984
    :cond_8
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    iget p1, p0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->freePhoneCompactHeight:I

    iget p0, p0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->extraImeMargin:I

    add-int/2addr p1, p0

    :cond_9
    :goto_5
    add-int/2addr v1, p1

    return v1
.end method

.method private getGravity()I
    .locals 0

    .line 1822
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x11

    goto :goto_0

    :cond_0
    const/16 p0, 0x51

    :goto_0
    return p0
.end method

.method private getGuaranteedCutout(Landroid/view/WindowInsets;Z)Landroid/graphics/Rect;
    .locals 4

    .line 2124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-eqz p1, :cond_0

    .line 2127
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    .line 2128
    iget v1, p1, Landroid/graphics/Insets;->left:I

    iget v2, p1, Landroid/graphics/Insets;->top:I

    iget v3, p1, Landroid/graphics/Insets;->right:I

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p2, :cond_1

    .line 2130
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->px2dp(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    goto :goto_0

    .line 2133
    :cond_0
    invoke-direct {p0, p2}, Lmiuix/appcompat/app/AlertController;->getDisplayCutout(Z)Landroid/graphics/Rect;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getImeBottomByWindowInsets(Landroid/view/WindowInsets;)I
    .locals 1

    if-nez p1, :cond_0

    .line 2294
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2297
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2298
    iget v0, p0, Landroid/graphics/Insets;->bottom:I

    :cond_1
    return v0

    .line 2300
    :cond_2
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->getAssociatedActivityInsets(I)Landroid/graphics/Insets;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 2301
    iget v0, p0, Landroid/graphics/Insets;->bottom:I

    :cond_3
    return v0
.end method

.method private getNaviBarInsets(Landroid/view/WindowInsets;Z)Landroid/graphics/Rect;
    .locals 4

    .line 2169
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    if-nez p1, :cond_0

    .line 2171
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_2

    .line 2174
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object p1

    .line 2175
    iget v1, p1, Landroid/graphics/Insets;->left:I

    iget v2, p1, Landroid/graphics/Insets;->top:I

    iget v3, p1, Landroid/graphics/Insets;->right:I

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p2, :cond_1

    .line 2177
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->px2dp(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    :cond_1
    return-object v0

    .line 2179
    :cond_2
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result p1

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->getAssociatedActivityInsets(I)Landroid/graphics/Insets;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 2181
    iget v1, p1, Landroid/graphics/Insets;->left:I

    iget v2, p1, Landroid/graphics/Insets;->top:I

    iget v3, p1, Landroid/graphics/Insets;->right:I

    iget p1, p1, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p2, :cond_3

    .line 2183
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->px2dp(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    :cond_3
    return-object v0

    .line 2186
    :cond_4
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lmiuix/core/util/EnvStateManager;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result p1

    .line 2187
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getRotationSafely()I

    move-result p0

    const/4 p2, 0x1

    if-eq p0, p2, :cond_7

    const/4 p2, 0x2

    if-eq p0, p2, :cond_6

    const/4 p2, 0x3

    if-eq p0, p2, :cond_5

    .line 2199
    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 2196
    :cond_5
    iput p1, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 2190
    :cond_6
    iput p1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 2193
    :cond_7
    iput p1, v0, Landroid/graphics/Rect;->right:I

    :goto_0
    return-object v0
.end method

.method private getPanelMaxLimitHeight(Landroid/graphics/Rect;)I
    .locals 9

    .line 1927
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 1929
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    iget v1, v1, Lmiuix/appcompat/app/DialogContract$DimensConfig;->widthSmallMargin:I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    iget v1, v1, Lmiuix/appcompat/app/DialogContract$DimensConfig;->extraImeMargin:I

    :goto_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 1934
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 1935
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_3

    .line 1937
    :cond_1
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v3

    invoke-direct {p0, v3}, Lmiuix/appcompat/app/AlertController;->getAssociatedActivityInsets(I)Landroid/graphics/Insets;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1938
    iget v4, v3, Landroid/graphics/Insets;->top:I

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    if-eqz v3, :cond_3

    .line 1939
    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    move v8, v4

    move v4, v3

    move v3, v8

    .line 1941
    :goto_3
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int v5, v0, v5

    add-int v6, v4, v1

    sub-int/2addr v5, v6

    .line 1942
    iget-boolean v6, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v6, :cond_4

    .line 1943
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getPanelMaxLimitHeight: boundInset = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", topInset = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", bottomInset = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", windowHeight = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", verticalMargin = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", panelMaxLimitHeight = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "AlertController"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    :cond_4
    iget-boolean v4, p0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    if-eqz v4, :cond_5

    .line 1950
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->getFreeFormAvoidSpace(Landroid/graphics/Rect;)I

    move-result p1

    sub-int v5, v0, p1

    .line 1953
    :cond_5
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-eqz p1, :cond_6

    .line 1954
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {p0, v2}, Lmiuix/core/util/EnvStateManager;->getStatusBarHeight(Landroid/content/Context;Z)I

    move-result p0

    .line 1955
    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    add-int/2addr p0, v1

    sub-int v5, v0, p0

    :cond_6
    return v5
.end method

.method private getRotationSafely()I
    .locals 3

    .line 2211
    :try_start_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    .line 2213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "context is not associated display info, please check the type of context, the exception info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2214
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlertController"

    .line 2213
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 2217
    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getScreenOrientation()I
    .locals 2

    .line 2680
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2683
    :cond_0
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x3

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 p0, 0x2

    return p0
.end method

.method private getVisibleButtonCount()I
    .locals 2

    .line 1414
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1415
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1417
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/2addr v1, v0

    .line 1420
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 1421
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1423
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 1426
    :cond_3
    :goto_2
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 1427
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 1429
    :cond_4
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_3

    .line 1432
    :cond_5
    :goto_4
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1433
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AlertController$ButtonInfo;

    .line 1434
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1436
    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    return v1
.end method

.method private hideSoftIME()V
    .locals 2

    .line 804
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 806
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private inflateDialogLayout()V
    .locals 5

    const/4 v0, 0x0

    .line 1884
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mLandscapePanel:Z

    .line 1885
    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_alert_dialog_content:I

    .line 1886
    iget-boolean v2, p0, Lmiuix/appcompat/app/AlertController;->mPreferLandscape:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->shouldUseLandscapePanel()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1887
    sget v1, Lmiuix/appcompat/R$layout;->miuix_appcompat_alert_dialog_content_land:I

    const/4 v2, 0x1

    .line 1888
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlertController;->mLandscapePanel:Z

    .line 1890
    :cond_0
    iget v2, p0, Lmiuix/appcompat/app/AlertController;->mDialogContentLayout:I

    if-eq v2, v1, :cond_3

    .line 1891
    iput v1, p0, Lmiuix/appcompat/app/AlertController;->mDialogContentLayout:I

    .line 1893
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    if-eqz v1, :cond_1

    .line 1894
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1896
    :cond_1
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mAsyncInflatePanelEnabled:Z

    if-eqz v1, :cond_2

    .line 1897
    invoke-static {}, Lmiuix/internal/util/AsyncInflateLayoutManager;->getInstance()Lmiuix/internal/util/AsyncInflateLayoutManager;

    move-result-object v1

    iget v2, p0, Lmiuix/appcompat/app/AlertController;->mDialogContentLayout:I

    .line 1898
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    invoke-virtual {v1, v2, v3, v4, v0}, Lmiuix/internal/util/AsyncInflateLayoutManager;->inflateViewById(Ljava/lang/Integer;Landroid/content/Context;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    goto :goto_0

    .line 1900
    :cond_2
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lmiuix/appcompat/app/AlertController;->mDialogContentLayout:I

    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 1901
    invoke-virtual {v1, v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 1903
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->setIsInTinyScreen(Z)V

    .line 1904
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->setIsDebugEnabled(Z)V

    .line 1906
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lmiuix/appcompat/app/AlertController;->getPanelMaxLimitHeight(Landroid/graphics/Rect;)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->setPanelMaxLimitHeight(I)V

    .line 1907
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method private initScreenMinorSize(Landroid/content/Context;)V
    .locals 1

    const-string v0, "window"

    .line 1663
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    .line 1664
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->updateMinorScreenSize()V

    return-void
.end method

.method private isCancelable()Z
    .locals 0

    .line 796
    iget-boolean p0, p0, Lmiuix/appcompat/app/AlertController;->mCancelable:Z

    return p0
.end method

.method private isCanceledOnTouchOutside()Z
    .locals 0

    .line 800
    iget-boolean p0, p0, Lmiuix/appcompat/app/AlertController;->mCanceledOnTouchOutside:Z

    return p0
.end method

.method private isConfigurationChanged(Landroid/content/res/Configuration;)Z
    .locals 10

    .line 2511
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->configurationAfterInstalled:Landroid/content/res/Configuration;

    iget v0, p0, Landroid/content/res/Configuration;->uiMode:I

    iget v1, p1, Landroid/content/res/Configuration;->uiMode:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 2513
    :goto_0
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    iget v4, p1, Landroid/content/res/Configuration;->screenLayout:I

    if-eq v1, v4, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    .line 2515
    :goto_1
    iget v4, p0, Landroid/content/res/Configuration;->orientation:I

    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v4, v5, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    move v4, v3

    .line 2517
    :goto_2
    iget v5, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v6, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v5, v6, :cond_3

    move v5, v2

    goto :goto_3

    :cond_3
    move v5, v3

    .line 2519
    :goto_3
    iget v6, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v7, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v6, v7, :cond_4

    move v6, v2

    goto :goto_4

    :cond_4
    move v6, v3

    .line 2521
    :goto_4
    iget v7, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v8, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v7, v8, :cond_5

    move v7, v2

    goto :goto_5

    :cond_5
    move v7, v3

    .line 2524
    :goto_5
    iget v8, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v9, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_6

    move v8, v2

    goto :goto_6

    :cond_6
    move v8, v3

    .line 2526
    :goto_6
    iget p0, p0, Landroid/content/res/Configuration;->keyboard:I

    iget p1, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq p0, p1, :cond_7

    move p0, v2

    goto :goto_7

    :cond_7
    move p0, v3

    :goto_7
    if-nez v0, :cond_9

    if-nez v1, :cond_9

    if-nez v4, :cond_9

    if-nez v5, :cond_9

    if-nez v6, :cond_9

    if-nez v8, :cond_9

    if-nez v7, :cond_9

    if-eqz p0, :cond_8

    goto :goto_8

    :cond_8
    move v2, v3

    :cond_9
    :goto_8
    return v2
.end method

.method private isDialogImeDebugEnabled()Z
    .locals 4

    const-string v0, "AlertController"

    const-string v1, ""

    :try_start_0
    const-string v2, "log.tag.alertdialog.ime.debug.enable"

    .line 2801
    invoke-static {v2}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "can not access property log.tag.alertdialog.ime.enable, undebugable"

    .line 2804
    invoke-static {v0, v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2806
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Alert dialog ime debugEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "true"

    .line 2807
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    return v0
.end method

.method private isFreeFormMode()Z
    .locals 0

    .line 3247
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->isFreeFormMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private isNeedUpdateDialogPanelTranslationY()Z
    .locals 7

    .line 3283
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result v0

    .line 3285
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 3290
    :goto_1
    sget-boolean v4, Lmiuix/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_3

    .line 3291
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isFreeFormMode()Z

    move-result v5

    if-nez v5, :cond_3

    .line 3292
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lmiuix/os/DeviceHelper;->isWideScreen(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    goto :goto_2

    :cond_3
    const/4 v5, -0x1

    .line 3300
    :goto_2
    iget-boolean v6, p0, Lmiuix/appcompat/app/AlertController;->mIsDialogAnimating:Z

    if-eqz v6, :cond_6

    if-eqz v4, :cond_4

    if-nez v1, :cond_8

    :cond_4
    if-nez v5, :cond_8

    :cond_5
    :goto_3
    move v2, v3

    goto :goto_4

    :cond_6
    if-eqz v4, :cond_7

    if-nez v1, :cond_8

    .line 3306
    :cond_7
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mSetupWindowInsetsAnimation:Z

    if-eqz v1, :cond_8

    iget-boolean p0, p0, Lmiuix/appcompat/app/AlertController;->mInsetsAnimationPlayed:Z

    if-nez p0, :cond_5

    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    :goto_4
    return v2
.end method

.method private isSpecifiedDialogHeight()Z
    .locals 1

    .line 3320
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    if-nez v0, :cond_0

    iget p0, p0, Lmiuix/appcompat/app/AlertController;->mNonImmersiveDialogHeight:I

    const/4 v0, -0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTablet()Z
    .locals 1

    .line 1826
    sget-boolean v0, Lmiuix/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lmiuix/appcompat/app/AlertController;->mIsCarWithScreen:Z

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

.method private synthetic lambda$setupView$0(Landroid/view/View;)V
    .locals 0

    .line 845
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isCancelable()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isCanceledOnTouchOutside()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 849
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->hideSoftIME()V

    .line 850
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setupView$1(Landroid/view/View;)V
    .locals 0

    .line 857
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isCancelable()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isCanceledOnTouchOutside()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 858
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->hideSoftIME()V

    .line 859
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->cancel()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setupView$2()V
    .locals 2

    .line 941
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mPanelSizeChangedListener:Lmiuix/appcompat/app/AlertDialog$OnPanelSizeChangedListener;

    if-eqz v0, :cond_0

    .line 942
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v1, Lmiuix/appcompat/app/AlertDialog;

    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-interface {v0, v1, p0}, Lmiuix/appcompat/app/AlertDialog$OnPanelSizeChangedListener;->onPanelSizeChanged(Lmiuix/appcompat/app/AlertDialog;Lmiuix/appcompat/internal/widget/DialogParentPanel2;)V

    :cond_0
    return-void
.end method

.method private listViewIsNeedFullScroll()Z
    .locals 5

    .line 1115
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->getSingleItemMinHeight()I

    move-result v0

    .line 1116
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    mul-int/2addr v0, v1

    .line 1117
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiuix/core/util/MiuixUIUtils;->getFontLevel(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_1

    const v1, 0x3e99999a    # 0.3f

    goto :goto_1

    :cond_1
    const v1, 0x3eb33333    # 0.35f

    .line 1123
    :goto_1
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-float p0, p0

    mul-float/2addr p0, v1

    float-to-int p0, p0

    if-le v0, p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    return v2
.end method

.method private onLayoutReload()V
    .locals 1

    .line 2613
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v0, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->onLayoutReload()V

    .line 2614
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mLayoutReloadListener:Lmiuix/appcompat/app/AlertDialog$OnDialogLayoutReloadListener;

    if-eqz p0, :cond_0

    .line 2615
    invoke-interface {p0}, Lmiuix/appcompat/app/AlertDialog$OnDialogLayoutReloadListener;->onLayoutReload()V

    :cond_0
    return-void
.end method

.method private printDebugMsg(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 2140
    iget-boolean p0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-nez p0, :cond_0

    if-eqz p3, :cond_1

    .line 2141
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AlertController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private px2dp(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 1

    .line 2283
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p0, v0

    .line 2284
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2285
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2286
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2287
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    invoke-static {p0, v0}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    move-result p0

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    return-object p1
.end method

.method private reInitLandConfig()V
    .locals 2

    .line 2471
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lmiuix/appcompat/R$bool;->treat_as_land:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mMarkLandscape:Z

    .line 2472
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->updateMinorScreenSize()V

    return-void
.end method

.method private resetListMaxHeight()V
    .locals 2

    .line 1130
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    const v1, 0x3eb33333    # 0.35f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1131
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->getSingleItemMinHeight()I

    move-result v1

    .line 1132
    div-int/2addr v0, v1

    mul-int/2addr v1, v0

    .line 1134
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setMinimumHeight(I)V

    .line 1135
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1136
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1137
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1494
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-ne p0, p2, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    .line 1499
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1501
    :cond_1
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private safeRemoveFromParent(Landroid/view/View;)V
    .locals 0

    .line 1487
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    if-eqz p0, :cond_0

    .line 1489
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setAnimIfEditExistForNonImmersive(Landroid/view/View;)V
    .locals 1

    .line 1025
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mEnableEnterAnim:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 1028
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1029
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lmiuix/appcompat/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 1031
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget p1, Lmiuix/appcompat/R$style;->Animation_Dialog_ExistIme:I

    invoke-virtual {p0, p1}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_2
    return-void
.end method

.method private setupButtons(Landroid/view/ViewGroup;)V
    .locals 11

    const v0, 0x1020019

    .line 1313
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 1314
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1315
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1316
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1318
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 1319
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    move v0, v3

    goto :goto_0

    .line 1321
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1322
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1324
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->disableForceDark(Landroid/view/View;)V

    move v0, v2

    :goto_0
    const v4, 0x102001a

    .line 1327
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 1328
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1329
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1330
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1332
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1333
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 1335
    :cond_1
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1336
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    .line 1338
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lmiuix/appcompat/app/AlertController;->disableForceDark(Landroid/view/View;)V

    :goto_1
    const v4, 0x102001b

    .line 1341
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 1342
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1343
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1344
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mDefaultButtonsTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1346
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1347
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 1349
    :cond_2
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1350
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setVisibility(I)V

    add-int/lit8 v0, v0, 0x1

    .line 1352
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v4}, Lmiuix/appcompat/app/AlertController;->disableForceDark(Landroid/view/View;)V

    .line 1355
    :goto_2
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_8

    .line 1356
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiuix/appcompat/app/AlertController$ButtonInfo;

    .line 1357
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 1358
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v6

    invoke-direct {p0, v6}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    goto :goto_3

    .line 1361
    :cond_4
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiuix/appcompat/app/AlertController$ButtonInfo;

    .line 1362
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v7

    if-nez v7, :cond_5

    .line 1363
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v7, v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1364
    new-instance v8, Lmiuix/internal/widget/GroupButton;

    iget-object v9, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$1700(Lmiuix/appcompat/app/AlertController$ButtonInfo;)I

    move-result v10

    invoke-direct {v8, v9, v5, v10}, Lmiuix/internal/widget/GroupButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {v6, v8}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$602(Lmiuix/appcompat/app/AlertController$ButtonInfo;Lmiuix/internal/widget/GroupButton;)Lmiuix/internal/widget/GroupButton;

    .line 1365
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v8

    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$1200(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1366
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v8

    iget-object v9, p0, Lmiuix/appcompat/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1367
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1368
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/widget/Button;->setMaxLines(I)V

    .line 1369
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v7

    const/16 v8, 0x11

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setGravity(I)V

    .line 1371
    :cond_5
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$700(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Landroid/os/Message;

    move-result-object v7

    if-nez v7, :cond_6

    .line 1372
    iget-object v7, p0, Lmiuix/appcompat/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$1300(Lmiuix/appcompat/app/AlertController$ButtonInfo;)I

    move-result v8

    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$1800(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-static {v6, v7}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$702(Lmiuix/appcompat/app/AlertController$ButtonInfo;Landroid/os/Message;)Landroid/os/Message;

    .line 1374
    :cond_6
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Button;->getVisibility()I

    move-result v7

    if-eq v7, v1, :cond_7

    add-int/lit8 v0, v0, 0x1

    .line 1376
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v7

    invoke-direct {p0, v7}, Lmiuix/appcompat/app/AlertController;->disableForceDark(Landroid/view/View;)V

    .line 1378
    :cond_7
    invoke-static {v6}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_4

    :cond_8
    if-nez v0, :cond_9

    .line 1383
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_9

    .line 1385
    :cond_9
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiuix/core/util/WindowUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    .line 1387
    iget-boolean v4, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-eqz v4, :cond_a

    if-eqz v1, :cond_a

    move v1, v2

    goto :goto_5

    :cond_a
    move v1, v3

    .line 1389
    :goto_5
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lmiuix/core/util/MiuixUIUtils;->getFontLevel(Landroid/content/Context;)I

    move-result v4

    const/4 v6, 0x2

    if-ne v4, v6, :cond_b

    move v4, v2

    goto :goto_6

    :cond_b
    move v4, v3

    .line 1390
    :goto_6
    iget-boolean v6, p0, Lmiuix/appcompat/app/AlertController;->mButtonForceVertical:Z

    if-nez v6, :cond_d

    iget-boolean v6, p0, Lmiuix/appcompat/app/AlertController;->mLandscapePanel:Z

    if-nez v6, :cond_d

    if-nez v1, :cond_d

    if-eqz v4, :cond_c

    goto :goto_7

    :cond_c
    move v1, v3

    goto :goto_8

    :cond_d
    :goto_7
    move v1, v2

    .line 1391
    :goto_8
    move-object v4, p1

    check-cast v4, Lmiuix/appcompat/internal/widget/DialogButtonPanel;

    invoke-virtual {v4, v1}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->setForceVertical(Z)V

    .line 1394
    :goto_9
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1395
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 1396
    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1397
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    sget v6, Lmiuix/appcompat/R$id;->contentPanel:I

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 1399
    move-object v6, p1

    check-cast v6, Lmiuix/appcompat/internal/widget/DialogButtonPanel;

    invoke-direct {p0, v6, v0}, Lmiuix/appcompat/app/AlertController;->buttonNeedScrollable(Lmiuix/appcompat/internal/widget/DialogButtonPanel;I)Z

    move-result v0

    .line 1400
    iget-object v6, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    int-to-float v1, v1

    const v7, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v7

    cmpg-float v1, v6, v1

    if-lez v1, :cond_f

    if-eqz v0, :cond_e

    goto :goto_a

    :cond_e
    move v2, v3

    .line 1401
    :cond_f
    :goto_a
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mLandscapePanel:Z

    if-nez v0, :cond_11

    if-nez v2, :cond_10

    .line 1403
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-direct {p0, p1, v0}, Lmiuix/appcompat/app/AlertController;->safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_b

    .line 1405
    :cond_10
    invoke-direct {p0, p1, v4}, Lmiuix/appcompat/app/AlertController;->safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 1406
    check-cast v4, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    invoke-virtual {v4, v5}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    :cond_11
    :goto_b
    return-void
.end method

.method private setupCheckbox(Landroid/view/ViewGroup;Landroid/view/ViewStub;)V
    .locals 2

    .line 1681
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCheckBoxMessage:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1682
    invoke-virtual {p2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    const p2, 0x1020001

    .line 1683
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/CheckBox;

    .line 1684
    invoke-virtual {p2, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1685
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsChecked:Z

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1686
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCheckBoxMessage:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 1688
    :cond_0
    sget p2, Lmiuix/appcompat/R$id;->textAlign:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/app/TextAlignLayout;

    if-eqz p1, :cond_2

    .line 1690
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mCheckBoxMessage:Ljava/lang/CharSequence;

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/TextAlignLayout;->setDialogPanelHasCheckbox(Z)V

    :cond_2
    return-void
.end method

.method private setupContent(Landroid/view/ViewGroup;Z)V
    .locals 9

    const v0, 0x102002b

    .line 1148
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 1151
    new-instance p2, Landroid/animation/LayoutTransition;

    invoke-direct {p2}, Landroid/animation/LayoutTransition;-><init>()V

    const-wide/16 v3, 0xc8

    .line 1152
    invoke-virtual {p2, v2, v3, v4}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 1153
    new-instance v3, Lmiuix/view/animation/CubicEaseInOutInterpolator;

    invoke-direct {v3}, Lmiuix/view/animation/CubicEaseInOutInterpolator;-><init>()V

    invoke-virtual {p2, v2, v3}, Landroid/animation/LayoutTransition;->setInterpolator(ILandroid/animation/TimeInterpolator;)V

    .line 1154
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0

    .line 1156
    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 1160
    :cond_1
    :goto_0
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    const/4 v3, 0x1

    if-eqz p2, :cond_9

    if-eqz v0, :cond_2

    .line 1163
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)Z

    move-result p2

    goto :goto_1

    :cond_2
    move p2, v2

    :goto_1
    const/4 v4, -0x2

    const/4 v5, -0x1

    if-eqz p2, :cond_6

    .line 1168
    sget p2, Lmiuix/appcompat/R$id;->contentView:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1169
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 1170
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1171
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1172
    iget-object v7, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, v7}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 1174
    iget-object v7, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-static {v7, v3}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 1175
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    new-instance v7, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v7, v5, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {v6, v3, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1178
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->listViewIsNeedFullScroll()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1182
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->adjustHeight2WrapContent()V

    .line 1183
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v7, v5, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 1187
    :cond_3
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->resetListMaxHeight()V

    .line 1188
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, 0x0

    invoke-direct {v7, v5, v4, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v6, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1190
    :goto_2
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v5, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    invoke-virtual {p1, v6, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1192
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_4

    .line 1194
    invoke-direct {p0, p2}, Lmiuix/appcompat/app/AlertController;->setupContentView(Landroid/view/ViewGroup;)V

    .line 1197
    :cond_4
    check-cast p1, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    if-nez v3, :cond_5

    move-object v1, v6

    :cond_5
    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    goto/16 :goto_4

    .line 1199
    :cond_6
    sget p2, Lmiuix/appcompat/R$id;->contentView:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    if-eqz v0, :cond_7

    .line 1201
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 1203
    :cond_7
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-direct {p0, p2}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 1205
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->getSingleItemMinHeight()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ListView;->setMinimumHeight(I)V

    .line 1206
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-static {p2, v3}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 1207
    new-instance p2, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p2, v5, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1208
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getVisibleButtonCount()I

    move-result v0

    if-lez v0, :cond_8

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->shouldUseLandscapePanel()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1209
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    iget v0, v0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->listViewMarginBottom:I

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 1211
    :cond_8
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v2, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1213
    check-cast p1, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    goto :goto_4

    .line 1216
    :cond_9
    sget p2, Lmiuix/appcompat/R$id;->contentView:I

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_a

    .line 1218
    invoke-direct {p0, p2}, Lmiuix/appcompat/app/AlertController;->setupContentView(Landroid/view/ViewGroup;)V

    :cond_a
    if-eqz v0, :cond_c

    .line 1222
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->setupCustomContent(Landroid/view/ViewGroup;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 1224
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 1226
    invoke-static {p2, v3}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    :cond_b
    move v2, p0

    .line 1231
    :cond_c
    check-cast p1, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    if-eqz v2, :cond_d

    goto :goto_3

    :cond_d
    move-object v0, v1

    :goto_3
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    :goto_4
    return-void
.end method

.method private setupContentView(Landroid/view/ViewGroup;)V
    .locals 2

    .line 1287
    sget v0, Lmiuix/appcompat/R$id;->message:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 1288
    sget v0, Lmiuix/appcompat/R$id;->comment:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCommentView:Landroid/widget/TextView;

    .line 1289
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 1290
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1292
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mCommentView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    .line 1293
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mComment:Ljava/lang/CharSequence;

    if-eqz p0, :cond_0

    .line 1294
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/16 p0, 0x8

    .line 1296
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 1302
    :cond_1
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setupCustomContent(Landroid/view/ViewGroup;)Z
    .locals 4

    .line 991
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mInflatedView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 992
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mInflatedView:Landroid/view/View;

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 993
    iput-object v1, p0, Lmiuix/appcompat/app/AlertController;->mInflatedView:Landroid/view/View;

    .line 995
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mView:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 997
    :cond_1
    iget v0, p0, Lmiuix/appcompat/app/AlertController;->mViewLayoutResId:I

    if-eqz v0, :cond_2

    .line 998
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 999
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mViewLayoutResId:I

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lmiuix/appcompat/app/AlertController;->mInflatedView:Landroid/view/View;

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    const/4 v2, 0x1

    :cond_3
    const/high16 v0, 0x20000

    if-eqz v2, :cond_5

    .line 1005
    invoke-static {v1}, Lmiuix/appcompat/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    .line 1010
    :cond_4
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v0}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_2

    .line 1006
    :cond_5
    :goto_1
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 1013
    :goto_2
    invoke-direct {p0, v1}, Lmiuix/appcompat/app/AlertController;->setAnimIfEditExistForNonImmersive(Landroid/view/View;)V

    if-eqz v2, :cond_6

    .line 1016
    invoke-direct {p0, v1, p1}, Lmiuix/appcompat/app/AlertController;->safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_3

    .line 1018
    :cond_6
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    :goto_3
    return v2
.end method

.method private setupImmersiveWindow()V
    .locals 3

    .line 2336
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 2337
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$color;->miuix_appcompat_transparent:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 2338
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 2339
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$style;->Animation_Dialog_NoAnimation:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 2340
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, -0x7ffff700

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2345
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v0, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2347
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 2348
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    move-result v2

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-direct {p0, v2, v0}, Lmiuix/appcompat/app/AlertController;->getCutoutMode(II)I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_1

    .line 2351
    :cond_0
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 2356
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 2359
    :goto_1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->clearFitSystemWindow(Landroid/view/View;)V

    .line 2361
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    .line 2362
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v0, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2363
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x400

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 2364
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p0, v1}, Landroid/view/Window;->clearFlags(I)V

    :cond_2
    return-void
.end method

.method private setupNonImmersiveWindow()V
    .locals 10

    const/4 v0, 0x0

    .line 2370
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->getAvailableWindowSizeDp(Landroid/view/WindowInsets;)Landroid/graphics/Point;

    move-result-object v1

    .line 2371
    invoke-direct {p0, v1}, Lmiuix/appcompat/app/AlertController;->updateDialogPanelLayoutParams(Landroid/graphics/Point;)V

    .line 2372
    iget v2, p0, Lmiuix/appcompat/app/AlertController;->mPanelParamsWidth:I

    const/4 v3, -0x1

    const/4 v4, 0x2

    if-ne v2, v3, :cond_0

    .line 2374
    iget v2, p0, Lmiuix/appcompat/app/AlertController;->mPanelParamsHorizontalMargin:I

    .line 2375
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    iget v6, v1, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    invoke-static {v5, v6}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v5

    mul-int/2addr v2, v4

    sub-int v2, v5, v2

    .line 2378
    :cond_0
    iget-boolean v5, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v5, :cond_1

    .line 2379
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setupNonImmersiveWindow: windowWidth = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AlertController"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setupNonImmersiveWindow: availableWindowSizeDp = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setupNonImmersiveWindow: horizontalMargin = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lmiuix/appcompat/app/AlertController;->mPanelParamsHorizontalMargin:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2383
    :cond_1
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mNonImmersiveDialogHeight:I

    if-lez v1, :cond_2

    .line 2384
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-lt v1, v5, :cond_2

    goto :goto_0

    :cond_2
    move v3, v1

    .line 2387
    :goto_0
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getGravity()I

    move-result v1

    .line 2388
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v5, v1}, Landroid/view/Window;->setGravity(I)V

    .line 2389
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    const/16 v6, 0x50

    and-int/2addr v1, v6

    const/4 v7, 0x0

    if-ne v1, v6, :cond_b

    .line 2393
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    iget v1, v1, Lmiuix/appcompat/app/DialogContract$DimensConfig;->widthSmallMargin:I

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    iget v1, v1, Lmiuix/appcompat/app/DialogContract$DimensConfig;->extraImeMargin:I

    .line 2395
    :goto_1
    iget-object v6, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lmiuix/core/util/MiuixUIUtils;->isShowNavigationHandle(Landroid/content/Context;)Z

    move-result v6

    .line 2397
    iget-object v8, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lmiuix/core/util/MiuixUIUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-boolean v8, p0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    if-nez v8, :cond_4

    iget-object v8, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 2398
    invoke-static {v8}, Lmiuix/os/DeviceHelper;->isWideScreen(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/4 v8, 0x1

    goto :goto_2

    :cond_4
    move v8, v7

    .line 2399
    :goto_2
    iget-boolean v9, p0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    if-nez v9, :cond_5

    if-eqz v8, :cond_8

    if-eqz v6, :cond_8

    .line 2401
    :cond_5
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v6

    invoke-direct {p0, v6}, Lmiuix/appcompat/app/AlertController;->getAssociatedActivityInsets(I)Landroid/graphics/Insets;

    move-result-object v6

    .line 2403
    iget-object v8, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    iget v8, v8, Lmiuix/appcompat/app/DialogContract$DimensConfig;->freePhoneCompactHeight:I

    if-eqz v6, :cond_6

    .line 2404
    iget v6, v6, Landroid/graphics/Insets;->bottom:I

    goto :goto_3

    :cond_6
    move v6, v7

    :goto_3
    if-nez v6, :cond_7

    add-int/2addr v1, v8

    goto :goto_4

    :cond_7
    add-int/2addr v1, v6

    .line 2408
    :cond_8
    :goto_4
    iget v6, v5, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v8, 0x8000000

    and-int v9, v6, v8

    if-eqz v9, :cond_9

    .line 2413
    iget-object v9, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v9, v8}, Landroid/view/Window;->clearFlags(I)V

    :cond_9
    const/high16 v8, 0x4000000

    and-int/2addr v6, v8

    if-eqz v6, :cond_a

    .line 2418
    iget-object v6, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v6, v8}, Landroid/view/Window;->clearFlags(I)V

    :cond_a
    int-to-float v1, v1

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v1, v6

    .line 2421
    iget-object v6, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    div-float/2addr v1, v6

    iput v1, v5, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 2428
    :cond_b
    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 2430
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v5}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 2431
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    .line 2433
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const/high16 v4, 0x40000

    invoke-virtual {v1, v4}, Landroid/view/Window;->addFlags(I)V

    .line 2434
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_c

    sget v4, Lmiuix/theme/token/DimToken;->DIM_DARK:F

    goto :goto_5

    :cond_c
    sget v4, Lmiuix/theme/token/DimToken;->DIM_LIGHT:F

    :goto_5
    invoke-virtual {v1, v4}, Landroid/view/Window;->setDimAmount(F)V

    .line 2435
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setLayout(II)V

    .line 2436
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v3, Lmiuix/appcompat/R$color;->miuix_appcompat_transparent:I

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 2437
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    if-eqz v1, :cond_e

    .line 2439
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 2440
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 2441
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 2442
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isSpecifiedDialogHeight()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2443
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getGravity()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2445
    :cond_d
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2446
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 2448
    :cond_e
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mEnableEnterAnim:Z

    if-eqz v0, :cond_f

    .line 2449
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2450
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v0, Lmiuix/appcompat/R$style;->Animation_Dialog_Center:I

    invoke-virtual {p0, v0}, Landroid/view/Window;->setWindowAnimations(I)V

    goto :goto_6

    .line 2453
    :cond_f
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p0, v7}, Landroid/view/Window;->setWindowAnimations(I)V

    :cond_10
    :goto_6
    return-void
.end method

.method private setupTitle(Landroid/view/ViewGroup;)V
    .locals 7

    .line 1047
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x1020006

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1048
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const/16 v2, 0x8

    if-eqz v1, :cond_0

    .line 1049
    invoke-direct {p0, v1}, Lmiuix/appcompat/app/AlertController;->safeRemoveFromParent(Landroid/view/View;)V

    .line 1051
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1053
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1056
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget p1, Lmiuix/appcompat/R$id;->alertTitle:I

    invoke-virtual {p0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 1057
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1058
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1060
    :cond_0
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_5

    .line 1061
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mShowTitle:Z

    if-eqz v1, :cond_5

    .line 1063
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v3, Lmiuix/appcompat/R$id;->alertTitle:I

    invoke-virtual {v1, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmiuix/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 1064
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1069
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mIconId:I

    if-eqz v1, :cond_1

    .line 1070
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 1071
    :cond_1
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 1072
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1076
    :cond_2
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v3

    .line 1077
    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v4

    .line 1078
    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v5

    .line 1079
    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v6

    .line 1076
    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1080
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1082
    :goto_0
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mSmallIcon:Z

    if-eqz v1, :cond_3

    .line 1083
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1084
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    iget v4, v3, Lmiuix/appcompat/app/DialogContract$DimensConfig;->smallIconWidth:I

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1085
    iget v3, v3, Lmiuix/appcompat/app/DialogContract$DimensConfig;->smallIconHeight:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1087
    :cond_3
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mIconWidth:I

    if-eqz v1, :cond_4

    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mIconHeight:I

    if-eqz v1, :cond_4

    .line 1088
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1089
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mIconWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1090
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mIconHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1094
    :cond_4
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p1

    if-eq p1, v2, :cond_6

    .line 1095
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->changeTitlePadding(Landroid/widget/TextView;)V

    goto :goto_1

    .line 1099
    :cond_5
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$id;->alertTitle:I

    invoke-virtual {p0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 1100
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1101
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1102
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method private setupView()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 811
    invoke-direct {p0, v0, v1, v1, v2}, Lmiuix/appcompat/app/AlertController;->setupView(ZZZF)V

    .line 812
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->storeCustomViewInitialTextSize()V

    return-void
.end method

.method private setupView(ZZZF)V
    .locals 3

    .line 843
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    new-instance v2, Lmiuix/appcompat/app/AlertController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lmiuix/appcompat/app/AlertController$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/app/AlertController;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 853
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->updateImmersiveDialogPanel()V

    goto :goto_0

    .line 855
    :cond_0
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isSpecifiedDialogHeight()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 856
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    new-instance v2, Lmiuix/appcompat/app/AlertController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lmiuix/appcompat/app/AlertController$$ExternalSyntheticLambda1;-><init>(Lmiuix/appcompat/app/AlertController;)V

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 863
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    if-nez p1, :cond_3

    if-nez p2, :cond_3

    .line 869
    iget-boolean p2, p0, Lmiuix/appcompat/app/AlertController;->mPreferLandscape:Z

    if-eqz p2, :cond_2

    goto :goto_1

    .line 921
    :cond_2
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    new-instance p2, Lmiuix/appcompat/app/AlertController$6;

    invoke-direct {p2, p0, p4}, Lmiuix/appcompat/app/AlertController$6;-><init>(Lmiuix/appcompat/app/AlertController;F)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    .line 870
    :cond_3
    :goto_1
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    sget p4, Lmiuix/appcompat/R$id;->topPanel:I

    invoke-virtual {p2, p4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 871
    iget-object p4, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    sget v0, Lmiuix/appcompat/R$id;->contentPanel:I

    invoke-virtual {p4, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    .line 872
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    sget v2, Lmiuix/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz p4, :cond_4

    .line 875
    invoke-direct {p0, p4, p3}, Lmiuix/appcompat/app/AlertController;->setupContent(Landroid/view/ViewGroup;Z)V

    :cond_4
    if-eqz v0, :cond_5

    .line 879
    move-object p3, v0

    check-cast p3, Lmiuix/appcompat/internal/widget/DialogButtonPanel;

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->shouldUseLandscapePanel()Z

    move-result p4

    invoke-virtual {p3, p4}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->isContentLandscape(Z)V

    .line 880
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->setupButtons(Landroid/view/ViewGroup;)V

    :cond_5
    if-eqz p2, :cond_6

    .line 884
    invoke-direct {p0, p2}, Lmiuix/appcompat/app/AlertController;->setupTitle(Landroid/view/ViewGroup;)V

    :cond_6
    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eqz p2, :cond_7

    .line 887
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_7

    move v0, p3

    goto :goto_2

    :cond_7
    move v0, p4

    :goto_2
    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 892
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v1, :cond_8

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz v1, :cond_9

    .line 893
    :cond_8
    sget v0, Lmiuix/appcompat/R$id;->titleDividerNoCustom:I

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_9
    if-eqz v0, :cond_a

    .line 897
    invoke-virtual {v0, p4}, Landroid/view/View;->setVisibility(I)V

    .line 901
    :cond_a
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    if-eqz p2, :cond_b

    .line 902
    iget-object p4, p0, Lmiuix/appcompat/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz p4, :cond_b

    .line 903
    invoke-virtual {p2, p4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 904
    iget p4, p0, Lmiuix/appcompat/app/AlertController;->mCheckedItem:I

    const/4 v0, -0x1

    if-le p4, v0, :cond_b

    .line 906
    invoke-virtual {p2, p4, p3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 907
    invoke-virtual {p2, p4}, Landroid/widget/ListView;->setSelection(I)V

    .line 912
    :cond_b
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    sget p3, Lmiuix/appcompat/R$id;->checkbox_stub:I

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewStub;

    if-eqz p2, :cond_c

    .line 914
    iget-object p3, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-direct {p0, p3, p2}, Lmiuix/appcompat/app/AlertController;->setupCheckbox(Landroid/view/ViewGroup;Landroid/view/ViewStub;)V

    :cond_c
    if-nez p1, :cond_d

    .line 918
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->onLayoutReload()V

    .line 940
    :cond_d
    :goto_3
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    new-instance p2, Lmiuix/appcompat/app/AlertController$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lmiuix/appcompat/app/AlertController$$ExternalSyntheticLambda2;-><init>(Lmiuix/appcompat/app/AlertController;)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private setupWindow()V
    .locals 1

    .line 2328
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2329
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->setupImmersiveWindow()V

    goto :goto_0

    .line 2331
    :cond_0
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->setupNonImmersiveWindow()V

    :goto_0
    return-void
.end method

.method private setupWindowInsetsAnimation()V
    .locals 3

    .line 1510
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1513
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit8 v0, v0, 0xf

    or-int/lit8 v0, v0, 0x30

    .line 1516
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1517
    new-instance v0, Lmiuix/appcompat/app/AlertController$7;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/AlertController$7;-><init>(Lmiuix/appcompat/app/AlertController;I)V

    .line 1593
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 1597
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Lmiuix/appcompat/app/AlertController$8;

    invoke-direct {v2, p0}, Lmiuix/appcompat/app/AlertController$8;-><init>(Lmiuix/appcompat/app/AlertController;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 1624
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mSetupWindowInsetsAnimation:Z

    return-void
.end method

.method private shouldUseLandscapePanel()Z
    .locals 4

    .line 1776
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getVisibleButtonCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1781
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 1782
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    iget v3, v3, Lmiuix/appcompat/app/DialogContract$DimensConfig;->panelMaxWidthLand:I

    if-ge v2, v3, :cond_1

    return v1

    :cond_1
    mul-int/lit8 v2, v2, 0x2

    if-gt v2, v0, :cond_2

    return v1

    .line 1790
    :cond_2
    iget-boolean p0, p0, Lmiuix/appcompat/app/AlertController;->mPreferLandscape:Z

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method private showSystemAlertInFlip()Z
    .locals 4

    .line 2252
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x7f6

    if-eq v0, v3, :cond_1

    const/16 v3, 0x7d3

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    .line 2255
    :goto_1
    iget-boolean v3, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-eqz v3, :cond_3

    if-nez v0, :cond_2

    iget-boolean p0, p0, Lmiuix/appcompat/app/AlertController;->mUseForceFlipCutout:Z

    if-eqz p0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1
.end method

.method private storeCustomViewInitialTextSize()V
    .locals 4

    .line 818
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 819
    iget v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 820
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 822
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v2, :cond_0

    const v3, 0x1020016

    .line 823
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextView:Landroid/widget/TextView;

    .line 825
    :cond_0
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 826
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    iput v2, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextSize:F

    .line 829
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSizeUnit()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 834
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextSize:F

    div-float/2addr v1, v0

    iput v1, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextSize:F

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne v2, v0, :cond_2

    .line 836
    iget v0, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextSize:F

    div-float/2addr v0, v1

    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextSize:F

    :cond_2
    :goto_0
    return-void
.end method

.method private translateDialogPanel(I)V
    .locals 2

    .line 2791
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v0, :cond_0

    .line 2792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The DialogPanel transitionY for : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AlertController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2794
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 2795
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    return-void
.end method

.method private updateButtons(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V
    .locals 7

    .line 1464
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getVisibleButtonCount()I

    move-result v0

    .line 1465
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 1466
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 1467
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1469
    move-object v2, p1

    check-cast v2, Lmiuix/appcompat/internal/widget/DialogButtonPanel;

    invoke-direct {p0, v2, v0}, Lmiuix/appcompat/app/AlertController;->buttonNeedScrollable(Lmiuix/appcompat/internal/widget/DialogButtonPanel;I)Z

    move-result v0

    .line 1470
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    int-to-float v1, v1

    const v4, 0x3e99999a    # 0.3f

    mul-float/2addr v1, v4

    cmpg-float v1, v3, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v4

    .line 1471
    :goto_1
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_2

    move v1, v4

    goto :goto_2

    :cond_2
    move v1, v3

    .line 1473
    :goto_2
    iget-boolean v5, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-eqz v5, :cond_3

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_3

    :cond_3
    move v1, v3

    .line 1475
    :goto_3
    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lmiuix/core/util/MiuixUIUtils;->getFontLevel(Landroid/content/Context;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    move v5, v4

    goto :goto_4

    :cond_4
    move v5, v3

    .line 1476
    :goto_4
    iget-boolean v6, p0, Lmiuix/appcompat/app/AlertController;->mButtonForceVertical:Z

    if-nez v6, :cond_5

    iget-boolean v6, p0, Lmiuix/appcompat/app/AlertController;->mLandscapePanel:Z

    if-nez v6, :cond_5

    if-nez v1, :cond_5

    if-eqz v5, :cond_6

    :cond_5
    move v3, v4

    .line 1477
    :cond_6
    invoke-virtual {v2, v3}, Lmiuix/appcompat/internal/widget/DialogButtonPanel;->setForceVertical(Z)V

    if-nez v0, :cond_7

    .line 1479
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/AlertController;->safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V

    goto :goto_5

    .line 1481
    :cond_7
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/app/AlertController;->safeMoveView(Landroid/view/View;Landroid/view/ViewGroup;)V

    .line 1482
    check-cast p2, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    :goto_5
    return-void
.end method

.method private updateContent(Landroid/view/ViewGroup;)V
    .locals 6

    const v0, 0x102002b

    .line 1241
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1243
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 1246
    :goto_0
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x0

    if-eqz v4, :cond_3

    if-eqz v3, :cond_2

    .line 1250
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->listViewIsNeedFullScroll()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1253
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->adjustHeight2WrapContent()V

    .line 1254
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1255
    iput v2, p0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 1256
    iput v1, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1257
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1258
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 1259
    move-object v0, p1

    check-cast v0, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    invoke-virtual {v0, p0}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    .line 1260
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_2

    .line 1264
    :cond_1
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->resetListMaxHeight()V

    .line 1265
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    .line 1266
    iput v1, p0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    const/4 v1, 0x0

    .line 1267
    iput v1, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1268
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1269
    move-object p0, p1

    check-cast p0, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    invoke-virtual {p0, v5}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    .line 1270
    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_2

    .line 1274
    :cond_2
    check-cast p1, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    invoke-virtual {p1, v4}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_4

    .line 1279
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 1280
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat;->setNestedScrollingEnabled(Landroid/view/View;Z)V

    .line 1282
    :cond_4
    check-cast p1, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;

    if-eqz v3, :cond_5

    goto :goto_1

    :cond_5
    move-object v0, v5

    :goto_1
    invoke-virtual {p1, v0}, Lmiuix/appcompat/internal/widget/NestedScrollViewExpander;->setExpandView(Landroid/view/View;)V

    :goto_2
    return-void
.end method

.method private updateDialogPanelByWindowInsets(Landroid/view/WindowInsets;)V
    .locals 6

    .line 3253
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateParentPanelMarginByWindowInsets(Landroid/view/WindowInsets;)V

    .line 3254
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isNeedUpdateDialogPanelTranslationY()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3255
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result v0

    .line 3256
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v1

    .line 3257
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v2

    .line 3258
    iget-boolean v3, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    const-string v4, "AlertController"

    if-eqz v3, :cond_0

    const-string v3, "======================Debug for checkTranslateDialogPanel======================"

    .line 3259
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3260
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The mPanelAndImeMargin: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3261
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The imeInsets info: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Insets;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3262
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The navigationBarInsets info: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/graphics/Insets;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3263
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The insets info: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3265
    :cond_0
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    move-result p1

    if-nez p1, :cond_1

    .line 3267
    iget v3, v1, Landroid/graphics/Insets;->bottom:I

    invoke-direct {p0, v3}, Lmiuix/appcompat/app/AlertController;->updateDimBgBottomMargin(I)V

    .line 3269
    :cond_1
    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 3271
    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    sub-int/2addr v1, v2

    .line 3273
    :cond_2
    invoke-direct {p0, v1, v0, p1}, Lmiuix/appcompat/app/AlertController;->updateDialogPanelTranslationYByIme(IZZ)V

    .line 3274
    iget-boolean p0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz p0, :cond_3

    const-string p0, "===================End of Debug for checkTranslateDialogPanel==================="

    .line 3275
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private updateDialogPanelLayoutParams(Landroid/graphics/Point;)V
    .locals 17

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 1853
    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertController;->getAvailableWindowSizeDp(Landroid/view/WindowInsets;)Landroid/graphics/Point;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    .line 1855
    :goto_0
    new-instance v8, Lmiuix/appcompat/app/DialogContract$OrientationSpec;

    invoke-direct {v8}, Lmiuix/appcompat/app/DialogContract$OrientationSpec;-><init>()V

    .line 1856
    iget-object v2, v8, Lmiuix/appcompat/app/DialogContract$OrientationSpec;->mUsableWindowSizeDp:Landroid/graphics/Point;

    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 1857
    iget-object v2, v8, Lmiuix/appcompat/app/DialogContract$OrientationSpec;->mWindowSize:Landroid/graphics/Point;

    iget-object v3, v0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Point;->set(II)V

    .line 1858
    iget-object v2, v0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    iget-object v3, v8, Lmiuix/appcompat/app/DialogContract$OrientationSpec;->mRealScreenSize:Landroid/graphics/Point;

    invoke-static {v2, v3}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 1859
    iget-boolean v3, v0, Lmiuix/appcompat/app/AlertController;->mMarkLandscape:Z

    iget-boolean v4, v0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    move-result v5

    iget-boolean v6, v0, Lmiuix/appcompat/app/AlertController;->mIsCarWithScreen:Z

    iget-boolean v7, v0, Lmiuix/appcompat/app/AlertController;->mIsSynergy:Z

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Lmiuix/appcompat/app/DialogContract$OrientationSpec;->updateData(ZZIZZ)V

    .line 1860
    iget-object v2, v0, Lmiuix/appcompat/app/AlertController;->mDisplayStrategy:Lmiuix/appcompat/app/DialogDisplayStrategy;

    invoke-virtual {v2, v8}, Lmiuix/appcompat/app/DialogDisplayStrategy;->isLandscapeWindow(Lmiuix/appcompat/app/DialogContract$OrientationSpec;)Z

    move-result v11

    .line 1861
    iget v14, v1, Landroid/graphics/Point;->x:I

    .line 1862
    iget-object v1, v0, Lmiuix/appcompat/app/AlertController;->mDisplayStrategy:Lmiuix/appcompat/app/DialogDisplayStrategy;

    invoke-virtual {v1, v14}, Lmiuix/appcompat/app/DialogDisplayStrategy;->shouldLimitPanelWidth(I)Z

    move-result v1

    .line 1863
    iget-boolean v2, v0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v2, :cond_1

    .line 1864
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDialogPanelLayoutParams isLandScape "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AlertController"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1865
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDialogPanelLayoutParams shouldLimitWidth "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x0

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_1

    .line 1871
    :cond_2
    iget-object v1, v0, Lmiuix/appcompat/app/AlertController;->mDisplayStrategy:Lmiuix/appcompat/app/DialogDisplayStrategy;

    iget-object v3, v0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    invoke-virtual {v1, v3, v14}, Lmiuix/appcompat/app/DialogDisplayStrategy;->getWidthMargin(Lmiuix/appcompat/app/DialogContract$DimensConfig;I)I

    move-result v1

    .line 1873
    :goto_1
    iput-boolean v11, v0, Lmiuix/appcompat/app/AlertController;->mIsWindowLandScape:Z

    .line 1874
    new-instance v3, Lmiuix/appcompat/app/DialogContract$PanelWidthSpec;

    invoke-direct {v3}, Lmiuix/appcompat/app/DialogContract$PanelWidthSpec;-><init>()V

    .line 1875
    iget-boolean v4, v0, Lmiuix/appcompat/app/AlertController;->mPreferLandscape:Z

    if-eqz v4, :cond_3

    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/app/AlertController;->shouldUseLandscapePanel()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v2, 0x1

    :cond_3
    move v10, v2

    iget-boolean v12, v0, Lmiuix/appcompat/app/AlertController;->mIsCarWithScreen:Z

    iget-boolean v13, v0, Lmiuix/appcompat/app/AlertController;->mMarkLandscape:Z

    iget v15, v0, Lmiuix/appcompat/app/AlertController;->mScreenMinorSize:I

    iget-boolean v2, v0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    move-object v9, v3

    move/from16 v16, v2

    invoke-virtual/range {v9 .. v16}, Lmiuix/appcompat/app/DialogContract$PanelWidthSpec;->updateData(ZZZZIIZ)V

    .line 1878
    iget-object v2, v0, Lmiuix/appcompat/app/AlertController;->mDisplayStrategy:Lmiuix/appcompat/app/DialogDisplayStrategy;

    iget-object v4, v0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    invoke-virtual {v2, v3, v4}, Lmiuix/appcompat/app/DialogDisplayStrategy;->getPanelWidth(Lmiuix/appcompat/app/DialogContract$PanelWidthSpec;Lmiuix/appcompat/app/DialogContract$DimensConfig;)I

    move-result v2

    iput v2, v0, Lmiuix/appcompat/app/AlertController;->mPanelParamsWidth:I

    .line 1879
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/app/AlertController;->inflateDialogLayout()V

    .line 1880
    iput v1, v0, Lmiuix/appcompat/app/AlertController;->mPanelParamsHorizontalMargin:I

    return-void
.end method

.method private updateDialogPanelTranslationYByIme(IZZ)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "AlertController"

    if-lez p1, :cond_7

    .line 3325
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getDialogPanelMargin()I

    move-result v2

    .line 3326
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result v3

    int-to-float v2, v2

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 3327
    iput v2, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    if-gtz v2, :cond_0

    .line 3329
    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    .line 3331
    :cond_0
    iget-boolean v2, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v2, :cond_1

    .line 3332
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDialogPanelTranslationYByIme mPanelAndImeMargin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isMultiWindowMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " imeBottom "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    neg-int p2, p1

    goto :goto_0

    :cond_2
    neg-int p2, p1

    .line 3337
    iget v2, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    add-int/2addr p2, v2

    :goto_0
    if-eqz p3, :cond_3

    .line 3339
    iget p3, p0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    if-ge p1, p3, :cond_3

    goto :goto_1

    :cond_3
    move v0, p2

    .line 3342
    :goto_1
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDialogAnimating:Z

    if-eqz p1, :cond_5

    .line 3345
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz p1, :cond_4

    .line 3346
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateDialogPanelTranslationYByIme anim translateDialogPanel Y="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3348
    :cond_4
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3349
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const-wide/16 p1, 0xc8

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    int-to-float p1, v0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_2

    .line 3351
    :cond_5
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz p1, :cond_6

    .line 3352
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "updateDialogPanelTranslationYByIme translateDialogPanel Y="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3354
    :cond_6
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->translateDialogPanel(I)V

    goto :goto_2

    .line 3358
    :cond_7
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz p1, :cond_8

    const-string p1, "updateDialogPanelTranslationYByIme imeBottom <= 0"

    .line 3359
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3362
    :cond_8
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_9

    .line 3363
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->translateDialogPanel(I)V

    :cond_9
    :goto_2
    return-void
.end method

.method private updateDimBgBottomMargin(I)V
    .locals 2

    .line 2319
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    .line 2320
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2321
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v1, p1, :cond_0

    .line 2322
    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 2323
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_0
    return-void
.end method

.method private updateDimensConfig(Landroid/content/res/Resources;)V
    .locals 2

    .line 429
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_max_width:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->panelMaxWidth:I

    .line 430
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_max_width_land:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->panelMaxWidthLand:I

    .line 431
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_list_view_margin_bottom:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->listViewMarginBottom:I

    .line 432
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_ime_margin:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->extraImeMargin:I

    .line 433
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    sget v1, Lmiuix/appcompat/R$dimen;->fake_landscape_screen_minor_size:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->fakeLandScreenMinorSize:I

    .line 434
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_width_small_margin:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->widthSmallMargin:I

    .line 435
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_width_margin:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->widthMargin:I

    .line 436
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_freeform_bottom_height_tablet_t:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->freeTabletCompactHeight:I

    .line 437
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_freeform_bottom_height_phone_t:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->freePhoneCompactHeight:I

    .line 438
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_icon_drawable_width_small:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->smallIconWidth:I

    .line 439
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    sget v0, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_icon_drawable_height_small:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->smallIconHeight:I

    return-void
.end method

.method private updateDisplayInfo(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 443
    invoke-static {p1, v0}, Lmiuix/os/DeviceHelper;->isCarWithScreen(Landroid/content/Context;Landroid/view/Display;)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsCarWithScreen:Z

    if-nez v0, :cond_0

    .line 445
    invoke-static {p1}, Lmiuix/os/DeviceHelper;->isXiaomiSynergy(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsSynergy:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 447
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsSynergy:Z

    :goto_0
    return-void
.end method

.method private updateImmersiveDialogPanel()V
    .locals 4

    const/4 v0, 0x0

    .line 1830
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->getAvailableWindowSizeDp(Landroid/view/WindowInsets;)Landroid/graphics/Point;

    move-result-object v0

    .line 1831
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->updateDialogPanelLayoutParams(Landroid/graphics/Point;)V

    .line 1832
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mPanelParamsWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 1835
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-static {v1, v0}, Lmiuix/core/util/MiuixUIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    .line 1836
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mPanelParamsHorizontalMargin:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    .line 1838
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1839
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getGravity()I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1840
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mPanelParamsWidth:I

    if-ne v1, v2, :cond_1

    .line 1841
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mPanelParamsHorizontalMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 1842
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 1844
    :cond_1
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateMinorScreenSize()V
    .locals 3

    .line 1668
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1669
    iget v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr v0, v2

    mul-float/2addr v1, v0

    float-to-int v0, v1

    if-lez v0, :cond_0

    .line 1672
    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mScreenMinorSize:I

    goto :goto_0

    .line 1674
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1675
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1676
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mScreenMinorSize:I

    :goto_0
    return-void
.end method

.method private updateParentPanelMarginByWindowInsets(Landroid/view/WindowInsets;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1991
    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    move-result v2

    if-nez v2, :cond_16

    if-nez v1, :cond_0

    goto/16 :goto_a

    .line 1996
    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v2

    .line 1997
    invoke-static {v2}, Lmiuix/appcompat/app/DialogContract;->insetsToRect(Landroid/graphics/Insets;)Landroid/graphics/Rect;

    move-result-object v3

    .line 1999
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v4

    .line 2000
    iget-object v5, v0, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->setEmpty()V

    .line 2001
    iget-object v5, v0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    .line 2002
    iget-object v6, v0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v6

    .line 2003
    iget-object v7, v0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->x:I

    if-eqz v8, :cond_2

    iget v7, v7, Landroid/graphics/Point;->y:I

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    move v10, v5

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v5, 0x0

    .line 2008
    invoke-direct {v0, v5}, Lmiuix/appcompat/app/AlertController;->updateRootViewSize(Landroid/content/res/Configuration;)V

    .line 2009
    iget-object v5, v0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    .line 2010
    iget v5, v5, Landroid/graphics/Point;->y:I

    move v10, v6

    move v6, v5

    :goto_1
    if-eqz v4, :cond_3

    .line 2013
    iget-boolean v5, v0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    if-nez v5, :cond_3

    .line 2015
    iget-object v5, v0, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    iget v7, v4, Landroid/graphics/Insets;->left:I

    iget v8, v4, Landroid/graphics/Insets;->top:I

    iget v9, v4, Landroid/graphics/Insets;->right:I

    iget v4, v4, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v5, v7, v8, v9, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2018
    :cond_3
    iget-boolean v4, v0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    .line 2019
    invoke-direct {v0, v1, v5}, Lmiuix/appcompat/app/AlertController;->getGuaranteedCutout(Landroid/view/WindowInsets;Z)Landroid/graphics/Rect;

    move-result-object v4

    .line 2020
    iget-object v7, v0, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    iget v8, v4, Landroid/graphics/Rect;->left:I

    iget v9, v4, Landroid/graphics/Rect;->top:I

    iget v11, v4, Landroid/graphics/Rect;->right:I

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v8, v9, v11, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2023
    :cond_4
    iget-object v4, v0, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    invoke-static {v3, v4}, Lmiuix/appcompat/app/DialogContract;->mergeInsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    .line 2024
    iget-boolean v4, v0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v4, :cond_5

    .line 2025
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateParentPanelMargin systemBarInsets: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "AlertController"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateParentPanelMargin mDisplayCutoutSafeInsets: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateParentPanelMargin boundInsets = "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2031
    :cond_5
    new-instance v4, Landroid/graphics/Point;

    iget-object v7, v0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v8, v7, Landroid/graphics/Point;->x:I

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-direct {v4, v8, v7}, Landroid/graphics/Point;-><init>(II)V

    if-eqz v10, :cond_6

    .line 2032
    iget v7, v4, Landroid/graphics/Point;->x:I

    if-eq v10, v7, :cond_6

    .line 2034
    iput v10, v4, Landroid/graphics/Point;->x:I

    .line 2035
    iput v6, v4, Landroid/graphics/Point;->y:I

    .line 2037
    :cond_6
    iget-object v6, v0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 2040
    new-instance v7, Lmiuix/appcompat/app/DialogContract$OrientationSpec;

    invoke-direct {v7}, Lmiuix/appcompat/app/DialogContract$OrientationSpec;-><init>()V

    .line 2041
    iget-object v8, v0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lmiuix/core/util/EnvStateManager;->getWindowSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v8

    .line 2042
    iget-boolean v12, v0, Lmiuix/appcompat/app/AlertController;->mMarkLandscape:Z

    iget-boolean v13, v0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    move-result v14

    iget-boolean v15, v0, Lmiuix/appcompat/app/AlertController;->mIsCarWithScreen:Z

    iget-boolean v9, v0, Lmiuix/appcompat/app/AlertController;->mIsSynergy:Z

    move-object v11, v7

    move/from16 v16, v9

    invoke-virtual/range {v11 .. v16}, Lmiuix/appcompat/app/DialogContract$OrientationSpec;->updateData(ZZIZZ)V

    .line 2043
    iget-object v9, v7, Lmiuix/appcompat/app/DialogContract$OrientationSpec;->mWindowSize:Landroid/graphics/Point;

    iget v11, v8, Landroid/graphics/Point;->x:I

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v11, v8}, Landroid/graphics/Point;->set(II)V

    .line 2044
    iget-object v8, v0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    iget-object v9, v7, Lmiuix/appcompat/app/DialogContract$OrientationSpec;->mRealScreenSize:Landroid/graphics/Point;

    invoke-static {v8, v9}, Lmiuix/core/util/WindowUtils;->getScreenSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 2046
    iget-object v8, v0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v8, v8

    const/high16 v9, 0x43200000    # 160.0f

    div-float/2addr v8, v9

    .line 2047
    iget v9, v4, Landroid/graphics/Point;->x:I

    iget v11, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v11

    iget v11, v3, Landroid/graphics/Rect;->right:I

    sub-int v13, v9, v11

    .line 2048
    iget v4, v4, Landroid/graphics/Point;->y:I

    iget v9, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v9

    iget v9, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v9

    int-to-float v9, v13

    .line 2049
    invoke-static {v8, v9}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    move-result v12

    int-to-float v4, v4

    .line 2050
    invoke-static {v8, v4}, Lmiuix/core/util/MiuixUIUtils;->px2dp(FF)I

    move-result v4

    .line 2051
    iget-object v8, v7, Lmiuix/appcompat/app/DialogContract$OrientationSpec;->mUsableWindowSizeDp:Landroid/graphics/Point;

    invoke-virtual {v8, v12, v4}, Landroid/graphics/Point;->set(II)V

    .line 2053
    iget-object v4, v0, Lmiuix/appcompat/app/AlertController;->mDisplayStrategy:Lmiuix/appcompat/app/DialogDisplayStrategy;

    invoke-virtual {v4, v7}, Lmiuix/appcompat/app/DialogDisplayStrategy;->isLandscapeWindow(Lmiuix/appcompat/app/DialogContract$OrientationSpec;)Z

    move-result v16

    .line 2055
    new-instance v4, Lmiuix/appcompat/app/DialogContract$PanelWidthSpec;

    invoke-direct {v4}, Lmiuix/appcompat/app/DialogContract$PanelWidthSpec;-><init>()V

    .line 2056
    iget-boolean v7, v0, Lmiuix/appcompat/app/AlertController;->mPreferLandscape:Z

    const/16 v22, 0x1

    if-eqz v7, :cond_7

    invoke-direct/range {p0 .. p0}, Lmiuix/appcompat/app/AlertController;->shouldUseLandscapePanel()Z

    move-result v7

    if-eqz v7, :cond_7

    move/from16 v15, v22

    goto :goto_2

    :cond_7
    move v15, v5

    :goto_2
    iget-boolean v7, v0, Lmiuix/appcompat/app/AlertController;->mIsCarWithScreen:Z

    iget-boolean v8, v0, Lmiuix/appcompat/app/AlertController;->mMarkLandscape:Z

    iget v9, v0, Lmiuix/appcompat/app/AlertController;->mScreenMinorSize:I

    iget-boolean v11, v0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    move-object v14, v4

    move/from16 v17, v7

    move/from16 v18, v8

    move/from16 v19, v12

    move/from16 v20, v9

    move/from16 v21, v11

    invoke-virtual/range {v14 .. v21}, Lmiuix/appcompat/app/DialogContract$PanelWidthSpec;->updateData(ZZZZIIZ)V

    .line 2060
    iget-object v7, v0, Lmiuix/appcompat/app/AlertController;->mDisplayStrategy:Lmiuix/appcompat/app/DialogDisplayStrategy;

    iget-object v8, v0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    invoke-virtual {v7, v4, v8}, Lmiuix/appcompat/app/DialogDisplayStrategy;->getPanelWidth(Lmiuix/appcompat/app/DialogContract$PanelWidthSpec;Lmiuix/appcompat/app/DialogContract$DimensConfig;)I

    move-result v4

    .line 2063
    new-instance v15, Lmiuix/appcompat/app/DialogContract$PanelPosSpec;

    invoke-direct {v15}, Lmiuix/appcompat/app/DialogContract$PanelPosSpec;-><init>()V

    .line 2064
    iget-object v7, v15, Lmiuix/appcompat/app/DialogContract$PanelPosSpec;->mBoundInsets:Landroid/graphics/Rect;

    iget v8, v3, Landroid/graphics/Rect;->left:I

    iget v9, v3, Landroid/graphics/Rect;->top:I

    iget v11, v3, Landroid/graphics/Rect;->right:I

    iget v14, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v8, v9, v11, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 2065
    iget-object v7, v0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v8

    iget-object v7, v0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v9

    iget-object v7, v0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v14, v7, Landroid/graphics/Point;->x:I

    iget-boolean v11, v0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    iget-boolean v7, v0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    move/from16 v16, v7

    move-object v7, v15

    move/from16 v17, v11

    move v11, v4

    move-object v5, v15

    move/from16 v15, v17

    invoke-virtual/range {v7 .. v16}, Lmiuix/appcompat/app/DialogContract$PanelPosSpec;->updateData(IIIIIIIZZ)V

    .line 2068
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 2070
    iget-object v8, v0, Lmiuix/appcompat/app/AlertController;->mDisplayStrategy:Lmiuix/appcompat/app/DialogDisplayStrategy;

    iget-object v9, v0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    invoke-virtual {v8, v5, v9, v7}, Lmiuix/appcompat/app/DialogDisplayStrategy;->updatePanelPosMargins(Lmiuix/appcompat/app/DialogContract$PanelPosSpec;Lmiuix/appcompat/app/DialogContract$DimensConfig;Landroid/graphics/Rect;)I

    move-result v5

    .line 2072
    iput v5, v6, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 2073
    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 2075
    iget-object v9, v0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lmiuix/core/util/MiuixUIUtils;->isInMultiWindowMode(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_8

    iget-boolean v9, v0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    if-nez v9, :cond_8

    iget-object v9, v0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 2076
    invoke-static {v9}, Lmiuix/os/DeviceHelper;->isWideScreen(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_8

    move/from16 v9, v22

    goto :goto_3

    :cond_8
    const/4 v9, 0x0

    .line 2077
    :goto_3
    iget-boolean v10, v0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    if-nez v10, :cond_9

    if-eqz v9, :cond_d

    :cond_9
    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    if-nez v2, :cond_d

    .line 2078
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v2

    invoke-direct {v0, v2}, Lmiuix/appcompat/app/AlertController;->getAssociatedActivityInsets(I)Landroid/graphics/Insets;

    move-result-object v2

    .line 2080
    iget-object v9, v0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    iget v9, v9, Lmiuix/appcompat/app/DialogContract$DimensConfig;->freePhoneCompactHeight:I

    if-eqz v2, :cond_a

    .line 2081
    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    :goto_4
    if-nez v2, :cond_b

    add-int/2addr v9, v8

    goto :goto_5

    :cond_b
    add-int v9, v8, v2

    .line 2086
    :goto_5
    invoke-direct/range {p0 .. p1}, Lmiuix/appcompat/app/AlertController;->getImeBottomByWindowInsets(Landroid/view/WindowInsets;)I

    move-result v1

    if-lez v1, :cond_c

    goto :goto_7

    :cond_c
    move v8, v9

    goto :goto_7

    .line 2088
    :cond_d
    iget-boolean v1, v0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-eqz v1, :cond_e

    iget-object v2, v0, Lmiuix/appcompat/app/AlertController;->mDisplayCutoutSafeInsets:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-lez v2, :cond_e

    goto :goto_6

    :cond_e
    if-eqz v1, :cond_f

    const/4 v2, 0x0

    goto :goto_6

    .line 2089
    :cond_f
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    :goto_6
    add-int/2addr v8, v2

    .line 2092
    :goto_7
    iget v1, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v2, v7, Landroid/graphics/Rect;->top:I

    if-eq v1, v2, :cond_10

    .line 2093
    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move/from16 v18, v22

    goto :goto_8

    :cond_10
    const/16 v18, 0x0

    .line 2096
    :goto_8
    iget v1, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eq v1, v8, :cond_11

    .line 2097
    iput v8, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v22

    .line 2100
    :cond_11
    iget v1, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v2, v7, Landroid/graphics/Rect;->left:I

    if-eq v1, v2, :cond_12

    .line 2101
    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    move/from16 v18, v22

    .line 2104
    :cond_12
    iget v1, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v2, v7, Landroid/graphics/Rect;->right:I

    if-eq v1, v2, :cond_13

    .line 2105
    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    move/from16 v18, v22

    :cond_13
    if-eq v4, v5, :cond_14

    move/from16 v18, v22

    .line 2112
    :cond_14
    invoke-direct {v0, v3}, Lmiuix/appcompat/app/AlertController;->getPanelMaxLimitHeight(Landroid/graphics/Rect;)I

    move-result v1

    .line 2113
    iget-object v2, v0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v2}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->getPanelMaxLimitHeight()I

    move-result v2

    if-eq v1, v2, :cond_15

    .line 2114
    iget-object v2, v0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v2, v1}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->setPanelMaxLimitHeight(I)V

    goto :goto_9

    :cond_15
    move/from16 v22, v18

    :goto_9
    if-eqz v22, :cond_16

    .line 2118
    iget-object v0, v0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_16
    :goto_a
    return-void
.end method

.method private updateRootViewSize(Landroid/content/res/Configuration;)V
    .locals 4

    .line 2476
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-eqz v0, :cond_0

    .line 2477
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v0

    goto :goto_0

    .line 2478
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lmiuix/core/util/EnvStateManager;->getWindowInfo(Landroid/content/Context;Landroid/content/res/Configuration;)Lmiuix/core/util/WindowBaseInfo;

    move-result-object v0

    .line 2479
    :goto_0
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    iget-object v2, v0, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 2480
    iget v2, v2, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 2481
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget-object v0, v0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 2482
    iget v0, v0, Landroid/graphics/Point;->y:I

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 2483
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v0, :cond_1

    .line 2484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRootViewSize mRootViewSizeDp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mRootViewSize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AlertController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 2487
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "configuration.density "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float p1, p1

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr p1, v1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private updateRootViewSize(Landroid/view/View;)V
    .locals 3

    .line 2493
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 2494
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, v0, Landroid/graphics/Point;->y:I

    .line 2495
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 2496
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    div-float/2addr v2, p1

    float-to-int v2, v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 2497
    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    div-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 2498
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v0, :cond_0

    .line 2499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRootViewSize by view mRootViewSizeDp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSizeDp:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mRootViewSize "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " configuration.density "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AlertController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateViewOnDensityChanged(F)V
    .locals 2

    .line 948
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    if-eqz v0, :cond_0

    .line 949
    invoke-static {v0, p1}, Lmiuix/view/DensityChangedHelper;->updateViewPadding(Landroid/view/View;F)V

    .line 951
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 952
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mTitleTextSize:F

    invoke-static {v0, v1}, Lmiuix/view/DensityChangedHelper;->updateTextSizeSpUnit(Landroid/widget/TextView;F)V

    .line 954
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 955
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mMessageTextSize:F

    invoke-static {v0, v1}, Lmiuix/view/DensityChangedHelper;->updateTextSizeSpUnit(Landroid/widget/TextView;F)V

    .line 957
    :cond_2
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCommentView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 958
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mCommentTextSize:F

    invoke-static {v0, v1}, Lmiuix/view/DensityChangedHelper;->updateTextSizeSpUnit(Landroid/widget/TextView;F)V

    .line 959
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCommentView:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lmiuix/view/DensityChangedHelper;->updateViewPadding(Landroid/view/View;F)V

    .line 961
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 962
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextSize:F

    invoke-static {v0, v1}, Lmiuix/view/DensityChangedHelper;->updateTextSizeDefaultUnit(Landroid/widget/TextView;F)V

    .line 965
    :cond_4
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$id;->buttonPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 967
    invoke-static {v0, p1}, Lmiuix/view/DensityChangedHelper;->updateViewMargin(Landroid/view/View;F)V

    .line 969
    :cond_5
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$id;->topPanel:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 971
    invoke-static {v0, p1}, Lmiuix/view/DensityChangedHelper;->updateViewPadding(Landroid/view/View;F)V

    .line 974
    :cond_6
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$id;->contentView:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 976
    invoke-static {v0, p1}, Lmiuix/view/DensityChangedHelper;->updateViewMargin(Landroid/view/View;F)V

    .line 978
    :cond_7
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x1020001

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-eqz v0, :cond_8

    .line 980
    invoke-static {v0, p1}, Lmiuix/view/DensityChangedHelper;->updateViewMargin(Landroid/view/View;F)V

    .line 982
    :cond_8
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const v0, 0x1020006

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_9

    .line 984
    invoke-static {p0, p1}, Lmiuix/view/DensityChangedHelper;->updateViewSize(Landroid/view/View;F)V

    .line 985
    invoke-static {p0, p1}, Lmiuix/view/DensityChangedHelper;->updateViewMargin(Landroid/view/View;F)V

    :cond_9
    return-void
.end method

.method private updateWindowCutoutMode()V
    .locals 2

    .line 2620
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    move-result v0

    .line 2621
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mScreenOrientation:I

    if-eq v1, v0, :cond_2

    .line 2622
    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mScreenOrientation:I

    .line 2623
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast v1, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2625
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    invoke-direct {p0, v0, v1}, Lmiuix/appcompat/app/AlertController;->getCutoutMode(II)I

    move-result v0

    .line 2626
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eq v1, v0, :cond_2

    .line 2627
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 2628
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2629
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2630
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 2635
    :cond_0
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 2640
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-eq v0, v1, :cond_2

    .line 2641
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 2642
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2643
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2644
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public dismiss(Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V
    .locals 3

    .line 2761
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->cleanWindowInsetsAnimation()V

    .line 2763
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 2766
    invoke-interface {p1}, Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;->end()V

    :cond_0
    return-void

    .line 2770
    :cond_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2771
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->checkAndClearFocus()V

    .line 2772
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDialogAnimHelper:Lmiuix/appcompat/widget/DialogAnimHelper;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    move-result v2

    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    invoke-virtual {v0, v1, v2, p0, p1}, Lmiuix/appcompat/widget/DialogAnimHelper;->executeDismissAnim(Landroid/view/View;ZLandroid/view/View;Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V

    goto :goto_0

    :cond_2
    const-string p1, "AlertController"

    const-string v0, "dialog is not attached to window when dismiss is invoked"

    .line 2774
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    :try_start_0
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    check-cast p0, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->realDismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Not catch the dialog will throw the illegalArgumentException (In Case cause the crash , we expect it should be caught)"

    .line 2779
    invoke-static {p1, v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0

    .line 784
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 p1, 0x52

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getButton(I)Landroid/widget/Button;
    .locals 2

    const/4 v0, -0x3

    if-eq p1, v0, :cond_4

    const/4 v0, -0x2

    if-eq p1, v0, :cond_3

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 762
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 763
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/appcompat/app/AlertController$ButtonInfo;

    .line 764
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$1300(Lmiuix/appcompat/app/AlertController$ButtonInfo;)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 765
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$600(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0

    .line 756
    :cond_2
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object p0

    .line 758
    :cond_3
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object p0

    .line 760
    :cond_4
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object p0
.end method

.method public getIconAttributeResId(I)I
    .locals 2

    .line 744
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 745
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 746
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 0

    .line 750
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method public getSingleItemMinHeight()I
    .locals 1

    .line 1109
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    sget v0, Lmiuix/appcompat/R$attr;->dialogListPreferredItemHeight:I

    invoke-static {p0, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDimensionPixelSize(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method hasPendingDismiss()Z
    .locals 0

    .line 2825
    iget-boolean p0, p0, Lmiuix/appcompat/app/AlertController;->mHasPendingDismiss:Z

    return p0
.end method

.method public installContent(Landroid/os/Bundle;)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 505
    :goto_0
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsFromRebuild:Z

    .line 506
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lmiuix/core/util/MiuixUIUtils;->isFreeformMode(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    .line 507
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getFlipCutout()V

    .line 508
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mAlertDialogLayout:I

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    .line 510
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$id;->dialog_root_view:I

    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/appcompat/internal/widget/DialogRootView;

    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 511
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    sget v1, Lmiuix/appcompat/R$id;->dialog_dim_bg:I

    invoke-virtual {p1, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    .line 512
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    new-instance v1, Lmiuix/appcompat/app/AlertController$4;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertController$4;-><init>(Lmiuix/appcompat/app/AlertController;)V

    invoke-virtual {p1, v1}, Lmiuix/appcompat/internal/widget/DialogRootView;->setConfigurationChangedCallback(Lmiuix/appcompat/internal/widget/DialogRootView$ConfigurationChangedCallback;)V

    .line 518
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    const/4 v1, 0x0

    .line 519
    invoke-direct {p0, v1}, Lmiuix/appcompat/app/AlertController;->updateRootViewSize(Landroid/content/res/Configuration;)V

    .line 520
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->setupWindow()V

    .line 521
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->setupView()V

    .line 523
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->configurationAfterInstalled:Landroid/content/res/Configuration;

    .line 525
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->buildJustNow:Z

    .line 526
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    new-instance v0, Lmiuix/appcompat/app/AlertController$5;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertController$5;-><init>(Lmiuix/appcompat/app/AlertController;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isAsyncInflatePanelEnabled()Z
    .locals 0

    .line 1922
    iget-boolean p0, p0, Lmiuix/appcompat/app/AlertController;->mAsyncInflatePanelEnabled:Z

    return p0
.end method

.method public isChecked()Z
    .locals 2

    .line 1649
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    const v1, 0x1020001

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1653
    :cond_0
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsChecked:Z

    return v0
.end method

.method isDialogImmersive()Z
    .locals 0

    .line 1736
    iget-boolean p0, p0, Lmiuix/appcompat/app/AlertController;->mIsEnableImmersive:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isShowingAnimation()Z
    .locals 7

    .line 2814
    iget-wide v0, p0, Lmiuix/appcompat/app/AlertController;->mShowUpTimeMillis:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 2815
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    iget-wide v5, p0, Lmiuix/appcompat/app/AlertController;->mNonImmersiveDialogShowAnimDuration:J

    cmp-long v0, v0, v5

    if-gez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    .line 2817
    :goto_0
    iget-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->mEnableEnterAnim:Z

    if-eqz v1, :cond_1

    iget-boolean p0, p0, Lmiuix/appcompat/app/AlertController;->mIsDialogAnimating:Z

    if-nez p0, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :cond_2
    :goto_1
    return v3
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 2745
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->reInitLandConfig()V

    .line 2747
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->setupWindowInsetsAnimation()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;ZZ)V
    .locals 6

    .line 2536
    sget-boolean v0, Lmiuix/os/Build;->IS_FLIP:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/os/DeviceHelper;->isTinyScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    .line 2537
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/MiuixUIUtils;->isFreeformMode(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    .line 2538
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->updateDimensConfig(Landroid/content/res/Resources;)V

    .line 2539
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->getFlipCutout()V

    .line 2540
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->updateDisplayInfo(Landroid/content/Context;)V

    .line 2541
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v2, v0

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    iget v4, p0, Lmiuix/appcompat/app/AlertController;->mCurrentDensityDpi:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_1

    .line 2543
    iput v0, p0, Lmiuix/appcompat/app/AlertController;->mCurrentDensityDpi:I

    .line 2545
    :cond_1
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    const-string v4, "AlertController"

    if-eqz v0, :cond_2

    .line 2546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChangednewDensityDpi "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lmiuix/appcompat/app/AlertController;->mCurrentDensityDpi:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " densityScale "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2550
    :cond_2
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->buildJustNow:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->isConfigurationChanged(Landroid/content/res/Configuration;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    if-nez p1, :cond_3

    if-nez p2, :cond_3

    return-void

    .line 2554
    :cond_3
    iput-boolean v1, p0, Lmiuix/appcompat/app/AlertController;->buildJustNow:Z

    const/4 p1, -0x1

    .line 2555
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mExtraImeMargin:I

    const/4 p1, 0x0

    .line 2556
    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateRootViewSize(Landroid/content/res/Configuration;)V

    .line 2557
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    if-eqz v0, :cond_4

    .line 2558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onConfigurationChanged mRootViewSize "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lmiuix/appcompat/app/AlertController;->mRootViewSize:Landroid/graphics/Point;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    :cond_4
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->checkThread()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2561
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "dialog is created in thread:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mCreateThread:Ljava/lang/Thread;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", but onConfigurationChanged is called from different thread:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2562
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", so this onConfigurationChanged call should be ignore"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2561
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2567
    :cond_5
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2568
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    invoke-virtual {v0, v4}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2571
    :cond_6
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz v3, :cond_7

    .line 2573
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_max_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->panelMaxWidth:I

    .line 2574
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimensConfig:Lmiuix/appcompat/app/DialogContract$DimensConfig;

    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lmiuix/appcompat/R$dimen;->miuix_appcompat_dialog_max_width_land:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Lmiuix/appcompat/app/DialogContract$DimensConfig;->panelMaxWidthLand:I

    .line 2576
    :cond_7
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->reInitLandConfig()V

    .line 2577
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2578
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->updateWindowCutoutMode()V

    goto :goto_1

    .line 2580
    :cond_8
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->setupNonImmersiveWindow()V

    .line 2582
    :goto_1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    iget-boolean v3, p0, Lmiuix/appcompat/app/AlertController;->mIsFlipTinyScreen:Z

    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->setIsInTinyScreen(Z)V

    .line 2583
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    iget-boolean v3, p0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    invoke-virtual {v0, v3}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->setIsDebugEnabled(Z)V

    .line 2584
    invoke-direct {p0, v1, p2, p3, v2}, Lmiuix/appcompat/app/AlertController;->setupView(ZZZF)V

    .line 2587
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {p2}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->notifyConfigurationChanged()V

    .line 2589
    :cond_9
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 2590
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    iget-object p3, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p2, p3}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->updateLayout(Landroid/view/View;)V

    .line 2591
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    iget-object p3, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2592
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p2

    if-eqz p2, :cond_a

    .line 2595
    invoke-direct {p0, p2}, Lmiuix/appcompat/app/AlertController;->updateDialogPanelByWindowInsets(Landroid/view/WindowInsets;)V

    .line 2597
    :cond_a
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    new-instance p3, Lmiuix/appcompat/app/AlertController$9;

    invoke-direct {p3, p0}, Lmiuix/appcompat/app/AlertController$9;-><init>(Lmiuix/appcompat/app/AlertController;)V

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 2609
    :cond_b
    iget-object p2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-direct {p0, p1}, Lmiuix/appcompat/app/AlertController;->getPanelMaxLimitHeight(Landroid/graphics/Rect;)I

    move-result p0

    invoke-virtual {p2, p0}, Lmiuix/appcompat/internal/widget/DialogParentPanel2;->setPanelMaxLimitHeight(I)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 4

    .line 2752
    invoke-static {}, Lmiuix/internal/util/AnimHelper;->isDialogDebugInAndroidUIThreadEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/view/View;

    .line 2753
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    aput-object v3, v0, v1

    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 2754
    invoke-direct {p0, v2}, Lmiuix/appcompat/app/AlertController;->translateDialogPanel(I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 7

    .line 2704
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2705
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2707
    invoke-direct {p0, v0}, Lmiuix/appcompat/app/AlertController;->updateDimBgBottomMargin(I)V

    .line 2709
    :cond_0
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->reInitLandConfig()V

    .line 2710
    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->updateWindowCutoutMode()V

    .line 2711
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsFromRebuild:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mEnableEnterAnim:Z

    if-eqz v0, :cond_1

    .line 2712
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDialogAnimHelper:Lmiuix/appcompat/widget/DialogAnimHelper;

    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    invoke-direct {p0}, Lmiuix/appcompat/app/AlertController;->isTablet()Z

    move-result v4

    iget-boolean v5, p0, Lmiuix/appcompat/app/AlertController;->mIsWindowLandScape:Z

    iget-object v6, p0, Lmiuix/appcompat/app/AlertController;->mShowAnimListenerWrapper:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    invoke-virtual/range {v1 .. v6}, Lmiuix/appcompat/widget/DialogAnimHelper;->executeShowAnim(Landroid/view/View;Landroid/view/View;ZZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V

    goto :goto_1

    .line 2714
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 2715
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lmiuix/internal/util/ViewUtils;->isNightMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lmiuix/theme/token/DimToken;->DIM_DARK:F

    goto :goto_0

    :cond_2
    sget v1, Lmiuix/theme/token/DimToken;->DIM_LIGHT:F

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2717
    :goto_1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertController$LayoutChangeListener;->updateLayout(Landroid/view/View;)V

    .line 2718
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_3
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 2723
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2724
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method public safeRemovePanelFromParent()V
    .locals 1

    .line 1912
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    if-nez v0, :cond_0

    return-void

    .line 1915
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1917
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method setAsyncInflatePanelEnable(Z)V
    .locals 0

    .line 576
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mAsyncInflatePanelEnabled:Z

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 0

    if-nez p4, :cond_0

    if-eqz p3, :cond_0

    .line 665
    iget-object p4, p0, Lmiuix/appcompat/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_0
    const/4 p3, -0x3

    if-eq p1, p3, :cond_3

    const/4 p3, -0x2

    if-eq p1, p3, :cond_2

    const/4 p3, -0x1

    if-ne p1, p3, :cond_1

    .line 671
    iput-object p2, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 672
    iput-object p4, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    goto :goto_0

    .line 686
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Button does not exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 676
    :cond_2
    iput-object p2, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 677
    iput-object p4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    goto :goto_0

    .line 681
    :cond_3
    iput-object p2, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 682
    iput-object p4, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    :goto_0
    return-void
.end method

.method setButtonForceVertical(Z)V
    .locals 0

    .line 572
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mButtonForceVertical:Z

    return-void
.end method

.method public setCancelable(Z)V
    .locals 0

    .line 788
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mCancelable:Z

    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0

    .line 792
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mCanceledOnTouchOutside:Z

    return-void
.end method

.method public setCheckBox(ZLjava/lang/CharSequence;)V
    .locals 0

    .line 1657
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsChecked:Z

    .line 1658
    iput-object p2, p0, Lmiuix/appcompat/app/AlertController;->mCheckBoxMessage:Ljava/lang/CharSequence;

    return-void
.end method

.method public setComment(Ljava/lang/CharSequence;)V
    .locals 0

    .line 603
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mComment:Ljava/lang/CharSequence;

    .line 604
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mCommentView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 605
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    return-void
.end method

.method setEnableEnterAnim(Z)V
    .locals 0

    .line 585
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mEnableEnterAnim:Z

    return-void
.end method

.method setEnableImmersive(Z)V
    .locals 0

    .line 1710
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsEnableImmersive:Z

    return-void
.end method

.method public setIcon(I)V
    .locals 1

    const/4 v0, 0x0

    .line 712
    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 713
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mIconId:I

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 722
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 723
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mIconId:I

    return-void
.end method

.method public setIconSize(II)V
    .locals 0

    .line 734
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mIconWidth:I

    .line 735
    iput p2, p0, Lmiuix/appcompat/app/AlertController;->mIconHeight:I

    return-void
.end method

.method setLiteVersion(I)V
    .locals 0

    .line 1732
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mLiteVersion:I

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 0

    .line 596
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 597
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 598
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method setNonImmersiveDialogHeight(I)V
    .locals 0

    .line 3316
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mNonImmersiveDialogHeight:I

    return-void
.end method

.method public setPanelSizeChangedListener(Lmiuix/appcompat/app/AlertDialog$OnPanelSizeChangedListener;)V
    .locals 0

    .line 2700
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mPanelSizeChangedListener:Lmiuix/appcompat/app/AlertDialog$OnPanelSizeChangedListener;

    return-void
.end method

.method setPendingDismiss(Z)V
    .locals 0

    .line 2821
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mHasPendingDismiss:Z

    return-void
.end method

.method setPreferLandscape(Z)V
    .locals 0

    .line 556
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mPreferLandscape:Z

    return-void
.end method

.method public setShowAnimListener(Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
    .locals 0

    .line 2692
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mShowAnimListener:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 544
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 545
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    .line 546
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method setUseForceFlipCutout(Z)V
    .locals 0

    .line 564
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mUseForceFlipCutout:Z

    return-void
.end method

.method public setUseSmallIcon(Z)V
    .locals 0

    .line 730
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mSmallIcon:Z

    return-void
.end method

.method public setView(I)V
    .locals 1

    const/4 v0, 0x0

    .line 617
    iput-object v0, p0, Lmiuix/appcompat/app/AlertController;->mView:Landroid/view/View;

    .line 618
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mViewLayoutResId:I

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 625
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 626
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mViewLayoutResId:I

    return-void
.end method
