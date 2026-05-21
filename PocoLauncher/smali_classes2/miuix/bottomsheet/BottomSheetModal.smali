.class public Lmiuix/bottomsheet/BottomSheetModal;
.super Ljava/lang/Object;
.source "BottomSheetModal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/bottomsheet/BottomSheetModal$DimAnimator;,
        Lmiuix/bottomsheet/BottomSheetModal$OnBackListener;,
        Lmiuix/bottomsheet/BottomSheetModal$OnTouchOutsideListener;,
        Lmiuix/bottomsheet/BottomSheetModal$OnShowStartListener;,
        Lmiuix/bottomsheet/BottomSheetModal$OnShowListener;,
        Lmiuix/bottomsheet/BottomSheetModal$OnDismissStartListener;,
        Lmiuix/bottomsheet/BottomSheetModal$OnDismissListener;
    }
.end annotation


# instance fields
.field private final mAccessibility:Landroid/util/SparseIntArray;

.field private mBehavior:Lmiuix/bottomsheet/BottomSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiuix/bottomsheet/BottomSheetBehavior<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomSheet:Lmiuix/bottomsheet/BottomSheetView;

.field private final mBottomSheetCallback:Lmiuix/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

.field private mBottomSheetDragHandleView:Lmiuix/bottomsheet/BottomSheetDragHandleView;

.field private mCanceledOnTouchOutside:Z

.field private mContainer:Landroid/widget/FrameLayout;

.field private final mContext:Landroid/content/Context;

.field private mCoordinator:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field private mDragHandleViewEnabled:Z

.field private mExecuteDismissed:Z

.field private mModalBackground:Landroid/view/View;

.field private mModalBackgroundEnabled:Z

.field private mOnBackListener:Lmiuix/bottomsheet/BottomSheetModal$OnBackListener;

.field private mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

.field private mOnDismissListener:Lmiuix/bottomsheet/BottomSheetModal$OnDismissListener;

.field private mOnDismissStartListener:Lmiuix/bottomsheet/BottomSheetModal$OnDismissStartListener;

.field private mOnShowListener:Lmiuix/bottomsheet/BottomSheetModal$OnShowListener;

.field private mOnShowStartListener:Lmiuix/bottomsheet/BottomSheetModal$OnShowStartListener;

.field private mOnTouchOutsideListener:Lmiuix/bottomsheet/BottomSheetModal$OnTouchOutsideListener;

.field private final mRootView:Landroid/view/ViewGroup;

.field private mShouldRequestLayout:Z

.field private mShowAndDismissWithAnimation:Z

.field private mShowRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$0aWfDWNSFBLcof2DsT0FpS2U9Ng(Lmiuix/bottomsheet/BottomSheetModal;)V
    .locals 0

    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetModal;->doShow()V

    return-void
.end method

.method public static synthetic $r8$lambda$KPnUXghRs2AEtQ0JpkWtcyag2uA(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-static {p0, p1}, Lmiuix/bottomsheet/BottomSheetModal;->lambda$wrapInBottomSheet$1(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$VlxnYAxV-S1co_CwxmzkI62sTis(Lmiuix/bottomsheet/BottomSheetModal;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/bottomsheet/BottomSheetModal;->lambda$wrapInBottomSheet$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mDragHandleViewEnabled:Z

    .line 44
    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mCanceledOnTouchOutside:Z

    const/4 v1, 0x0

    .line 45
    iput-boolean v1, p0, Lmiuix/bottomsheet/BottomSheetModal;->mShouldRequestLayout:Z

    .line 46
    iput-boolean v1, p0, Lmiuix/bottomsheet/BottomSheetModal;->mModalBackgroundEnabled:Z

    .line 47
    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mShowAndDismissWithAnimation:Z

    .line 48
    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mExecuteDismissed:Z

    .line 59
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mAccessibility:Landroid/util/SparseIntArray;

    .line 212
    new-instance v0, Lmiuix/bottomsheet/BottomSheetModal$4;

    invoke-direct {v0, p0}, Lmiuix/bottomsheet/BottomSheetModal$4;-><init>(Lmiuix/bottomsheet/BottomSheetModal;)V

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mBottomSheetCallback:Lmiuix/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    .line 66
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 67
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 70
    iput-boolean p2, p0, Lmiuix/bottomsheet/BottomSheetModal;->mModalBackgroundEnabled:Z

    .line 71
    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mRootView:Landroid/view/ViewGroup;

    .line 72
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lmiuix/bottomsheet/BottomSheetModal;->mContext:Landroid/content/Context;

    .line 73
    instance-of p2, p1, Landroidx/activity/ComponentActivity;

    if-eqz p2, :cond_0

    .line 74
    check-cast p1, Landroidx/activity/ComponentActivity;

    .line 75
    new-instance p2, Lmiuix/bottomsheet/BottomSheetModal$1;

    invoke-direct {p2, p0, v1}, Lmiuix/bottomsheet/BottomSheetModal$1;-><init>(Lmiuix/bottomsheet/BottomSheetModal;Z)V

    iput-object p2, p0, Lmiuix/bottomsheet/BottomSheetModal;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    .line 87
    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object p1

    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    invoke-virtual {p1, p0}, Landroidx/activity/OnBackPressedDispatcher;->addCallback(Landroidx/activity/OnBackPressedCallback;)V

    :cond_0
    return-void

    .line 68
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "DecorView from activity is not ViewGroup!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic access$000(Lmiuix/bottomsheet/BottomSheetModal;)Lmiuix/bottomsheet/BottomSheetModal$OnBackListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mOnBackListener:Lmiuix/bottomsheet/BottomSheetModal$OnBackListener;

    return-object p0
.end method

.method static synthetic access$100(Lmiuix/bottomsheet/BottomSheetModal;)Z
    .locals 0

    .line 31
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetModal;->isShowing()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lmiuix/bottomsheet/BottomSheetModal;)Landroidx/coordinatorlayout/widget/CoordinatorLayout;
    .locals 0

    .line 31
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mCoordinator:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    return-object p0
.end method

.method static synthetic access$1100(Lmiuix/bottomsheet/BottomSheetModal;)Lmiuix/bottomsheet/BottomSheetModal$OnShowStartListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mOnShowStartListener:Lmiuix/bottomsheet/BottomSheetModal$OnShowStartListener;

    return-object p0
.end method

.method static synthetic access$1200(Lmiuix/bottomsheet/BottomSheetModal;)Lmiuix/bottomsheet/BottomSheetModal$OnShowListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mOnShowListener:Lmiuix/bottomsheet/BottomSheetModal$OnShowListener;

    return-object p0
.end method

.method static synthetic access$1300(Lmiuix/bottomsheet/BottomSheetModal;)Ljava/lang/Runnable;
    .locals 0

    .line 31
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mShowRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1400(Lmiuix/bottomsheet/BottomSheetModal;)Landroidx/activity/OnBackPressedCallback;
    .locals 0

    .line 31
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    return-object p0
.end method

.method static synthetic access$1500(Lmiuix/bottomsheet/BottomSheetModal;)Lmiuix/bottomsheet/BottomSheetDragHandleView;
    .locals 0

    .line 31
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mBottomSheetDragHandleView:Lmiuix/bottomsheet/BottomSheetDragHandleView;

    return-object p0
.end method

.method static synthetic access$1600(Lmiuix/bottomsheet/BottomSheetModal;)Landroid/view/ViewGroup;
    .locals 0

    .line 31
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mRootView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$1700(Lmiuix/bottomsheet/BottomSheetModal;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetModal;->doRemove()V

    return-void
.end method

.method static synthetic access$200(Lmiuix/bottomsheet/BottomSheetModal;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mCanceledOnTouchOutside:Z

    return p0
.end method

.method static synthetic access$300(Lmiuix/bottomsheet/BottomSheetModal;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mExecuteDismissed:Z

    return p0
.end method

.method static synthetic access$302(Lmiuix/bottomsheet/BottomSheetModal;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetModal;->mExecuteDismissed:Z

    return p1
.end method

.method static synthetic access$400(Lmiuix/bottomsheet/BottomSheetModal;)Lmiuix/bottomsheet/BottomSheetModal$OnDismissStartListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mOnDismissStartListener:Lmiuix/bottomsheet/BottomSheetModal$OnDismissStartListener;

    return-object p0
.end method

.method static synthetic access$500(Lmiuix/bottomsheet/BottomSheetModal;)Z
    .locals 0

    .line 31
    iget-boolean p0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mModalBackgroundEnabled:Z

    return p0
.end method

.method static synthetic access$600(Lmiuix/bottomsheet/BottomSheetModal;)Landroid/view/View;
    .locals 0

    .line 31
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mModalBackground:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$700(Lmiuix/bottomsheet/BottomSheetModal;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetModal;->dismissImmediately()V

    return-void
.end method

.method static synthetic access$800(Lmiuix/bottomsheet/BottomSheetModal;)Lmiuix/bottomsheet/BottomSheetBehavior;
    .locals 0

    .line 31
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mBehavior:Lmiuix/bottomsheet/BottomSheetBehavior;

    return-object p0
.end method

.method static synthetic access$900(Lmiuix/bottomsheet/BottomSheetModal;)Lmiuix/bottomsheet/BottomSheetView;
    .locals 0

    .line 31
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mBottomSheet:Lmiuix/bottomsheet/BottomSheetView;

    return-object p0
.end method

.method private dismissImmediately()V
    .locals 2

    .line 354
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mBehavior:Lmiuix/bottomsheet/BottomSheetBehavior;

    new-instance v1, Lmiuix/bottomsheet/BottomSheetModal$8;

    invoke-direct {v1, p0}, Lmiuix/bottomsheet/BottomSheetModal$8;-><init>(Lmiuix/bottomsheet/BottomSheetModal;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, p0}, Lmiuix/bottomsheet/BottomSheetBehavior;->startExitAnimation(Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;Z)Z

    :cond_0
    return-void
.end method

.method private doRemove()V
    .locals 2

    .line 342
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lmiuix/bottomsheet/BottomSheetModal;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 343
    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mShouldRequestLayout:Z

    .line 344
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mOnDismissListener:Lmiuix/bottomsheet/BottomSheetModal$OnDismissListener;

    if-eqz v0, :cond_0

    .line 345
    invoke-interface {v0}, Lmiuix/bottomsheet/BottomSheetModal$OnDismissListener;->onDismiss()V

    .line 347
    :cond_0
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 348
    invoke-virtual {v0, v1}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 350
    :cond_1
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetModal;->recoverAccessibility()V

    return-void
.end method

.method private doShow()V
    .locals 2

    .line 286
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mBehavior:Lmiuix/bottomsheet/BottomSheetBehavior;

    new-instance v1, Lmiuix/bottomsheet/BottomSheetModal$6;

    invoke-direct {v1, p0}, Lmiuix/bottomsheet/BottomSheetModal$6;-><init>(Lmiuix/bottomsheet/BottomSheetModal;)V

    invoke-virtual {v0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->startEnterAnimation(Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mModalBackgroundEnabled:Z

    if-eqz v0, :cond_0

    .line 307
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mModalBackground:Landroid/view/View;

    invoke-static {p0}, Lmiuix/bottomsheet/BottomSheetModal$DimAnimator;->show(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private ensureContainerAndBehavior()Landroid/widget/FrameLayout;
    .locals 3

    .line 170
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mContainer:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 171
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mContext:Landroid/content/Context;

    sget v1, Lmiuix/bottomsheet/R$layout;->miuix_bottom_sheet_modal_view:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mContainer:Landroid/widget/FrameLayout;

    .line 172
    sget v1, Lmiuix/bottomsheet/R$id;->coordinator:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mCoordinator:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const/4 v1, 0x4

    .line 173
    invoke-virtual {v0, v1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mContainer:Landroid/widget/FrameLayout;

    sget v1, Lmiuix/bottomsheet/R$id;->bottom_sheet_view:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/bottomsheet/BottomSheetView;

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mBottomSheet:Lmiuix/bottomsheet/BottomSheetView;

    .line 175
    sget v1, Lmiuix/bottomsheet/R$id;->drag_handle_view:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/bottomsheet/BottomSheetDragHandleView;

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mBottomSheetDragHandleView:Lmiuix/bottomsheet/BottomSheetDragHandleView;

    .line 176
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mContainer:Landroid/widget/FrameLayout;

    sget v1, Lmiuix/bottomsheet/R$id;->modal_background:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mModalBackground:Landroid/view/View;

    .line 177
    iget-boolean v1, p0, Lmiuix/bottomsheet/BottomSheetModal;->mModalBackgroundEnabled:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 178
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 180
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    :goto_0
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mBottomSheet:Lmiuix/bottomsheet/BottomSheetView;

    invoke-static {v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lmiuix/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mBehavior:Lmiuix/bottomsheet/BottomSheetBehavior;

    const/4 v1, 0x1

    .line 183
    invoke-virtual {v0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setOriginalWindowInsetsEnabled(Z)V

    .line 184
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mBehavior:Lmiuix/bottomsheet/BottomSheetBehavior;

    iget-object v1, p0, Lmiuix/bottomsheet/BottomSheetModal;->mBottomSheetCallback:Lmiuix/bottomsheet/BottomSheetBehavior$BottomSheetCallback;

    invoke-virtual {v0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->addBottomSheetCallback(Lmiuix/bottomsheet/BottomSheetBehavior$BottomSheetCallback;)V

    .line 185
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mBehavior:Lmiuix/bottomsheet/BottomSheetBehavior;

    iget-boolean v1, p0, Lmiuix/bottomsheet/BottomSheetModal;->mCanceledOnTouchOutside:Z

    invoke-virtual {v0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setHideable(Z)V

    .line 186
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mBehavior:Lmiuix/bottomsheet/BottomSheetBehavior;

    new-instance v1, Lmiuix/bottomsheet/BottomSheetModal$3;

    invoke-direct {v1, p0}, Lmiuix/bottomsheet/BottomSheetModal$3;-><init>(Lmiuix/bottomsheet/BottomSheetModal;)V

    invoke-virtual {v0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->setReleaseAnimListener(Lmiuix/bottomsheet/BottomSheetBehavior$ReleaseAnimListener;)V

    .line 208
    :cond_1
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private hideSoftIME(Landroid/view/View;)V
    .locals 1

    .line 373
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mContext:Landroid/content/Context;

    const-class v0, Landroid/view/inputmethod/InputMethodManager;

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p0, :cond_0

    .line 375
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    return-void
.end method

.method private isAddedToRootView()Z
    .locals 1

    .line 449
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetModal;->ensureContainerAndBehavior()Landroid/widget/FrameLayout;

    .line 450
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mRootView:Landroid/view/ViewGroup;

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isShowing()Z
    .locals 0

    .line 445
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetModal;->isAddedToRootView()Z

    move-result p0

    return p0
.end method

.method private synthetic lambda$wrapInBottomSheet$0(Landroid/view/View;)V
    .locals 0

    .line 133
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetModal;->mOnTouchOutsideListener:Lmiuix/bottomsheet/BottomSheetModal$OnTouchOutsideListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lmiuix/bottomsheet/BottomSheetModal$OnTouchOutsideListener;->onTouchOutside()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 136
    :cond_0
    iget-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetModal;->mCanceledOnTouchOutside:Z

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetModal;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetModal;->mExecuteDismissed:Z

    if-nez p1, :cond_1

    .line 137
    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetModal;->dismiss()V

    :cond_1
    return-void
.end method

.method private static synthetic lambda$wrapInBottomSheet$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private recoverAccessibility()V
    .locals 6

    .line 394
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 397
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 399
    iget-object v2, p0, Lmiuix/bottomsheet/BottomSheetModal;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 400
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 401
    iget-object v4, p0, Lmiuix/bottomsheet/BottomSheetModal;->mAccessibility:Landroid/util/SparseIntArray;

    const/4 v5, -0x1

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v3

    if-ltz v3, :cond_1

    .line 403
    invoke-virtual {v2, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 406
    :cond_2
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mAccessibility:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method private removeAccessibility()V
    .locals 6

    .line 380
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mRootView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    .line 383
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 385
    iget-object v2, p0, Lmiuix/bottomsheet/BottomSheetModal;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 386
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 387
    invoke-virtual {v2}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v4

    .line 388
    iget-object v5, p0, Lmiuix/bottomsheet/BottomSheetModal;->mAccessibility:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseIntArray;->append(II)V

    const/4 v3, 0x4

    .line 389
    invoke-virtual {v2, v3}, Landroid/view/View;->setImportantForAccessibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 114
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetModal;->ensureContainerAndBehavior()Landroid/widget/FrameLayout;

    .line 115
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mContainer:Landroid/widget/FrameLayout;

    sget v1, Lmiuix/bottomsheet/R$id;->coordinator:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 116
    iget-object v1, p0, Lmiuix/bottomsheet/BottomSheetModal;->mContainer:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lmiuix/bottomsheet/BottomSheetModal;->mContext:Landroid/content/Context;

    sget v3, Lmiuix/bottomsheet/R$string;->miuix_popup_window_default_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat;->setAccessibilityPaneTitle(Landroid/view/View;Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 118
    iget-object p2, p0, Lmiuix/bottomsheet/BottomSheetModal;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 120
    :cond_0
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetModal;->mBottomSheet:Lmiuix/bottomsheet/BottomSheetView;

    iget-boolean v1, p0, Lmiuix/bottomsheet/BottomSheetModal;->mDragHandleViewEnabled:Z

    invoke-virtual {p1, v1}, Lmiuix/bottomsheet/BottomSheetView;->setDragHandleViewEnabled(Z)V

    .line 121
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetModal;->mBottomSheet:Lmiuix/bottomsheet/BottomSheetView;

    invoke-virtual {p1}, Lmiuix/bottomsheet/BottomSheetView;->removeAllContentViews()V

    if-nez p3, :cond_1

    .line 124
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetModal;->mBottomSheet:Lmiuix/bottomsheet/BottomSheetView;

    invoke-virtual {p1, p2}, Lmiuix/bottomsheet/BottomSheetView;->addContentChildView(Landroid/view/View;)V

    goto :goto_0

    .line 126
    :cond_1
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetModal;->mBottomSheet:Lmiuix/bottomsheet/BottomSheetView;

    invoke-virtual {p1, p2, p3}, Lmiuix/bottomsheet/BottomSheetView;->addContentChildView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    :goto_0
    sget p1, Lmiuix/bottomsheet/R$id;->touch_outside:I

    .line 130
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Lmiuix/bottomsheet/BottomSheetModal$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lmiuix/bottomsheet/BottomSheetModal$$ExternalSyntheticLambda0;-><init>(Lmiuix/bottomsheet/BottomSheetModal;)V

    .line 131
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetModal;->mBottomSheet:Lmiuix/bottomsheet/BottomSheetView;

    new-instance p2, Lmiuix/bottomsheet/BottomSheetModal$2;

    invoke-direct {p2, p0}, Lmiuix/bottomsheet/BottomSheetModal$2;-><init>(Lmiuix/bottomsheet/BottomSheetModal;)V

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 165
    iget-object p1, p0, Lmiuix/bottomsheet/BottomSheetModal;->mBottomSheet:Lmiuix/bottomsheet/BottomSheetView;

    sget-object p2, Lmiuix/bottomsheet/BottomSheetModal$$ExternalSyntheticLambda1;->INSTANCE:Lmiuix/bottomsheet/BottomSheetModal$$ExternalSyntheticLambda1;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 166
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mContainer:Landroid/widget/FrameLayout;

    return-object p0
.end method


# virtual methods
.method public dismiss()V
    .locals 2

    .line 312
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mContainer:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 313
    invoke-direct {p0, v0}, Lmiuix/bottomsheet/BottomSheetModal;->hideSoftIME(Landroid/view/View;)V

    .line 314
    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mShowAndDismissWithAnimation:Z

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mBehavior:Lmiuix/bottomsheet/BottomSheetBehavior;

    new-instance v1, Lmiuix/bottomsheet/BottomSheetModal$7;

    invoke-direct {v1, p0}, Lmiuix/bottomsheet/BottomSheetModal$7;-><init>(Lmiuix/bottomsheet/BottomSheetModal;)V

    invoke-virtual {v0, v1}, Lmiuix/bottomsheet/BottomSheetBehavior;->startExitAnimation(Lmiuix/bottomsheet/BottomSheetBehavior$AnimationListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 332
    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mModalBackgroundEnabled:Z

    if-eqz v0, :cond_1

    .line 333
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mModalBackground:Landroid/view/View;

    invoke-static {p0}, Lmiuix/bottomsheet/BottomSheetModal$DimAnimator;->dismiss(Landroid/view/View;)V

    goto :goto_0

    .line 336
    :cond_0
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetModal;->doRemove()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getBehavior()Lmiuix/bottomsheet/BottomSheetBehavior;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiuix/bottomsheet/BottomSheetBehavior<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mBehavior:Lmiuix/bottomsheet/BottomSheetBehavior;

    if-nez v0, :cond_0

    .line 438
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetModal;->ensureContainerAndBehavior()Landroid/widget/FrameLayout;

    .line 440
    :cond_0
    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mBehavior:Lmiuix/bottomsheet/BottomSheetBehavior;

    return-object p0
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 0

    .line 411
    iput-boolean p1, p0, Lmiuix/bottomsheet/BottomSheetModal;->mCanceledOnTouchOutside:Z

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, v0, p1, v1}, Lmiuix/bottomsheet/BottomSheetModal;->wrapInBottomSheet(ILandroid/view/View;Landroid/view/ViewGroup$LayoutParams;)Landroid/view/View;

    return-void
.end method

.method public setOnDismissListener(Lmiuix/bottomsheet/BottomSheetModal$OnDismissListener;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetModal;->mOnDismissListener:Lmiuix/bottomsheet/BottomSheetModal$OnDismissListener;

    return-void
.end method

.method public setOnOnShowListener(Lmiuix/bottomsheet/BottomSheetModal$OnShowListener;)V
    .locals 0

    .line 462
    iput-object p1, p0, Lmiuix/bottomsheet/BottomSheetModal;->mOnShowListener:Lmiuix/bottomsheet/BottomSheetModal$OnShowListener;

    return-void
.end method

.method public show()V
    .locals 3

    .line 230
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetModal;->isAddedToRootView()Z

    move-result v0

    if-nez v0, :cond_4

    .line 231
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetModal;->removeAccessibility()V

    .line 232
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mRootView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lmiuix/bottomsheet/BottomSheetModal;->mContainer:Landroid/widget/FrameLayout;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 233
    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mShouldRequestLayout:Z

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mBottomSheet:Lmiuix/bottomsheet/BottomSheetView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 235
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mBottomSheet:Lmiuix/bottomsheet/BottomSheetView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    .line 237
    :cond_0
    iget-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mShowAndDismissWithAnimation:Z

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mBottomSheet:Lmiuix/bottomsheet/BottomSheetView;

    new-instance v1, Lmiuix/bottomsheet/BottomSheetModal$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lmiuix/bottomsheet/BottomSheetModal$$ExternalSyntheticLambda2;-><init>(Lmiuix/bottomsheet/BottomSheetModal;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 240
    iput-boolean v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mExecuteDismissed:Z

    .line 241
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mOnBackPressedCallback:Landroidx/activity/OnBackPressedCallback;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 242
    invoke-virtual {v0, v1}, Landroidx/activity/OnBackPressedCallback;->setEnabled(Z)V

    .line 244
    :cond_2
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mShowRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_3

    .line 245
    new-instance v0, Lmiuix/bottomsheet/BottomSheetModal$5;

    invoke-direct {v0, p0}, Lmiuix/bottomsheet/BottomSheetModal$5;-><init>(Lmiuix/bottomsheet/BottomSheetModal;)V

    iput-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mShowRunnable:Ljava/lang/Runnable;

    .line 276
    :cond_3
    iget-object v0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mBottomSheet:Lmiuix/bottomsheet/BottomSheetView;

    iget-object p0, p0, Lmiuix/bottomsheet/BottomSheetModal;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 279
    :cond_4
    invoke-virtual {p0}, Lmiuix/bottomsheet/BottomSheetModal;->getBehavior()Lmiuix/bottomsheet/BottomSheetBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/bottomsheet/BottomSheetBehavior;->isAnimationInterruptible()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 280
    invoke-direct {p0}, Lmiuix/bottomsheet/BottomSheetModal;->doShow()V

    :cond_5
    :goto_0
    return-void
.end method
